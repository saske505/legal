
using Syncfusion.Collections;
using Syncfusion.Core;
using Syncfusion.EJ.Export;
using Syncfusion.JavaScript.Web;
using Syncfusion.XlsIO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using db = DBConnections.DDF;

public partial class p_UploadDocuments : System.Web.UI.Page
{
    private List<Orders> order = new List<Orders>();

    private db.DocumentsDDF _doc = new db.DocumentsDDF();
    private List<db.DocumentsDDF.DocumentsDDFs> _docddf = new List<db.DocumentsDDF.DocumentsDDFs>();


    protected void Page_Load(object sender, EventArgs e)
    {
        //List<string > tst = new List<string>();
        //tst.Add("1");
        //tst.Add("1");
        //tst.Add("1");
        //tst.Add("1");
        //tst.Add("1");
        //this.OrdersGrid.Columns[1].DataSource = tst;


        //string batchID = Page.ClientQueryString.ToString();
        //if (batchID.Contains("batchID"))
        //{
        //    batchID = batchID.Replace("batchID", "");
        //    batchID = batchID.Replace("=", "");
        //   // BindDataSource(batchID);
        //    sqlDBSource.SelectCommand = "SELECT * FROM AKDDocuments where d_id = " + batchID;
        //}
        //else
        //{
        //   // sqlDBSource.SelectCommand = "SELECT * FROM AKDDocuments";
        //      BindDataSource();
        //}

        //OrdersGrid.DataSource = sqlDBSource;
        //OrdersGrid.DataBind();

        OrdersGrid.EditSettings.EditMode = Syncfusion.JavaScript.EditMode.DialogTemplate;
        OrdersGrid.EditSettings.DialogEditorTemplateID = "#template";
        BindDataSource("");
        Session["DialogDataSource"] = order;

        //  _dotcolors = LoadRecentDocumentsHTML();

    }

    private void BindDataSource()
    {
        int orderId = 10643;
        int empId = 0;
        for (int i = 1; i < 9; i++)
        {
            // order.Add(new Orders(orderId + 1, 911911, "post1", "post2", "post3 ", "city", "post co9de", "Summons"));

            orderId += 6;
            empId += 6;
        }
        this.OrdersGrid.DataSource = order;
        this.OrdersGrid.DataBind();
    }

