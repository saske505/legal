<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAKDPage.master" AutoEventWireup="true" CodeFile="ADKPage.aspx.cs" Inherits="ADKPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadSection" Runat="Server">
     <script src="../Scripts/jquery.validate.min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" Runat="Server">
    <script type="text/template" id="template">
         <div>

            <%--       <syncfusion:Window runat="server" ID="test">--%>
            <%--    <form id="form1" runat="server">--%>

            <table>

                <tr>
                    <td style="text-align: left;">
                        <input id="OrderID" name="OrderID" value="{{: OrderID}}" hidden="hidden"
                            class="e-field e-ejinputtext valid" style="text-align: right; width: 116px; height: 28px" />
                    </td>

                </tr>

                <tr>
                    <td style="text-align: right;">Name
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
                    </td>
                </tr>



                <tr>
                    <td style="text-align: right;">Level
                    </td>
                    <td style="text-align: left">


                        <select id="ULevel22" name="ULevel"  data-role="dropdownlist" data-text-field="c_clientname" data-value-field="id" data-bind="source: userssql">
                                <%=ClientCombo%>
                        </select>



                        <%--<syncfusion:GenericDropDown ID="ddlusers" runat="server" Width="150px"></syncfusion:GenericDropDown>--%>
                        <select id="ULevel" name="ULevel"  data-role="dropdownlist" data-text-field="Name" data-value-field="Name" data-bind="source: userssql">
                            <option value="AKD">AKD</option>
                            <option value="Client Admin">Client Admin</option>
                            <option value="Client">Client</option>
                        </select>




                    </td>

                </tr>
                <tr>


                    <%--<asp:ListItem Selected="true" Text="All" value="*" />--%>


                    <%--                <td style="text-align: right;" hidden="hidden">
                    <input type="password" id="temptest" name="Passwordtemp" class="e-field e-ejinputtext valid"
                        style="width: 116px; height: 28px;" value="{{: Upass}}" />
                </td>--%>
                </tr>


                <tr>
            </table>

            <%--        </syncfusion:Window>--%>
            <%--        </form>--%>
        </div>
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
            if ((args.requestType == "beginedit" || args.requestType == "add") && args.model.editSettings.editMode == "dialogtemplate") {

                if (args.requestType == "beginedit") {
                    $("#OrderID").attr("disabled", "disabled");
                    $("#ULevel").ejDropDownList("setSelectedValue", args.row.children().eq(4).text());
                }
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="StyleSection" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="SampleHeading" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ControlsSection" Runat="Server">

        <asp:DropDownList ID="ddlSubject" runat="server">
        <%--DataTextField="c_clientname" DataValueField="c_id" DataSourceID="SqlData"--%>
        <asp:ListItem Text="<Select Subject>" Value="0" />
    </asp:DropDownList>


     <div style="margin: 5px auto auto 50px; width: 1000px;">
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <ej:Grid ID="OrdersGrid" runat="server" AllowPaging="True" OnServerEditRow="EditEvents_ServerEditRow" OnServerAddRow="EditEvents_ServerAddRow"
                    OnServerDeleteRow="EditEvents_ServerDeleteRow">
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
                                <ej:KeyValue Key="minlength" Value="3" />
                            </ValidationRule>
                        </ej:Column>

                        <ej:Column Field="Upass" HeaderText="Password" Width="110"></ej:Column>

                        <ej:Column Field="UClient" HeaderText="Client" Width="110" EditType="Dropdown"></ej:Column>

                        <ej:Column Field="ULevel" HeaderText="Level" Width="110" EditType="Dropdown"></ej:Column>

                    </Columns>
                    <EditSettings AllowEditing="True" AllowAdding="True" AllowDeleting="True" EditMode="Dialog"></EditSettings>
                    <ToolbarSettings ShowToolbar="True" ToolbarItems="add,edit,delete,update,cancel"></ToolbarSettings>
                </ej:Grid>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="PropertySection" Runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="EventSection" Runat="Server">
</asp:Content>

