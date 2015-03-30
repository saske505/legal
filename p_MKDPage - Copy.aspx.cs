using Syncfusion.JavaScript.Web;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Syncfusion.EJ.Export;
using System.Collections;
using Syncfusion.XlsIO;


public partial class p_MKDPage : System.Web.UI.Page
{
     List<Orders> order = new List<Orders>();

     protected void Page_Load(object sender, EventArgs e)
     {
         string queryString = Page.ClientQueryString.ToString();
         if (queryString.Contains("batchID"))
         {
             queryString = queryString.Replace("batchID", "");
             queryString = queryString.Replace("=", "");
             BindDataSource(Convert.ToInt32(queryString));
         }
         else
         {
             BindDataSource();

         }

       //  Session["DialogDataSource"] = order;
         OrdersGrid.EditSettings.EditMode = Syncfusion.JavaScript.EditMode.DialogTemplate;
         OrdersGrid.EditSettings.DialogEditorTemplateID = "#template";

         _dotcolors = LoadRecentDocumentsHTML();

     }
    
    private void BindDataSource()
    {
        //  OrdersGrid.EditSettings.EditMode = Syncfusion.JavaScript.EditMode.Dialog;
        int orderId = 10643;
        int empId = 0;
        for (int i = 1; i < 9; i++)
        {
            // order.Add(new Orders(orderId + 1, "911911", 5, 5, "ALFKI", "Alfreds Futterkiste "));
            order.Add(new Orders(orderId + 1, 911911, "post1", "post2", "post3 ", "city", "post co9de", "Summons"));

            orderId += 6;
            empId += 6;
        }
        this.OrdersGrid.DataSource = order;
        this.OrdersGrid.DataBind();
    }

