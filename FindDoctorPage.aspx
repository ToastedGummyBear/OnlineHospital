<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FindDoctorPage.aspx.cs" Inherits="Group4_A55_IT114.WebForm2" theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style26{
            height: 367px;
        }
        .auto-style41 {
            text-align: center;
        }
        .auto-style42 {
            width: 100%;
        }
        </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="finddocimage">
        <table class="auto-style26" align="left">
             <tr>
                 <td>
                     <h1 class="hyperlink_color">FIND A DOCTOR</h1>
                     <p class="hyperlink_color">Doctors of Malayan Medical Center are highly certified by credible medical institutions in the Philippines. Ensure them to provide ideal care for your health needs. </p>
                 </td>
             </tr>
         </table>
    </div>
    <div>
        <div class="auto-style41">

            <table align="center" class="auto-style42">
                <tr>
                    <td>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#144878" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="doctorName" HeaderText="Doctor Name" SortExpression="doctorName" ControlStyle-CssClass="finddoclist" >
                </asp:BoundField>
                <asp:BoundField DataField="specialization" HeaderText="Specialization" SortExpression="specialization" ControlStyle-CssClass="finddoclist">
                </asp:BoundField>
                <asp:BoundField DataField="affiliation" HeaderText="Affiliation" SortExpression="affiliation" ControlStyle-CssClass="finddoclist">
                </asp:BoundField>
                <asp:BoundField DataField="contactNumber" HeaderText="Contact Number" SortExpression="contactNumber" ControlStyle-CssClass="finddoclist">
                </asp:BoundField>
                <asp:BoundField DataField="roomScheduleDay" HeaderText="Day/s of Schedule" SortExpression="roomScheduleDay" ControlStyle-CssClass="finddoclist" >
                </asp:BoundField>
                <asp:BoundField DataField="roomNumber" HeaderText="Room Number" SortExpression="roomNumber" ControlStyle-CssClass="finddoclist">
                </asp:BoundField>
                <asp:BoundField DataField="roomScheduleTime" HeaderText="Time of Schedule" SortExpression="roomScheduleTime" ControlStyle-CssClass="finddoclist">
                </asp:BoundField>
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
                    </td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MMCConnectionString %>" SelectCommand="SELECT [doctorName], [specialization], [affiliation], [contactNumber], [roomScheduleDay], [roomNumber], [roomScheduleTime] FROM [DoctorTBL] WHERE ([status] = @status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Active" Name="status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    
</asp:Content>
