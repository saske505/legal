<%@ Page Title="" Language="C#" MasterPageFile="~/m_LoginMaster.master" AutoEventWireup="true" CodeFile="p_UploadDocuments.aspx.cs" Inherits="p_UploadDocuments" %>

<asp:Content ID="Content7" runat="server" ContentPlaceHolderID="HeadSection">
    <script src="../Scripts/jquery.validate.min.js" type="text/javascript"></script>
    <link href="Content/Site.css" rel="stylesheet" />
    <script src="Content/dist/js/ripples.min.js"></script>
    <script src="Content/dist/js/ripples.js"></script>
    <script src="Content/dist/js/material.min.js"></script>
    <script src="Content/dist/js/material.js"></script>
    <link href="Content/dist/css/roboto.min.css" rel="stylesheet" />
    <link href="Content/dist/css/roboto.css" rel="stylesheet" />
    <link href="Content/dist/css/ripples.min.css" rel="stylesheet" />
    <link href="Content/dist/css/ripples.css" rel="stylesheet" />
    <link href="Content/dist/css/material.min.css" rel="stylesheet" />
    <link href="Content/dist/css/material.css" rel="stylesheet" />
    <link href="Content/dist/css/material-fullpalette.min.css" rel="stylesheet" />
    <link href="Content/dist/css/material-fullpalette.css" rel="stylesheet" />

</asp:Content>


<asp:Content ID="ControlContent" runat="server" ContentPlaceHolderID="ControlsSection">
          <style>
  i {
              padding: 24px;
              float: none;
              color: grey;
              margin-bottom: 5px;
              padding-top: 15px;
              position: relative;
              top: 4px;
}
                </style>


    <script>
        $(document).ready(function () {
            $('#EditDialog_OrdersGrid_Save').addClass('btn btn-default btn-raised');

        });


    </script>
   
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div style="margin: 5px auto auto 50px; width: 1000px;">
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <ej:Grid ID="OrdersGrid" runat="server" AllowPaging="True" OnServerEditRow="EditEvents_ServerEditRow" OnServerAddRow="EditEvents_ServerAddRow"
                                OnServerDeleteRow="EditEvents_ServerDeleteRow" AutoGenerateColumns="true">
                                <ClientSideEvents ActionComplete="complete" EndAdd="endAdd" EndDelete="endDelete" EndEdit="endEdit" />
                                <Columns>
                                    <ej:Column Field="OrderID" HeaderText="Order ID" IsPrimaryKey="true" TextAlign="Right" Width="90" Visible="false">
                                        <ValidationRule>
                                            <ej:KeyValue Key="required" Value="true" />
                                            <ej:KeyValue Key="number" Value="true" />
                                        </ValidationRule>
                                    </ej:Column>

                <ej:Column Field="D_AttorneyMatterRef" HeaderText="Attorney Matter Ref"  Width="150">

                </ej:Column>

                <ej:Column Field="D_PlaintiffInitial" HeaderText="Plaintiff Initial" Width="100" />
                <ej:Column Field="D_PlaintiffName" HeaderText="Plaintiff Name" Width="70" />
                <ej:Column Field="D_PlaintiffSurname" HeaderText="Plaintiff Surname" Width="70" />
                <ej:Column Field="D_DefendantInitial" HeaderText="Defendant Initial" Width="70" />
                <ej:Column Field="D_DefendantName" HeaderText="Defendant Name" Width="70" />
                <ej:Column Field="D_DefendantSurname" HeaderText="Defendant Surname" Width="70" />
                <ej:Column Field="D_ProcessType" HeaderText="Process Type" Width="70" />
                <ej:Column Field="D_ServiceType" HeaderText="Service Type" Width="70" />
                <ej:Column Field="D_CaseNumber" HeaderText="Case Number" Width="70" />
                <ej:Column Field="D_District" HeaderText="District" Width="70" />
                <ej:Column Field="D_Court" HeaderText="Court" Width="70" />
                <ej:Column Field="D_MessengerOfCourt" HeaderText="Messenger Of Court" Width="70" />

                                </Columns>
                                <EditSettings AllowEditing="True" AllowAdding="True" AllowDeleting="True" EditMode="Dialog"></EditSettings>
                                <ToolbarSettings ShowToolbar="True" ToolbarItems="add,edit"></ToolbarSettings>
                            </ej:Grid>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>


            <div class="control">
            <ej:Dialog ID="lognForm" Title="Login Form"  ClientSideOnClose="onDialogClose" EnableModal="true" EnableResize="false" runat="server" Visible="false">
                <DialogContent>
                    
                   
                </DialogContent>
            </ej:Dialog>

        </div>

        <div style="margin: 5px auto auto 50px;">
            <ej:Button ID="ButtonSave" Text="Save" runat="server" OnClick="ButtonSave_Click"></ej:Button>

           <asp:FileUpload ID="fileUpload1" Width="385px" runat="server" />

            <ej:Button ID="Button1" Text="Import" runat="server" OnClick="ButtonUpload_Click"  ClientSideOnCreate="onButtonCreate" ClientSideOnClick="btnclick"></ej:Button>
            <ej:Button ID="Button2" Text="Export Template" runat="server" OnClick="ButtoExportTEMP_Click" ></ej:Button>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="true"></asp:GridView>
        </div>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PropertySection" runat="server">
</asp:Content>

