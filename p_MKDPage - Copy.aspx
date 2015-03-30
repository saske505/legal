<%@ Page Title="" Language="C#" MasterPageFile="~/m_AKDMaster.master" AutoEventWireup="true" CodeFile="p_MKDPage - Copy.aspx.cs" Inherits="p_MKDPage" %>


<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadSection">


    <script src="../Scripts/jquery.validate.min.js" type="text/javascript"></script>
    <link href="MenuStylescss.css" rel="stylesheet" type="text/css" />
    <link href="Content/Site.css" rel="stylesheet" type="text/css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" runat="Server">

    <script type="text/javascript" class="jsScript">
        $(function () {
            // declaration
            $("#ajaxAccordion").ejAccordion();
        });
    </script>


    <script type="text/template" id="template">
        <b>Order Details</b>
        <table cellspacing="10">
            <tr>
                <td style="text-align: right;">Package ID
                </td>
                <td style="text-align: left">
                    <input id="PackageID" name="PackageID" value="{{: PackageID}}" disabled="disabled"
                        class="e-field e-ejinputtext valid e-disable" style="text-align: right; width: 116px; height: 28px" />
                </td>
                <td style="text-align: right;">Account Number
                </td>
                <td style="text-align: left">
                    <input id="AccountNum" name="AccountNum" value="{{: AccountNum}}"
                        style="width: 116px; height: 28p x" />
                </td>
            </tr>

            <tr>
                <td style="text-align: right;">Postal Address 1
                </td>
                <td style="text-align: left">
                    <input type="text" id="PostA1" name="PostA1" value="{{:PostA1}}" />
                </td>
                <td style="text-align: right;">Postal Address 2
                </td>
                <td style="text-align: left">
                    <input id="PostA2" name="PostA2" value="{{: PostA2}}"
                        style="width: 116px; height: 28px" />
                </td>
                <tr>

            <tr>
                <td style="text-align: right;">Postal Address 3
                </td>
                <td style="text-align: left">
                    <input type="text" id="PostA3" name="PostA3" value="{{:PostA3}}" />
                </td>
                <td style="text-align: right;">City
                </td>
                <td style="text-align: left">
                    <input id="City" name="PostA2" value="{{: City}}"
                        style="width: 116px; height: 28px" />
                </td>
                <tr>

            <tr>
                <td style="text-align: right;">Freight
                </td>
                <td style="text-align: left">
                    <input type="text" id="PostalCode" name="PostalCode" value="{{:PostalCode}}" />
                </td>
                <td style="text-align: right;">Document Type
                </td>
                <td style="text-align: left">
                    <select id="DocType" name="DocType">
                        <option value="1">Summons</option>
                        <option value="2">Sec 129</option>
                        <option value="3">Judgement</option>
                        <option value="4">Warrand of execution</option>
                    </select>
                </td>
            </tr>

            <tr>
        </table>
    </script>
    <script type="text/javascript">
        $(function () {
            $("#sampleProperties").ejPropertiesPanel();
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
        });
        function EndRequestHandler(e) {
            var gridObj = $("#OrdersGrid").data("ejGrid");
            gridObj.model.editSettings.editMode = "dialogtemplate";
        }
        function endAdd(args) {
            $("#OrdersGrid").ejWaitingPopup("show");
        }
        function endDelete(args) {
            $("#OrdersGrid").ejWaitingPopup("show");
        }
        function endEdit(args) {
            var gridObj = $("#OrdersGrid").data("ejGrid");
            gridObj.model.editSettings.editMode = "dialogtemplate";
            $("#OrdersGrid").ejWaitingPopup("show");
        }
        function selectChange(args) {
            var gridObj = $("#OrdersGrid").data("ejGrid");
            if (gridObj != undefined) {
                gridObj.clearSelection();
                if (gridObj.model.isEdit)
                    $("#OrdersGrid").ejGrid("cancelEdit");
                else
                    $("#OrdersGrid").ejGrid("option", { "editSettings": { editMode: "dialogtemplate", dialogEditorTemplateID: "#template" } });

            }
        }
        function complete(args) {
            if (args.requestType == "refresh" || args.requestType == "save") {
                $("#OrdersGrid").ejWaitingPopup("hide");
            }
            if ((args.requestType == "beginedit" || args.requestType == "add")) {
                $("#Freight").ejNumericTextbox({ value: parseFloat($("#Freight").val()), width: "116px", height: "28px", decimalPlaces: 2 });
                $("#Freight").css({ 'text-align': 'left' });
                $("#ShipCountry").ejDropDownList({ width: '116px' });
                if (args.requestType == "beginedit") {
                    $("#PackageID").attr("disabled", "disabled");
                    $("#DocType").ejDropDownList("setSelectedValue", args.row.children().eq(4).text());
                }
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="StyleSection" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ControlsSection" runat="Server">
    <%--   <ej:Accordion ID="APIAccordion" runat="server">
        <Items>
            <ej:AccordionItem Text="Grid Web" >
                <ContentSection >
                     Essential Grid is a powerful data grid that can be bound to various data sources including ADO.NET entities; LINQ to SQL; data collections like List, BindingList, and ADO.NET’s DataTable and DataView; and any IEnumerable or IQueryable collections. 
                                It comes with built-in AJAX support and can work with ASP.NET AJAX's UpdatePanel. Essential Grid provides built-in support for hierarchical viewing, grouping, multicolumn sorting, filtering, summaries, and various data editors.
                </ContentSection>
            </ej:AccordionItem>
        </Items>
       </ej:Accordion> --%>
    <%--Accordion--%>

    <%--    <div id="ajaxAccordion" style="width: 650px">
                    <h3>
                        <a href="../Content/samplecontent/mvccontent.html">Model–view–controller (MVC)</a></h3>
                    <div>
                    </div>
                    <h3>
                        <a href="../Content/samplecontent/wpfcontent.html"></a>WPF</h3>
                    <div>
                    </div>
                    <h3>
                        <a href="#">WCF</a></h3>
                    <div>
                        <p>
                            WCF is a tool often used to implement and deploy a service-oriented architecture (SOA). 
                                    It is designed using service-oriented architecture principles to support distributed computing where services have remote consumers. 
                                    Clients can consume multiple services; services can be consumed by multiple clients. Services are loosely coupled to each other. 
                                    Services typically have a WSDL interface (Web Services Description Language) that any WCF client can use to consume the service, regardless of which platform the service is hosted on. 
                                    WCF implements many advanced Web services (WS) standards such as WS-Addressing, WS-ReliableMessaging and WS-Security. 
                                    With the release of .NET Framework 4.0, WCF also provides RSS Syndication Services, WS-Discovery, routing and better support for REST services.
                        </p>
                    </div>
                </div>
    --%>



    <%--  RecentMenue --%>
    <div id="navigation">
        <%=DotColorings%>
    </div>

    <%--Gird--%>
    <div style="margin: -20px auto auto 50px;">
        <ej:Button ID="Button" Text="New Document" runat="server" OnClick="Button_Click"></ej:Button>
    </div>
    <div style="margin: -25px auto auto 200px;">
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        <input itemid="tesla" id="SaveName" name="SaveName" value="" />
    </div>

    <div style="margin: 5px auto auto 50px; width: 2000px;">


        <ej:Grid ID="OrdersGrid" AllowSorting="True" runat="server" AllowPaging="True" OnServerEditRow="EditEvents_ServerEditRow"
            OnServerAddRow="EditEvents_ServerAddRow" OnServerDeleteRow="EditEvents_ServerDeleteRow"
            Width="10" OnServerExcelExporting="OrdersGrid_ServerExcelExporting">
            <ToolbarSettings ShowToolbar="True" ToolbarItems="add,edit,excelExport,delete"></ToolbarSettings>

            <ClientSideEvents ActionComplete="complete" EndAdd="endAdd" EndDelete="endDelete" EndEdit="endEdit" />
            <Columns>

                <ej:Column Field="AccountNum" HeaderText="Account Number 1" Width="100" Visible="false" />

                <ej:Column Field="PackageID" HeaderText="PackageID" Visible="false" IsPrimaryKey="true" TextAlign="Right" Width="90">
                    <ValidationRule>
                        <ej:KeyValue Key="required" Value="true" />
                        <ej:KeyValue Key="number" Value="true" />
                    </ValidationRule>
                </ej:Column>

                <ej:Column Field="AccountNum" HeaderText="Account Number" IsPrimaryKey="true" TextAlign="Right" Width="50">
                    <ValidationRule>
                        <ej:KeyValue Key="required" Value="true" />
                        <ej:KeyValue Key="number" Value="true" />
                    </ValidationRule>
                </ej:Column>

                <ej:Column Field="PostA1" HeaderText="Postal Address 1" Width="100" />
                <ej:Column Field="PostA2" HeaderText="Postal Address 2" Width="100" />
                <ej:Column Field="PostA3" HeaderText="Postal Address 3" Width="100" />
                <ej:Column Field="City" HeaderText="City" Width="50" />
                <ej:Column Field="PostalCode" HeaderText="Postal Code" Width="50" />
                <ej:Column Field="DocType" HeaderText="Document Type" Width="70" EditType="Dropdown">
                </ej:Column>
            </Columns>
            <EditSettings AllowEditing="True" AllowAdding="True" AllowDeleting="True" EditMode="dialogtemplate"></EditSettings>

            <%--    <ToolbarSettings ShowToolbar="True" ToolbarItems="search"></ToolbarSettings>--%>
        </ej:Grid>


    </div>

    <div style="margin: 5px auto auto 50px;">
        <ej:Button ID="ButtonSave" Text="Save" runat="server" OnClick="ButtonSave_Click"></ej:Button>
    </div>


</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PropertySection" runat="Server">


    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="false" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="EventSection" runat="Server">
</asp:Content>






