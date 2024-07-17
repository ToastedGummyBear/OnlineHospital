<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMasterPage.Master" AutoEventWireup="true" CodeBehind="DoctorPageList.aspx.cs" Inherits="Group4_A55_IT114.WebForm11" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
            text-indent: 2cm;
            display: inline-block;
        }
        .auto-style115 {
            height: 190px;
            width: 1057px;
        }
        .newStyle2 {
            display: inline-block;
        }
        .auto-style116 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
    
    <!--List of Appointments-->
    <div class ="border_page">
        <h1 class="border_header">List of Appointment </h1>
        <div>
                    <div class="auto-style116">
                        <asp:GridView ID="GridView1" runat="server" AutoPostBack="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#144878" GridLines="None" DataKeyNames="appointmentID" AutoGenerateSelectButton="False" Font-Bold="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField SelectText="Show Patient Details" ShowSelectButton="true" />
                <asp:BoundField DataField="appointmentID" HeaderText="Appointment ID" SortExpression="appointmentID">
                </asp:BoundField>
                <asp:BoundField DataField="patientName" HeaderText="Patient Name" SortExpression="patientName">
                </asp:BoundField>
                <asp:BoundField DataField="schedule" HeaderText="Time" SortExpression="schedule">
                </asp:BoundField>
                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date">
                </asp:BoundField>
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#144878" ForeColor="White" Font-Bold="True"/>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#144878" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

                    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MMCConnectionString %>" 
            SelectCommand="SELECT [appointmentID], [patientName], [schedule], [date], [Status] FROM [AppointmentTBL] WHERE ([doctorID] = @doctorID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="doctorID" QueryStringField="doctorID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
         </div>

        </div>
    <div id="PatientData" runat="server" class ="border_page" visible="false">
        <h1 class="border_header">Patient Information</h1>
        <div>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <table class="auto-style92" align="center">
                        <tr>
                            <td class="auto-style117">
                                <asp:Label ID="Label33" runat="server" Font-Bold="True" ForeColor="#144878" Text="Patient Name : "></asp:Label>
                            </td>
                            <td class="auto-style90">
                                <asp:TextBox ID="ptnName" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style117">
                                <asp:Label ID="Label32" runat="server" Font-Bold="True" ForeColor="#144878" Text="Contact Number : "></asp:Label>
                            </td>
                            <td class="auto-style90">
                                <asp:TextBox ID="ptnConNo" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style117">
                                <asp:Label ID="Label36" runat="server" Font-Bold="True" ForeColor="#144878" Text="Address : "></asp:Label>
                            </td>
                            <td class="auto-style90">
                                <asp:TextBox ID="ptnAddress" runat="server" BorderStyle="Solid" CssClass="textbox" Height="90px" Width="300px" MaxLength="1000" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style117">
                                <asp:Label ID="Label35" runat="server" Font-Bold="True" ForeColor="#144878" Text="E-mail : "></asp:Label>
                            </td>
                            <td class="auto-style90">
                                <asp:TextBox ID="ptnEmail" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style117">
                                <asp:Label ID="Label37" runat="server" Font-Bold="True" ForeColor="#144878" Text="Reason for visit/appointment : "></asp:Label>
                            </td>
                            <td class="auto-style90">
                                <asp:TextBox ID="ptnReason" runat="server" BorderStyle="Solid" CssClass="textbox" Height="90px" Width="300px" MaxLength="1000" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>

