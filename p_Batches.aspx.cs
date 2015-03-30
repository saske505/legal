using Syncfusion.JavaScript.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using db = DBConnections.DDF;

public partial class p_Batches : System.Web.UI.Page
{

    private List<Orders> order = new List<Orders>();

    private db.BatchesDDF _batches = new db.BatchesDDF();
    private List<db.BatchesDDF.BatchesDDFs> _data = new List<db.BatchesDDF.BatchesDDFs>();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!db.StaticClass.ValidateLogedinUser())
        {
            OrdersGrid.Visible = false;
            Page.Items.Clear();
        }


        if (!Page.IsPostBack)
        {
            
            Session["DialogDataSource"] = order;

            OrdersGrid.EditSettings.EditMode = Syncfusion.JavaScript.EditMode.DialogTemplate;
            OrdersGrid.EditSettings.DialogEditorTemplateID = "#template";
        }

        BindDataSource();

    }

    private void BindDataSource()
    {
        //if ((List<Orders>)Session["DialogDataSource"] == null)
        //{

        _data = _batches.GetBatchesByClientID();

        foreach (db.BatchesDDF.BatchesDDFs item in _data)
        {
            order.Add(new Orders(item.id, item.description, item.createdOn.ToShortDateString()));
        }
        //}
        //else
        //{
        //    order = (List<Orders>)Session["DialogDataSource"];
        //}



        this.OrdersGrid.DataSource = order;
        this.OrdersGrid.DataBind();
    }

    protected void EditEvents_ServerEditRow(object sender, GridEventArgs e)
    {
        EditAction(e.EventType, e.Arguments["data"]);
    }

    protected void EditEvents_ServerAddRow(object sender, GridEventArgs e)
    {
        EditAction(e.EventType, e.Arguments["data"]);
    }

    protected void EditEvents_ServerDeleteRow(object sender, GridEventArgs e)
    {
        EditAction(e.EventType, e.Arguments["data"]);
    }

    protected void EditAction(string eventType, object record)
    {
        List<Orders> data = Session["DialogDataSource"] as List<Orders>;
        Dictionary<string, object> KeyVal = record as Dictionary<string, object>;
        db.BatchesDDF.BatchesDDFs tempedit = new db.BatchesDDF.BatchesDDFs();

        if (eventType == "endEdit")
        {
            Orders value = new Orders();

            foreach (KeyValuePair<string, object> keyval in KeyVal)
            {
                if (keyval.Key == "OrderID")
                {
                    // newRecord.OrderID = "-1";
                    tempedit.id = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "Descr")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.description = Convert.ToString(keyval.Value);
                }
                tempedit.modBy = "00000000-0000-0000-0000-000000000001";//db.StaticClass.s_LogedOnUser.ID;
                tempedit.modOn = DateTime.Now;
                tempedit.createdOn = DateTime.Now;
            }
        }

        else if (eventType == "endAdd")
        {
            Orders newRecord = new Orders();
            foreach (KeyValuePair<string, object> keyval in KeyVal)
            {
                tempedit.id = "-1";
                newRecord.OrderID = "-1";
                //if (keyval.Value != string.Empty)
                //{
                if (keyval.Key == "OrderID")
                {
                    newRecord.OrderID = "-1";
                    tempedit.id = "-1";
                }
                else if (keyval.Key == "Descr")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.description = Convert.ToString(keyval.Value);
                }
                tempedit.clientID = "00000000-0000-0000-0000-000000000001";//db.StaticClass.s_LogedOnUser.Clientlink;
                tempedit.createdBy = "00000000-0000-0000-0000-000000000001";//db.StaticClass.s_LogedOnUser.ID;
                tempedit.modBy = "00000000-0000-0000-0000-000000000001";//db.StaticClass.s_LogedOnUser.ID;
                tempedit.modOn = DateTime.Now;
                tempedit.createdOn = DateTime.Now;
            }
            //}
            data.Insert(0, newRecord);
        }

        _batches.CreateAndUpdateBatch(tempedit);

        // Session["DialogDataSource"] = data;
        // this.OrdersGrid.DataSource = data;
        // this.OrdersGrid.DataBind();
    }

    [Serializable]
    public class Orders
    {
        public Orders()
        {

        }
        public Orders(string orderId, string desc, string createdon)
        {
            this.OrderID = orderId;
            this.Descr = desc;
            this.CreatedON = createdon;
        }

        public string OrderID { get; set; }
        public string Descr { get; set; }
        public string CreatedON{ get; set; }
    }
    protected void OrdersGrid_ServerRecordClick(object sender, GridEventArgs e)
    {
        butontest.Visible = true;
    }
}
