<%@ Page Title="" Language="C#" MasterPageFile="~/m_LoginMaster.master" AutoEventWireup="true" CodeFile="p_Users.aspx.cs" Inherits="p_Users" %>




<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadSection">

    <script src="../Scripts/jquery.validate.min.js" type="text/javascript"></script>
    <script src="Scripts/gnmenu.js"></script>
    <script src="Scripts/classie.js"></script>
    <script src="Scripts/global.js"></script>
    <script src="Scripts/modernizr.custom.js"></script>
    <link href="Content/Site.css" rel="stylesheet" />
    <script src="Content/dist/js/material.js"></script>
    <script src="Content/dist/js/material.min.js"></script>
    <script src="Content/dist/js/ripples.js"></script>
    <script src="Content/dist/js/ripples.min.js"></script>
    <link href="Content/dist/css/material-fullpalette.css" rel="stylesheet" />
    <link href="Content/dist/css/material-fullpalette.min.css" rel="stylesheet" />
    <link href="Content/dist/css/material.css" rel="stylesheet" />
    <link href="Content/dist/css/material.min.css" rel="stylesheet" />
    <link href="Content/dist/css/ripples.css" rel="stylesheet" />
    <link href="Content/dist/css/ripples.min.css" rel="stylesheet" />
    <link href="Content/dist/css/roboto.css" rel="stylesheet" />
    <link href="Content/dist/css/roboto.min.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $('ul.gn-submenu li a').addClass('navMove');
        });
    </script>

</asp:Content>

<asp:Content ID="ScriptContent" runat="server" ContentPlaceHolderID="ScriptSection">


    <script type="text/template" id="template">

        <b>User</b>

        <table>

            <tr>
                <td style="text-align: left" hidden="hidden">
                    <input id="OrderID" name="OrderID" value="{{: OrderID}}" disabled="disabled" hidden="hidden" class="e-field e-ejinputtext valid e-disable" style="text-align: right; width: 116px; height: 28px" />
                </td>

            </tr>

            <tr>
                <td style="text-align: right;">Name
                </td>
                <td style="text-align: left">

                    <input id="Name" name="Name" value="{{: Name}}" class="e-field e-ejinputtext valid"
                        style="width: 116px; height: 28px" />
                </td>
            </tr>

            <tr>
                <td style="text-align: right;">Surname
                </td>
                <td style="text-align: left">

                    <input type="text" id="SurName" name="Surname" class="e-field e-ejinputtext valid"
                        style="width: 116px; height: 28px;" value="{{: SurName}}" />
                </td>

                <td style="text-align: right;">User Name
                </td>
                <td style="text-align: left">

                    <input id="Uname" name="Uname" value="{{: Uname}}" class="e-field e-ejinputtext valid"
                        style="width: 116px; height: 28px" />
                </td>
            </tr>

            <tr>
                <td style="text-align: right;">Password
                </td>
                <td style="text-align: left">

                    <input type="password" id="Upass" name="Upass" class="e-field e-ejinputtext valid"
                        style="width: 116px; height: 28px;" value="{{: Upass}}" />

                    <input type="password" id="Upasss" name="Upass1" class="e-field e-ejinputtext valid"
                        style="width: 116px; height: 28px;" value="{{: Upass}}" hidden="hidden" />

                </td>

                <tr>
            <tr>
            <tr>
                <td style="text-align: right;">Client
                </td>
                <td style="text-align: left">

                    <select id="UClient" name="Uclient" data-role="dropdownlist" data-text-field="c_clientname" data-value-field="id" data-bind="source: userssql">
                        <%=ClientCombo%>
                    </select>

                    <td style="text-align: right;">Level
                    </td>
                    <td style="text-align: left">

                        <select id="ULevel" name="ULevel" data-role="dropdownlist" data-text-field="Name" data-value-field="Name" data-bind="source: userssql">
                            <option value="AKD">AKD</option>
                            <option value="Client Admin">Client Admin</option>
                            <option value="Client">Client</option>
                            <option value="Courier">Courier</option>
                        </select>

                    </td>
                </td>


            </tr>
            <tr>
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



</asp:Content>


<asp:Content ID="ControlContent" runat="server" ContentPlaceHolderID="ControlsSection">

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
                                    <ej:Column Field="Uname" HeaderText="User Name" Width="90">
                                        <ValidationRule>
                                            <ej:KeyValue Key="required" Value="true" />
                                        </ValidationRule>
                                    </ej:Column>


                                    <ej:Column Field="Name" HeaderText="Name" Width="70" Visible ="false">
                                        <ValidationRule>
                                            <ej:KeyValue Key="required" Value="true" />
                                        </ValidationRule>
                                    </ej:Column>

                                    <ej:Column Field="SurName" HeaderText="Sur Name" Width="70"  Visible ="false"/>
                                    <ej:Column Field="ULevel" HeaderText="ULevel" Width="70"  Visible ="false"/>
                                    <ej:Column Field="Upass" HeaderText="Upass" Width="70" Visible ="false">
                                        <ValidationRule>
                                            <ej:KeyValue Key="required" Value="true" />
                                        </ValidationRule>
                                    </ej:Column>
                                </Columns>

                                <EditSettings AllowEditing="True" AllowAdding="True" AllowDeleting="True" EditMode="Dialog"></EditSettings>
                                <ToolbarSettings ShowToolbar="True" ToolbarItems="add,edit,delete"></ToolbarSettings>
                            </ej:Grid>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>




    <%--<asp:ObjectDataSource ID="ObjectDataSource1" TypeName="ComboObjectData" SelectMethod="GetItems"
    runat="server"></asp:ObjectDataSource>--%>

    <%-- <ej:DropDownList runat="server" DataSourceID ="SqlData" va></ej:DropDownList>--%>



    <asp:SqlDataSource ID="SqlData" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="userssql" runat="server"></asp:SqlDataSource>


</asp:Content>



<asp:Content ID="Content4" ContentPlaceHolderID="PropertySection" runat="server">
</asp:Content>


