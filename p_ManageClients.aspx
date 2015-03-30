<%@ Page Title="" Language="C#" MasterPageFile="~/m_LoginMaster.master" AutoEventWireup="true" CodeFile="p_ManageClients.aspx.cs" Inherits="p_ManageClients" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadSection">
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
                                        </ValidationRule>
                                    </ej:Column>

                                    <ej:Column Field="CName" HeaderText="Client Name" Width="90">
                                        <ValidationRule>
                                            <ej:KeyValue Key="required" Value="true" />
                                        </ValidationRule>
                                    </ej:Column>

                                    <ej:Column Field="RegNo" HeaderText="RegNo" Width="70" Visible="false" />
                                    <ej:Column Field="VatNo" HeaderText="VatNo" Width="70" Visible="false" />
                                    <ej:Column Field="PhysicalAddress1" HeaderText="physicalAddress11" Visible="false" />
                                    <ej:Column Field="PhysicalAddress2" HeaderText="physicalAddress2" Visible="false" />
                                    <ej:Column Field="PhysicalAddress3" HeaderText="physicalAddress3" Visible="false" />
                                    <ej:Column Field="PhysicalAddress4" HeaderText="physicalAddress4" Visible="false" />
                                    <ej:Column Field="PhysicalAddressPostal" HeaderText="PhysicalAddressPostal" Visible="false" />
                                    <ej:Column Field="PhysicalAddressCity" HeaderText="PhysicalAddressCity" Visible="false" />
                                    <ej:Column Field="PhysicalAddressCountry" HeaderText="PhysicalAddressCountry" Visible="false" />
                                    <ej:Column Field="ClientContact1" HeaderText="ClientContact1" Visible="false" />
                                    <ej:Column Field="ClientContact1Tel" HeaderText="ClientContact1Tel" Visible="false" />
                                    <ej:Column Field="ClientContact1Email" HeaderText="ClientContact1Email" Visible="false" />
                                    <ej:Column Field="ClientContact2" HeaderText="ClientContact2" Visible="false" />
                                    <ej:Column Field="ClientContact2Tel" HeaderText="ClientContact2Tel" Visible="false" />
                                    <ej:Column Field="ClientContact2Email" HeaderText="ClientContact2Email" Visible="false" />

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
                <td style="text-align: left;">Client Name
                </td>
                <td style="text-align: left">
                    <input id="CName" name="CName" value="{{: CName}}"
                        style="width: 116px; height: 28px" />
                </td>
            </tr>

            <tr>
                <td style="text-align: right;">RegNo
                </td>
                <td style="text-align: left">
                    <input type="text" id="RegNo" name="RegNo" value="{{:RegNo}}"
                        style="width: 116px; height: 28px" />
                </td>
                <td style="text-align: right;">VatNo
                </td>
                <td style="text-align: left">
                    <input id="VatNo" name="VatNo" value="{{: VatNo}}"
                        style="width: 116px; height: 28px" />
                </td>
                <tr>

                    <td style="text-align: right;">PhysicalAddress1
                    </td>
                    <td style="text-align: left">
                        <input id="PhysicalAddress1" name="PhysicalAddress1" value="{{: PhysicalAddress1}}"
                            style="width: 116px; height: 28px" />
                    </td>
                    <td style="text-align: right;">physicalAddress2
                    </td>
                    <td style="text-align: left">
                        <input id="PhysicalAddress2" name="PhysicalAddress2" value="{{: PhysicalAddress2}}"
                            style="width: 116px; height: 28px" />
                    </td>
                    <tr>

                        <td style="text-align: right;">PhysicalAddress3
                        </td>
                        <td style="text-align: left">
                            <input id="PhysicalAddress3" name="PhysicalAddress3" value="{{: PhysicalAddress3}}"
                                style="width: 116px; height: 28px" />
                        </td>
                        <td style="text-align: right;">PhysicalAddress4
                        </td>
                        <td style="text-align: left">
                            <input id="PhysicalAddress4" name="PhysicalAddress4" value="{{: PhysicalAddress4}}"
                                style="width: 116px; height: 28px" />
                        </td>
                        <tr>

                            <td style="text-align: right;">PhysicalAddressPostal
                            </td>
                            <td style="text-align: left">
                                <input id="PhysicalAddressPostal" name="PhysicalAddressPostal" value="{{: PhysicalAddressPostal}}"
                                    style="width: 116px; height: 28px" />
                            </td>
                            <td style="text-align: right;">PhysicalAddressCity
                            </td>
                            <td style="text-align: left">
                                <input id="PhysicalAddressCity" name="PhysicalAddressCity" value="{{: PhysicalAddressCity}}"
                                    style="width: 116px; height: 28px" />
                            </td>
                            <tr>

                                <td style="text-align: right;">PhysicalAddressCountry
                                </td>
                                <td style="text-align: left">
                                    <input id="PhysicalAddressCountry" name="PhysicalAddressCountry" value="{{: PhysicalAddressCountry}}"
                                        style="width: 116px; height: 28px" />
                                </td>
                                <td style="text-align: right;">ClientContact1
                                </td>
                                <td style="text-align: left">
                                    <input id="ClientContact1" name="ClientContact1" value="{{: ClientContact1}}"
                                        style="width: 116px; height: 28px" />
                                </td>
                                <tr>


                                    <td style="text-align: right;">ClientContact1Tel
                                    </td>
                                    <td style="text-align: left">
                                        <input id="ClientContact1Tel" name="ClientContact1Tel" value="{{: ClientContact1Tel}}"
                                            style="width: 116px; height: 28px" />
                                    </td>
                                    <td style="text-align: right;">ClientContact1
                                    </td>
                                    <td style="text-align: left">
                                        <input id="ClientContact1Email" name="ClientContact1Email" value="{{: ClientContact1Email}}"
                                            style="width: 116px; height: 28px" />
                                    </td>
                                    <tr>

                                        <td style="text-align: right;">ClientContact2
                                        </td>
                                        <td style="text-align: left">
                                            <input id="ClientContact2" name="ClientContact2" value="{{: ClientContact2}}"
                                                style="width: 116px; height: 28px" />
                                        </td>
                                        <td style="text-align: right;">ClientContact2Tel
                                        </td>
                                        <td style="text-align: left">
                                            <input id="ClientContact2Tel" name="ClientContact2Tel" value="{{: ClientContact2Tel}}"
                                                style="width: 116px; height: 28px" />
                                        </td>
                                        <tr>

            <tr>

                <td style="text-align: right;">ClientContact2Email
                </td>
                <td style="text-align: left">
                    <input id="ClientContact2Email" name="ClientContact2Email" value="{{: ClientContact2Email}}"
                        style="width: 116px; height: 28px" />
                </td>
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