    private void BindDataSource(int batID)
    {
        //  OrdersGrid.EditSettings.EditMode = Syncfusion.JavaScript.EditMode.Dialog;
        int orderId = 10643;
        int empId = 0;
        for (int i = 1; i < 9; i++)
        {
            // order.Add(new Orders(orderId + 1, "911911", 5, 5, "ALFKI", "Alfreds Futterkiste "));
            order.Add(new Orders(orderId + 1, 911911, "I am Batch " + batID, "I am Batch " + batID, "I am Batch " + batID, "city", "post co9de", "Summons"));

            orderId += 6;
            empId += 6;
        }
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
        //OrdersGrid.EditSettings.EditMode = Syncfusion.JavaScript.EditMode.Dialog;
        List<Orders> data = Session["DialogDataSource"] as List<Orders>;
        Dictionary<string, object> KeyVal = record as Dictionary<string, object>;
        if (eventType == "endEdit")
        {
            Orders value = new Orders();
            foreach (KeyValuePair<string, object> keyval in KeyVal)
            {

                if (keyval.Key == "PackageID")
                {
                    value = data.Where(d => d.PackageID == (int)keyval.Value).FirstOrDefault();
                    value.PackageID = Convert.ToInt32(keyval.Value);
                }
                else if (keyval.Key == "AccountNum")
                    value.AccountNum = Convert.ToInt32(keyval.Value);
                else if (keyval.Key == "PostA1")
                    value.PostA1 = Convert.ToString(keyval.Value);
                else if (keyval.Key == "PostA2")
                    value.PostA2 = Convert.ToString(keyval.Value);
                else if (keyval.Key == "PostA3")
                    value.PostA3 = Convert.ToString(keyval.Value);
                else if (keyval.Key == "City")
                    value.City = Convert.ToString(keyval.Value);
                else if (keyval.Key == "PostalCode")
                    value.PostalCode = Convert.ToString(keyval.Value);
                else if (keyval.Key == "DocType")
                    value.DocType = Convert.ToString(keyval.Value);
            }
        }

        else if (eventType == "endAdd")
        {
            Orders newRecord = new Orders();
            foreach (KeyValuePair<string, object> keyval in KeyVal)
            {
                if (keyval.Value != string.Empty)
                {
                    if (keyval.Key == "PackageID")
                        newRecord.PackageID = Convert.ToInt32(keyval.Value);
                    else if (keyval.Key == "AccountNum")
                        newRecord.AccountNum = Convert.ToInt32(keyval.Value);
                    else if (keyval.Key == "PostA1")
                        newRecord.PostA1 = Convert.ToString(keyval.Value);
                    else if (keyval.Key == "PostA2")
                        newRecord.PostA2 = Convert.ToString(keyval.Value);
                    else if (keyval.Key == "PostA3")
                        newRecord.PostA3 = Convert.ToString(keyval.Value);
                    else if (keyval.Key == "City")
                        newRecord.City = Convert.ToString(keyval.Value);
                    else if (keyval.Key == "PostalCode")
                        newRecord.PostalCode = Convert.ToString(keyval.Value);
                    else if (keyval.Key == "DocType")
                        newRecord.DocType = Convert.ToString(keyval.Value);

                }
            }
            data.Insert(0, newRecord);

        }

        else if (eventType == "endDelete")
        {
            foreach (KeyValuePair<string, object> keyval in KeyVal)
            {
                if (keyval.Key == "OrderID")
                {
                    Orders value = data.Where(d => d.PackageID == (int)keyval.Value).FirstOrDefault();
                    data.Remove(value);
                }
            }
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
                    
        public Orders(int packageID, int account, string PA1, string PA2, string PA3, string city, string postalCode, string docType)
        {
            this.PackageID = packageID;
            this.AccountNum = account;
            this.PostA1 = PA1;
            this.PostA2 = PA2;
            this.PostA3 = PA3;
            this.City = city;
            this.PostalCode = postalCode;
            this.DocType = docType;
        }
        public int PackageID { get; set; }
        public int AccountNum { get; set; }
        public string PostA1 { get; set; }
        public string PostA2 { get; set; }
        public string PostA3 { get; set; }
        public string City { get; set; }
        public string PostalCode { get; set; }
        public string DocType { get; set; }

    }

    protected void Button_Click(object Sender, ButtonEventArgs e)
    {
        string items = Request.Form["SaveName"];
        List<Orders> data = Session["DialogDataSource"] as List<Orders>;
        data.Clear();
        Session["DialogDataSource"] = data;
        this.OrdersGrid.DataSource = data;
        this.OrdersGrid.DataBind();
    }
    protected void ButtonSave_Click(object Sender, ButtonEventArgs e)
    {

    }

    private string _dotcolors;

    public string DotColorings
    {
        get
        {
            return _dotcolors;
        }
        set
        {
            _dotcolors = value;
        }
    }


    protected void OrdersGrid_ServerExcelExporting(object sender, Syncfusion.JavaScript.Web.GridEventArgs e)
    {
        try
        {
        ExcelExport exp = new ExcelExport();
        exp.Export(OrdersGrid.Model, (IEnumerable)OrdersGrid.DataSource, "BatchWhatever.xlsx", ExcelVersion.Excel2010 , true, true, "flat-lime");
        }
        catch (Exception exe)
        {
           
        }

    }

    private string LoadRecentDocumentsHTML()
    {
        return @"  
   <ul>                      
   </ul>
                    <li><asp:HyperLink runat=""server"" ID=""lnkHome"" NavigateUrl=""~/Default.aspx"">Recent Batches</asp:HyperLink></li>
                                    <ul>
                                     
                                        <li itemid=""1159873664"">
                                           <a id=""tesla""  href=""p_ClientPage.aspx?batchID=1"" >Batch1</a>
                                        </li>
                                        <li>
                                           <a id=""tesla""  href=""p_ClientPage.aspx?batchID=2"">Batch2</a>
                                        </li>
                                        <li>
                                           <a id=""tesla""  href=""p_ClientPage.aspx?batchID=3"">Batch3</a>
                                        </li>
                                        <li>
                                           <a id=""tesla""  href=""p_ClientPage.aspx?batchID=4"">Batch4</a>
                                        </li>


             </ul>
                <asp:SiteMapDataSource ID=""SiteMapDataSource1"" runat=""server"" ShowStartingNode=@""false@"" />";
    }
}