<asp:Content ID="ScriptContent" runat="server" ContentPlaceHolderID="ScriptSection">
    <script type="text/template" id="template">
        <b>Order Details</b>
        <table cellspacing="10">
            <tr>

                 <td style="text-align: left" hidden="hidden">
                    <input id="OrderID" name="OrderID" value="{{: OrderID}}" disabled="disabled" hidden="hidden"
                        class="e-field e-ejinputtext valid e-disable" style="text-align: right; width: 116px; height: 28px" />
                </td>

               <td style="text-align: left" hidden="hidden">
                    <input id="D_C_ID" name="D_C_ID" value="{{: D_C_ID}}" disabled="disabled" hidden="hidden"
                        class="e-field e-ejinputtext valid e-disable" style="text-align: right; width: 116px; height: 28px" />
                </td>
            </tr>

            <tr>
                <td style="text-align: right;">Attorney Matter Ref
                </td>
                <td style="text-align: left">
                    <input type="text" id="D_AttorneyMatterRef" name="D_AttorneyMatterRef" value="{{:D_AttorneyMatterRef}}" />
                </td>
                <td style="text-align: right;">Plaintiff Title
                </td>
                <td style="text-align: left">
                    <input id="D_PlaintiffTitle" name="D_PlaintiffTitle" value="{{: D_PlaintiffTitle}}"
                        style="width: 116px; height: 28px" />
                </td>
                <tr>

              <tr>
                <td style="text-align: right;">Plaintiff Initial
                </td>
                <td style="text-align: left">
                    <input type="text" id="D_PlaintiffInitial" name="D_PlaintiffInitial" value="{{:D_PlaintiffInitial}}" />
                </td>

                <tr>

            <tr>
                <td style="text-align: right;">Plaintiff Name
                </td>
                <td style="text-align: left">
                    <input type="text" id="D_PlaintiffName" name="D_PlaintiffName" value="{{:D_PlaintiffName}}" />
                </td>
                <td style="text-align: right;">Plaintiff Surname
                </td>
                <td style="text-align: left">
                    <input id="D_PlaintiffSurname" name="D_PlaintiffSurname" value="{{: D_PlaintiffSurname}}"
                        style="width: 116px; height: 28px" />
                </td>
                <tr>

              <tr>
                <td style="text-align: right;">Defendant Title
                </td>
                <td style="text-align: left">
                    <input type="text" id="D_DefendantTitle" name="D_DefendantTitle" value="{{:D_DefendantTitle}}" />
                </td>
                <td style="text-align: right;">Defendant Initial
                </td>
                <td style="text-align: left">
                    <input id="D_DefendantInitial" name="D_DefendantInitial" value="{{: D_DefendantInitial}}"
                        style="width: 116px; height: 28px" />
                </td>

                <tr>
                <td style="text-align: right;">Defendant Name
                </td>
                <td style="text-align: left">
                    <input type="text" id="D_DefendantName" name="D_DefendantName" value="{{:D_DefendantName}}" />
                </td>
                <td style="text-align: right;">Defendant Surname
                </td>
                <td style="text-align: left">
                    <input id="D_DefendantSurname" name="D_DefendantSurname" value="{{: D_DefendantSurname}}"
                        style="width: 116px; height: 28px" />
                </td>

              <tr>
                <td style="text-align: right;">Process Type
                </td>
                <td style="text-align: left">
                    <input type="text" id="D_ProcessType" name="D_ProcessType" value="{{:D_ProcessType}}" />
                </td>
                <td style="text-align: right;">Service Type
                </td>
                <td style="text-align: left">
                    <input id="D_ServiceType" name="D_ServiceType" value="{{: D_ServiceType}}"
                        style="width: 116px; height: 28px" />
                </td>
                                    
                 <tr>
                <td style="text-align: right;">Case Number
                </td>
                <td style="text-align: left">
                    <input type="text" id="D_CaseNumber" name="D_CaseNumber" value="{{:D_CaseNumber}}" />
                </td>
                <td style="text-align: right;">District
                </td>
                <td style="text-align: left">
                    <input id="D_District" name="D_District" value="{{: D_District}}"
                        style="width: 116px; height: 28px" />
                </td>

               <tr>
                <td style="text-align: right;">Court
                </td>
                <td style="text-align: left">
                    <input type="text" id="D_Court" name="D_Court" value="{{:D_Court}}" />
                </td>
                <td style="text-align: right;">Messenger Of Court
                </td>
                <td style="text-align: left">
                    <input id="D_MessengerOfCourt" name="D_MessengerOfCourt" value="{{: D_MessengerOfCourt}}"
                        style="width: 116px; height: 28px" />
                </td>



            <%--<tr>
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
                </td>--%>
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
            if ($("#editMode").val() == "Dialog Mode")
                gridObj.model.editSettings.editMode = "dialog";
            else
                gridObj.model.editSettings.editMode = "dialogtemplate";
        }
        function endAdd(args) {
            $("#OrdersGrid").ejWaitingPopup("show");
        }
        function endDelete(args) {
            $("#OrdersGrid").ejWaitingPopup("show");
        }
        function endEdit(args) {
            $("#OrdersGrid").ejWaitingPopup("show");
        }

        function complete(args) {
            if (args.requestType == "refresh" || args.requestType == "save") {
                $("#OrdersGrid").ejWaitingPopup("hide");
            }
            if ((args.requestType == "beginedit" || args.requestType == "add") && args.model.editSettings.editMode == "dialogtemplate") {
                $("#Freight").ejNumericTextbox({ value: parseFloat($("#Freight").val()), width: "116px", height: "28px", decimalPlaces: 2 });
                $("#Freight").css({ 'text-align': 'left' });
                $("#ShipCountry").ejDropDownList({ width: '116px' });
                if (args.requestType == "beginedit") {
                    $("#OrderID").attr("disabled", "disabled");
                }
            }
        }
    </script>
        <script>
            $(document).ready(function () {
                $('li i').addClass('moveAway');
            });
            </script>

   
</asp:Content>