using Syncfusion.JavaScript.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using db = DBConnections.DDF;

public partial class p_Users : System.Web.UI.Page
{
    private List<Orders> order = new List<Orders>();

    private db.UserDDF _users = new db.UserDDF();
    private List<db.UserDDF.UserCredentials> _data = new List<db.UserDDF.UserCredentials>();
    private List<db.ClientsDDF.ClientDDFs> _clients = new List<db.ClientsDDF.ClientDDFs>();
    private db.ClientsDDF _ddfclient = new db.ClientsDDF();


    protected void Page_Load(object sender, EventArgs e)
    {

        //if (!db.StaticClass.ValidateAKDAdmin())
        //{
        //    OrdersGrid.Visible = false;
        //    Page.Items.Clear();
        //}

        if (!Page.IsPostBack)
        {
            ClientCombo = BuildClientCombo();
            BindDataSource();

            OrdersGrid.EditSettings.EditMode = Syncfusion.JavaScript.EditMode.DialogTemplate;
            OrdersGrid.EditSettings.DialogEditorTemplateID = "#template";
            Session["DialogDataSource"] = order;
        }

     //   loadcom();
        //SqlData.DataBind();
        //loadcombo();

      //  Session["DialogDataSource"] = order;

      //  _clientsCombo = BuildClientCombo();

    }


    private void BindDataSource()
    {
        //if ((List<Orders>)Session["DialogDataSource"] == null)
        //{
           
        _data = _users.GetUsers();
       // _clients = _ddfclient.GetALLClinetListSource();

        foreach (db.UserDDF.UserCredentials item in _data)
        {
            order.Add(new Orders(item.ID, item.Name, item.Surname, item.UserName, item.Pass, intToLevel(item.Level), item.Clientlink));
        }
        this.OrdersGrid.DataSource = order;
        this.OrdersGrid.DataBind();

       // this.SqlData = _ddfclient.GetClinetListSource();
        
        //}
        //else
        //{
        // order = (List<Orders>)Session["DialogDataSource"];
        //}


        //OrdersGrid.EditSettings.EditMode = Syncfusion.JavaScript.EditMode.DialogTemplate;
        //OrdersGrid.EditSettings.DialogEditorTemplateID = "#template";

        //this.OrdersGrid.DataSource = order;
        


    }
   
    private string intToLevel(int level)
    {
        switch (level)
        {
            case 1:
                return "AKD";

            case 2:
                return "Client Admin";

            case 3:
                return "Client";

            case 4:
                return "Courier";

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

            case "Courier":
                return 4;
              
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
                    tempedit.ID = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "Name")
                {
                    value.Name = Convert.ToString(keyval.Value);
                    tempedit.Name = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "Surname")
                {
                    value.SurName = Convert.ToString(keyval.Value);
                    tempedit.Surname = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "Uname")
                {
                    value.Uname = Convert.ToString(keyval.Value);
                    tempedit.UserName = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "Upass")
                {
                    value.Upass = "*****";
                    tempedit.Pass = Convert.ToString(keyval.Value);
                }

                else if (keyval.Key == "UClient")
                {
                    value.UClient = Convert.ToString(keyval.Value);
                    tempedit.Clientlink = Convert.ToString(keyval.Value);
                }

                else if (keyval.Key == "ULevel")
                {
                    value.ULevel = Convert.ToString(keyval.Value);
                    tempedit.Level = StringToLevel(Convert.ToString(keyval.Value));
                }
                else if (keyval.Key == "Uclient")
                {
                    value.UClient = Convert.ToString(keyval.Value);
                    tempedit.Clientlink = Convert.ToString(keyval.Value);
                }
            }

            _users.CreateAndUpdateUser(tempedit);
        }

        else if (eventType == "endAdd")
        {
            Orders newRecord = new Orders();
            foreach (KeyValuePair<string, object> keyval in KeyVal)
            {
                tempedit.ID = "-1";

                    if (keyval.Key == "OrderID")
                    {
                        newRecord.OrderID = "-1";
                        tempedit.ID = "-1";
                    }
                    else if (keyval.Key == "Name")
                    {
                        newRecord.Name = Convert.ToString(keyval.Value);
                        tempedit.Name = Convert.ToString(keyval.Value);
                    }
                    else if (keyval.Key == "Surname")
                    {
                        newRecord.SurName = Convert.ToString(keyval.Value);
                        tempedit.Surname = Convert.ToString(keyval.Value);
                    }
                    else if (keyval.Key == "Uname")
                    {
                        newRecord.Uname = Convert.ToString(keyval.Value);
                        tempedit.UserName = Convert.ToString(keyval.Value);
                    }
                    else if (keyval.Key == "Upass")
                    {
                        newRecord.Upass = "*****";
                        tempedit.Pass = Convert.ToString(keyval.Value);
                    }

                    else if (keyval.Key == "Uclient")
                    {
                        newRecord.UClient = Convert.ToString(keyval.Value);
                        tempedit.Clientlink = Convert.ToString(keyval.Value);
                    }

                    else if (keyval.Key == "ULevel")
                    {
                        newRecord.ULevel = Convert.ToString(keyval.Value);
                        tempedit.Level = StringToLevel(Convert.ToString(keyval.Value));
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
                    
                    
                   // Orders value = data.Where(d => d.OrderID == (string)keyval.Value).FirstOrDefault();
                    if (keyval.Value.ToString() == "-1")
                    {
                         BindDataSource();
                    }
                    else
                    {
                        Orders value = data.Where(d => d.OrderID == (string)keyval.Value).FirstOrDefault();
                        data.Remove(value);
                        _users.DeleteUser(keyval.Value.ToString());
                    }
                }
            }
        }

        if (tempedit.ID == null)
        {
            tempedit.ID = "-1";
        }
       
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
        public Orders(string orderId, string name, string surname, string uname, string Password, string level, string Client)
        {
            this.OrderID = orderId;
            this.Name = name;
            this.SurName = surname;
            this.Uname = name;
            this.Upass = Password;
            this.ULevel = level;
            this.UClient = Client;

        }
        public string OrderID { get; set; }
        public string Uname { get; set; }
        public string Name { get; set; }
        public string SurName { get; set; }
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

    private string  BuildClientCombo()
    {
        _clients = _ddfclient.GetALLClinetListSource();

        string retval = ""; 

        foreach (db.ClientsDDF.ClientDDFs item in _clients)
        {
            retval +=  @"<option value="""+item.id+@""">"+item.name+@"</option>
                        ";
        }
        return  retval;
//        return @"<option value=""AKD"">AKD</option>
//                <option value=""Client Admin"">Client Admin</option>
//                <option value=""Client"">Client</option>";
    }
    #endregion Client Combo Build

    //public static List<ComboDataItem> GetItems()
    //{
    //    List<ComboDataItem> itemsList = new List<ComboDataItem>();
    //    itemsList.Add(new ComboDataItem(1, "item 1"));
    //    itemsList.Add(new ComboDataItem(2, "item 2"));
    //    itemsList.Add(new ComboDataItem(3, "item 3"));
    //    return itemsList;
    //}
    //public class ComboDataItem
    //{
    //    private string _text;
    //    private int _id;
    //    public string Text
    //    {
    //        get
    //        {
    //            return _text;
    //        }
    //        set
    //        {
    //            _text = value;
    //        }
    //    }
    //    public int ID
    //    {
    //        get
    //        {
    //            return _id;
    //        }
    //        set
    //        {
    //            _id = value;
    //        }
    //    }
    //    public ComboDataItem(int id, string text)
    //    {
    //        _id = id;
    //        _text = text;
    //    }
    //}

}
