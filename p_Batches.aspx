<%@ Page Title="" Language="C#" MasterPageFile="~/m_LoginMaster.master" AutoEventWireup="true" CodeFile="p_Batches.aspx.cs" Inherits="p_Batches" %>


<%@ Register Assembly="Syncfusion.Shared.Web, Version=12.4451.0.24, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" Namespace="Syncfusion.Web.UI.WebControls.Shared" TagPrefix="syncfusion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadSection" Runat="Server">

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
                                OnServerDeleteRow="EditEvents_ServerDeleteRow" AutoGenerateColumns="true" OnServerRecordClick="OrdersGrid_ServerRecordClick" >
                                <ClientSideEvents ActionComplete="complete" EndAdd="endAdd" EndDelete="endDelete" EndEdit="endEdit" />
                                <Columns>
                                    <ej:Column Field="OrderID" HeaderText="Order ID" IsPrimaryKey="true" TextAlign="Right" Width="90" Visible="false">
                                        <ValidationRule>
                                            <ej:KeyValue Key="required" Value="true" />
                                            <ej:KeyValue Key="number" Value="true" />
                                        </ValidationRule>
                                    </ej:Column>

                                      <ej:Column Field="Descr" HeaderText="Description" Width="90">
                                    </ej:Column>

                                    <ej:Column Field="CreatedON" HeaderText="CreatedON" Width="70" Visible="false" />
                                    
                                </Columns>
                                <EditSettings AllowEditing="True" AllowAdding="True" AllowDeleting="True" EditMode="Dialog"></EditSettings>
                                <ToolbarSettings ShowToolbar="True" ToolbarItems="add,edit,update"></ToolbarSettings>
                            </ej:Grid>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>

    <ej:Button id="butontest" runat="server" Text="View Documents" Visible="false"></ej:Button>

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
                <td style="text-align: left;">Description
                </td>
                <td style="text-align: left">
                    <input id="Descr" name="Descr" value="{{: Descr}}" 
                        style="width: 116px; height: 28px" />
                </td>
            </tr>
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


            <script>
                $(document).ready(function () {
                    $('li#OrdersGrid_update').removeClass('e-disable');
                });
            </script>

   
</asp:Content>