    private void BindDataSource(string batID)
    {
        _docddf = _doc.GetDocumentList();

        foreach (db.DocumentsDDF.DocumentsDDFs item in _docddf)
        {
            order.Add(new Orders(item.D_ID, item.D_C_ID, item.D_AttorneyMatterRef, item.D_PlaintiffInitial, item.D_PlaintiffInitial, item.D_PlaintiffName, item.D_PlaintiffSurname, item.D_DefendantTitle, item.D_DefendantInitial, item.D_DefendantName, item.D_DefendantSurname, item.D_ProcessType, item.D_ServiceType, item.D_CaseNumber, item.D_District, item.D_Court, item.D_MessengerOfCourt));
            //  order.Add(new Orders(item.id, item.accountNumber, item.post1, "I am Batch " + batID, "I am Batch " + batID, "city", "post co9de", "Summons"));
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
        List<Orders> data = Session["DialogDataSource"] as List<Orders>;
        Dictionary<string, object> KeyVal = record as Dictionary<string, object>;
        db.DocumentsDDF.DocumentsDDFs tempedit = new db.DocumentsDDF.DocumentsDDFs();

        if (eventType == "endEdit")
        {
            Orders value = new Orders();

            foreach (KeyValuePair<string, object> keyval in KeyVal)
            {
                if (keyval.Key == "OrderID")
                {
                    // newRecord.OrderID = "-1";
                    tempedit.D_ID = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_C_ID")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_C_ID = Convert.ToString(1);
                }
                else if (keyval.Key == "D_AttorneyMatterRef")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_AttorneyMatterRef = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_PlaintiffTitle")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_PlaintiffTitle = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_PlaintiffInitial")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_PlaintiffInitial = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_PlaintiffName")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_PlaintiffName = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_PlaintiffSurname")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_PlaintiffSurname = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_DefendantTitle")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_DefendantTitle = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_DefendantInitial")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_DefendantInitial = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_DefendantSurname")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_DefendantSurname = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_DefendantName")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_DefendantName = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_ProcessType")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_ProcessType = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_ServiceType")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_ServiceType = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_CaseNumber")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_CaseNumber = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_District")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_District = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_Court")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_Court = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_MessengerOfCourt")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_MessengerOfCourt = Convert.ToString(keyval.Value);
                }



                //tempedit.modBy = "00000000-0000-0000-0000-000000000001";//db.StaticClass.s_LogedOnUser.ID;
                //tempedit.modOn = DateTime.Now;
                //tempedit.createdOn = DateTime.Now;
            }
        }

        else if (eventType == "endAdd")
        {
            Orders newRecord = new Orders();
            foreach (KeyValuePair<string, object> keyval in KeyVal)
            {
                tempedit.D_ID = "-1";
                newRecord.D_C_ID = "-1";
                //if (keyval.Value != string.Empty)
                //{
                if (keyval.Key == "OrderID")
                {
                    newRecord.D_C_ID = "-1";
                    tempedit.D_ID = "-1";
                }
                else if (keyval.Key == "D_C_ID")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_C_ID = Convert.ToString(1);
                }
                else if (keyval.Key == "D_AttorneyMatterRef")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_AttorneyMatterRef = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_PlaintiffTitle")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_PlaintiffTitle = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_PlaintiffInitial")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_PlaintiffInitial = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_PlaintiffName")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_PlaintiffName = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_PlaintiffSurname")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_PlaintiffSurname = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_DefendantTitle")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_DefendantTitle = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_DefendantInitial")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_DefendantInitial = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_DefendantName")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_DefendantName = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_DefendantSurname")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_DefendantSurname = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_ProcessType")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_ProcessType = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_ServiceType")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_ServiceType = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_CaseNumber")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_CaseNumber = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_District")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_District = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_Court")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_Court = Convert.ToString(keyval.Value);
                }
                else if (keyval.Key == "D_MessengerOfCourt")
                {
                    //  newRecord.CName = Convert.ToString(keyval.Value);
                    tempedit.D_MessengerOfCourt = Convert.ToString(keyval.Value);
                }
            }
            //}
            data.Insert(0, newRecord);
        }

        _doc.CreateAndUpdateDoc(tempedit);
    }

    [Serializable]
    public class Orders
    {
        public Orders()
        {
        }

        public Orders(string id, string cid, string matterref, string pTitle, string pIniti, string pname, string psurname, string dtitle, string dIniti, string dname, string dsurname, string processtype, string servicetype, string casenum, string district, string court, string messageofcourt)
        {
            this.OrderID = id;
            this.D_C_ID = cid;
            this.D_AttorneyMatterRef = matterref;
            this.D_PlaintiffTitle = pTitle;
            this.D_PlaintiffInitial = pIniti;
            this.D_PlaintiffName = pname;
            this.D_PlaintiffSurname = psurname;
            this.D_DefendantTitle = dtitle;
            this.D_DefendantInitial = dIniti;
            this.D_DefendantName = dname;
            this.D_DefendantSurname = dsurname;
            this.D_ProcessType = processtype;
            this.D_ServiceType = servicetype;
            this.D_CaseNumber = casenum;
            this.D_District = district;
            this.D_Court = court;
            this.D_MessengerOfCourt = messageofcourt;
        }

        public string OrderID { get; set; }
        public string D_C_ID { get; set; }
        public string D_AttorneyMatterRef { get; set; }
        public string D_PlaintiffTitle { get; set; }
        public string D_PlaintiffInitial { get; set; }
        public string D_PlaintiffName { get; set; }
        public string D_PlaintiffSurname { get; set; }
        public string D_DefendantTitle { get; set; }
        public string D_DefendantInitial { get; set; }
        public string D_DefendantName { get; set; }
        public string D_DefendantSurname { get; set; }
        public string D_ProcessType { get; set; }
        public string D_ServiceType { get; set; }
        public string D_CaseNumber { get; set; }
        public string D_District { get; set; }
        public string D_Court { get; set; }
        public string D_MessengerOfCourt { get; set; }


    }

    protected void Button_Click(object Sender, ButtonEventArgs e)
    {
        string items = Request.Form["SaveName"];
        List<Orders> data = Session["DialogDataSource"] as List<Orders>;
        //   data.Clear();
        Session["DialogDataSource"] = data;
        this.OrdersGrid.DataSource = data;
        this.OrdersGrid.DataBind();
    }
    protected void ButtonSave_Click(object Sender, ButtonEventArgs e)
    {
        //  db.BatchesDDF.BatchesDDFs bat = new db.BatchesDDF.BatchesDDFs();
        //  bat.description = Page.Request.Form["SaveName"];
        ////  bat.clientID = db.StaticClass.s_LogedOnClient.id;

        //  string batguid = _batch.InsertBatch(bat);

        //  List<Orders> OrderListRows = (List<Orders>)this.OrdersGrid.DataSource;

        //  foreach (Orders item in OrderListRows)
        //  {
        //      db.DocumentsDDF.DocumentsDDFs temp = new db.DocumentsDDF.DocumentsDDFs();
        //      //temp.clientID = db.StaticClass.s_LogedOnClient.id;
        //      temp.accountNumber = item.AccountNum.ToString();
        //      temp.batchID = batguid;
        //      temp.city = item.City;
        //      temp.post1 = item.PostA1;
        //      temp.post2 = item.PostA2;
        //      temp.post3 = item.PostA3;
        //      temp.postalCode = item.PostalCode;
        //      temp.docType = item.DocType;
        //      _doc.InserDoc(temp);
        //}
    }

    protected void ButtonUpload_Click(object Sender, ButtonEventArgs e)
    {
        
        //ImporExcelFile();

        if (fileUpload1.HasFile)
        {
            string fileName = Path.GetFileName(fileUpload1.PostedFile.FileName);
            string fileExtension = Path.GetExtension(fileUpload1.PostedFile.FileName);
            string fileLocation = Server.MapPath("~/App_Data/" + fileName);

            ImporExcelFile();
           // fileUpload1.SaveAs(fileLocation);
           // string hasheader = "yes";

          //  Import_To_Grid(fileName, fileExtension, hasheader);

           // string FilePath = Server.MapPath(FolderPath + fileName);
        //    Import_To_Grid(fileLocation, fileExtension, hasheader);
        }

        //string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
        //string Extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
        //string FolderPath = ConfigurationManager.AppSettings["FolderPath"];
        //string FilePath = Server.MapPath(FolderPath + FileName);
        //FileUpload1.SaveAs(FilePath);

        //   GetExcelSheets(FilePath, Extension, "Yes");
    }

    protected void ButtoExportTEMP_Click(object Sender, ButtonEventArgs e)
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
            exp.Export(OrdersGrid.Model, (IEnumerable)OrdersGrid.DataSource, "BatchWhatever.xlsx", ExcelVersion.Excel2010, true, true, "flat-lime");
        }
        catch (Exception exe)
        {

        }

    }

    private string LoadRecentDocumentsHTML()
    {
        // _recentBatches = _batch.GetBatchesByClientID("E9705E3B-1636-4982-BF56-267476DA16A1");//db.StaticClass.s_LogedOnClient.id);
        string tempBatches = "";

        //        foreach (db.BatchesDDF.BatchesDDFs item in _recentBatches)
        //        {
        //            tempBatches += @"
        //                                        <li itemid=""" + item.id + @""">
        //                                           <a id=""tesla""  href=""p_ClientPage.aspx?batchID=" + item.id + @""" >" + item.description + @"</a>
        //                                        </li>";
        //        }
        return @"  
   <ul>                      
   </ul>
                    <li><asp:HyperLink runat=""server"" ID=""lnkHome"" NavigateUrl=""~/Default.aspx"">Recent Batches</asp:HyperLink></li>
                                    <ul>
                                     
                                        " + tempBatches + @"
             </ul>
                <asp:SiteMapDataSource ID=""SiteMapDataSource1"" runat=""server"" ShowStartingNode=@""false@"" />";
    }



    #region ImpoirtFile
    //private void import2()
    //{
    //    //xlApp = new Excel.Application();
    //    //xlWorkBook = xlApp.Workbooks.Open("csharp.net-informations.xls", 0, true, 5, "", "", true, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "\t", false, false, 0, true, 1, 0);
    //    //xlWorkSheet = (Excel.Worksheet)xlWorkBook.Worksheets.get_Item(1);
    //    //Excel.Application xlApp;
    //    //Excel.Workbook xlWorkBook;
    //    //Excel.Worksheet xlWorkSheet;
    //    //Excel.Range range;

    //}


    //private void Import_To_Grid(string FilePath, string Extension, string isHDR)
    //{
    //    bool success = true;//set to true if save successful

    //    if (success)
    //        Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "testScript", " $(document).ready(function() { $('#dialog-modal').dialog();});", true);


    //    string conStr = "";
    //    switch (Extension)
    //    {
    //        case ".xls": //Excel 97-03
    //            conStr = ConfigurationManager.ConnectionStrings["Excel03ConString"]
    //                     .ConnectionString;
    //            break;
    //        case ".xlsx": //Excel 07
    //            conStr = ConfigurationManager.ConnectionStrings["Excel07ConString"]
    //                      .ConnectionString;
    //            break;
    //    }
    //    conStr = String.Format(conStr, FilePath, isHDR);
    //    OleDbConnection connExcel = new OleDbConnection(conStr);
    //    OleDbCommand cmdExcel = new OleDbCommand();
    //    OleDbDataAdapter oda = new OleDbDataAdapter();
    //    DataTable dt = new DataTable();
    //    cmdExcel.Connection = connExcel;

    //    //Get the name of First Sheet
    //    connExcel.Open();
    //    DataTable dtExcelSchema;
    //    dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
    //    string SheetName = dtExcelSchema.Rows[0]["TABLE_NAME"].ToString();
    //    connExcel.Close();

    //    //Read Data from First Sheet
    //    connExcel.Open();
    //    cmdExcel.CommandText = "SELECT * From [" + SheetName + "]";
    //    oda.SelectCommand = cmdExcel;
    //    oda.Fill(dt);
    //    connExcel.Close();





    //    //Bind Data to GridView
    //    //   GridView1.Caption = Path.GetFileName(FilePath);
    //    // GridView1.DataSource = dt;
    //    //   GridView1.DataBind();
    //}

    private void ImporExcelFile()
    {


        
        string connectionString = "";
        //if (FileUpload1.HasFile)
        //{
        string fileName = Path.GetFileName(fileUpload1.PostedFile.FileName);
        string fileExtension = Path.GetExtension(fileUpload1.PostedFile.FileName);
        string fileLocation = Server.MapPath("~/App_Data/" + fileName);
        //    FileUpload1.SaveAs(fileLocation);
        if (fileExtension == ".xls")
        {
            connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
              fileLocation + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
        }
        else if (fileExtension == ".xlsx")
        {
            connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" +
              fileLocation + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
        }
        OleDbConnection con = new OleDbConnection(connectionString);
        OleDbCommand cmd = new OleDbCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Connection = con;
        OleDbDataAdapter dAdapter = new OleDbDataAdapter(cmd);
        DataTable dtExcelRecords = new DataTable();
        con.Open();

        DataTable dtExcelSheetName = con.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
        string getExcelSheetName = dtExcelSheetName.Rows[0]["Table_Name"].ToString();
        
        cmd.CommandText = "SELECT * FROM [" + getExcelSheetName + "]";

        dAdapter.SelectCommand = cmd;

        dAdapter.Fill(dtExcelRecords);

       // string testssss = dtExcelRecords.Rows[1][1].ToString();
        //dtExcelRecords.Columns[1].ColumnName = "text";

        OrdersGrid.DataSource = dtExcelRecords;

        foreach (DataRow col in dtExcelRecords.Rows)
        {
            db.DocumentsDDF.DocumentsDDFs tempedit = new db.DocumentsDDF.DocumentsDDFs();

            tempedit.D_C_ID = "0";
                    tempedit.D_AttorneyMatterRef = col[0].ToString();
                    tempedit.D_PlaintiffTitle = col[1].ToString();
                    tempedit.D_PlaintiffInitial = col[2].ToString();
                    tempedit.D_PlaintiffName = col[3].ToString();
                    tempedit.D_PlaintiffSurname = col[4].ToString();
                    tempedit.D_DefendantTitle = col[5].ToString();
                    tempedit.D_DefendantInitial = col[6].ToString();
                    tempedit.D_DefendantName = col[7].ToString();
                    tempedit.D_DefendantSurname = col[8].ToString();
                    tempedit.D_ProcessType =col[9].ToString();
                    tempedit.D_ServiceType = col[10].ToString();
                    tempedit.D_CaseNumber = col[11].ToString();
                    tempedit.D_District = col[12].ToString();
                    tempedit.D_Court = col[13].ToString();
                    tempedit.D_MessengerOfCourt = col[14].ToString();
                    _doc.CreateAndUpdateDoc(tempedit);  
             }

        //OrdersGrid.DataSource = order;
    
        OrdersGrid.DataBind();
        con.Close();

        //foreach (db.DocumentsDDF.DocumentsDDFs item in _docddf)
        //{
        //    order.Add(new Orders(item.id, item.accountNumber, item.post1, "I am Batch " + 1, "I am Batch " + 1, "city", "post co9de", "Summons"));
        //}

        // this.OrdersGrid.DataSource = order;
        // this.OrdersGrid.DataBind();


        //  }
    }

    #endregion ImpoirtFile

}