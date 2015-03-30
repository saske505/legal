using Syncfusion.JavaScript.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using db = DBConnections.DDF;

public partial class ADKPage : System.Web.UI.Page
{


    private List<Orders> order = new List<Orders>();

    private db.UserDDF _users = new db.UserDDF();
    private List<db.UserDDF.UserCredentials> _data = new List<db.UserDDF.UserCredentials>();
    private List<db.ClientsDDF.ClientDDFs> _clients = new List<db.ClientsDDF.ClientDDFs>();
    private db.ClientsDDF _ddfclient = new db.ClientsDDF();


    protected void Page_Load(object sender, EventArgs e)
    {


        //   loadcom();
        //SqlData.DataBind();
        //loadcombo();
        BindDataSource();
        //  Session["DialogDataSource"] = order;

        _clientsCombo = BuildClientCombo();

    }

    private void loadcom()
    {
        SqlDataSource SqlDataSource1 = new SqlDataSource();
        SqlDataSource1.ID = "SqlDataSource1";
        this.Page.Controls.Add(SqlDataSource1);
        SqlDataSource1.ConnectionString = "SERVER=qjfwgzv40o.database.windows.net;Database=AKD_Document_Management;UID=datora;PWD=d@t0r@.001";
        SqlDataSource1.SelectCommand = "SELECT * FROM fn_GetClientList()";
        ddlSubject.DataValueField = "c_id";
        ddlSubject.DataTextField = "c_Details";
        ddlSubject.DataSource = "SqlDataSource1";

    }

    private void BindDataSource()
    {
        //if ((List<Orders>)Session["DialogDataSource"] == null)
        //{

        _data = _users.GetUsers();
        _clients = _ddfclient.GetALLClinetListSource();

        foreach (db.UserDDF.UserCredentials item in _data)
        {
           // string levels = intToLevel(item.);

           // order.Add(new Orders(item.id, item.name, item.pass, levels, item.clientlink));
        }

      //  this.SqlData = _ddfclient.GetClinetListSource();+




        //}
        //else
        //{
        // order = (List<Orders>)Session["DialogDataSource"];
        //}
         

        OrdersGrid.EditSettings.EditMode = Syncfusion.JavaScript.EditMode.DialogTemplate;
        OrdersGrid.EditSettings.DialogEditorTemplateID = "#template";

        this.OrdersGrid.DataSource = order;
        this.OrdersGrid.DataBind();


    }
    //private void loadcombo()
    //{
    //    if (!IsPostBack)
    //    {

    //        try
    //        {
    //            //SqlDataSource userssql = new SqlDataSource();
    //            userssql.ConnectionString = @"SERVER=qjfwgzv40o.database.windows.net;Database=AKD_Document_Management;UID=datora;PWD=d@t0r@.001";
    //            userssql.SelectCommand = "SELECT c_id, c_clientname FROM fn_GetUsers()";
    //            userssql.DataBind();

    //            //ddlusers.DataTextField = "c_clientname";
    //            //ddlusers.DataValueField = "c_id";
    //            //ddlusers.DataBind();

    //            // cmd.ExecuteReader();
    //            //ddlusers.DataTextField = "c_ClientName";
    //            //ddlusers.DataValueField = "c_id";
    //            //ddlusers.DataBind();
    //        }
    //        catch (Exception ex)
    //        {
    //            throw ex;
    //        }
    //        finally
    //        {
    //        }
    //    }
    //}
    private string intToLevel(int level)
    {
        switch (level)
        {
            case 1:
                return "AKD";
                break;
            case 2:
                return "Client Admin";
                break;
            case 3:
                return "Client";
                break;
        }

        return "";
    }

    private int StringToLevel(string level)
    {
        switch (level)
        {
            case "AKD":
                return 1;

            case "Client Admin":
                return 2;

            case "Client":
                return 3;

        }

        return 3;
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
        db.UserDDF.UserCredentials tempedit = new db.UserDDF.UserCredentials();

        if (eventType == "endEdit")
        {
            Orders value = new Orders();

            foreach (KeyValuePair<string, object> keyval in KeyVal)
            {
                if (keyval.Key == "OrderID")
                {
                    value = data.Where(d => d.OrderID == (string)keyval.Value).FirstOrDefault();
                    value.OrderID = Convert.ToString(keyval.Value);
                 //   tempedit.id = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "Uname")
                {
                    value.Uname = Convert.ToString(keyval.Value);
              //      tempedit.name = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "Upass")
                {
                    value.Upass = "*****";
                 //   tempedit.pass = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "ULevel")
                {
                    value.ULevel = Convert.ToString(keyval.Value);
                  //  tempedit.level = StringToLevel(Convert.ToString(keyval.Value));
                }
            }

            _users.CreateAndUpdateUser(tempedit);

        }

        else if (eventType == "endAdd")
        {
            Orders newRecord = new Orders();
            foreach (KeyValuePair<string, object> keyval in KeyVal)
            {
                if (keyval.Value != string.Empty)
                {
                    if (keyval.Key == "OrderID")
                    {
                        newRecord.OrderID = "-1";
                       // tempedit.id = "-1";
                    }
                    else if (keyval.Key == "Uname")
                    {
                        newRecord.Uname = Convert.ToString(keyval.Value);
                     //   tempedit.name = Convert.ToString(keyval.Value);
                    }
                    else if (keyval.Key == "Upass")
                    {
                        newRecord.Upass = "*****";
                       // tempedit.pass = Convert.ToString(keyval.Value);
                    }
                    else if (keyval.Key == "ULevel")
                    {
                        newRecord.ULevel = Convert.ToString(keyval.Value);
                     //   tempedit.level = StringToLevel(Convert.ToString(keyval.Value));
                    }
                    else
                    {
                        newRecord.OrderID = "-1";
                    }
                }
            }
            data.Insert(0, newRecord);
            _users.CreateAndUpdateUser(tempedit);

        }

        else if (eventType == "endDelete")
        {
            foreach (KeyValuePair<string, object> keyval in KeyVal)
            {
                if (keyval.Key == "OrderID")
                {
                    Orders value = data.Where(d => d.OrderID == (string)keyval.Value).FirstOrDefault();
                    _users.DeleteUser(value.UClient);
                }
            }
        }

        //if (tempedit.id == null)
        //{
        //    tempedit.id = "-1";
        //}

        Session["DialogDataSource"] = data;
        this.OrdersGrid.DataSource = data;
        this.OrdersGrid.DataBind();
    }

    [Serializable]
    public class Orders
    {
        public Orders()
        {

        }
        public Orders(string orderId, string name, string Password, string level, string Client)
        {
            this.OrderID = orderId;
            this.Uname = name;
            this.Upass = Password;
            this.ULevel = level;
            this.UClient = Client;
        }
        public string OrderID { get; set; }
        public string Uname { get; set; }
        public string Upass { get; set; }
        public string ULevel { get; set; }
        public string UClient { get; set; }
    }



    #region Client Combo Build
    private string _clientsCombo;

    public string ClientCombo
    {
        get
        {
            return _clientsCombo;
        }
        set
        {
            _clientsCombo = value;
        }
    }

    private string BuildClientCombo()
    {
        return @"<option value=""AKD"">AKD</option>
                <option value=""Client Admin"">Client Admin</option>
                <option value=""Client"">Client</option>";
    }
    #endregion Client Combo Build


}