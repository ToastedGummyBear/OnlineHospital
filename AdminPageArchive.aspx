<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminPageArchive.aspx.cs" Inherits="Group4_A55_IT114.WebForm9" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
            text-indent: 2cm;
            display: inline-block;
        }
        .auto-style73 {
            text-align: center;
            width: 258px;
        }
        .auto-style93 {
            width: 217px;
        }
        .auto-style97 {
            transition-duration: 0.4s;
            border-radius: 12px;
            width: 200px;
            height: 50px;
            cursor: pointer;
            margin-bottom: 0px;
        }
        .auto-style98 {
            width: 217px;
            height: 78px;
        }
        .auto-style99 {
            text-align: center;
            width: 258px;
            height: 78px;
        }
        .auto-style101 {
            font-family: Arial;
            height: auto;
            width: 561px;
            border-style: none;
            border-radius: 20px;
            margin: 30px auto;
        }
        .auto-style115 {
            height: 190px;
            width: 1057px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
    <div class="border_page">
        <h1 class="border_header">Archiving Doctor Record </h1>
        <div>
            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                <ContentTemplate>
                    <table class="auto-style101">
                        <tr>
                            <td class="auto-style98">
                                <asp:Label ID="Label24" runat="server" Text="Input Doctor ID: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="Red" ValidationGroup="deleteDoctor" EnableClientScript="False" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style99">
                                <asp:TextBox ID="TextBox10" runat="server" BorderStyle="Solid" Height="30px" Width="250px" MaxLength="10" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style98">&nbsp;</td>
                            <td class="auto-style99">
                                <asp:Button ID="Select_Btn" runat="server" BorderStyle="None" CssClass="buttonzoom" Text="Select" ValidationGroup="deleteDoctor" Width="200px" OnClick="Select_Btn_Click" />
                            </td>
                        </tr>
                        <tr id="data1" runat="server">
                            <td class="auto-style98">
                                <asp:Label ID="Label25" runat="server" Font-Bold="True" ForeColor="#144878" Text="Name: "></asp:Label>
                            </td>
                            <td class="auto-style99">
                                <asp:TextBox ID="TextBox11" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" MaxLength="10" Width="250px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr id="data2" runat="server">
                            <td class="auto-style98">
                                <asp:Label ID="Label28" runat="server" Font-Bold="True" ForeColor="#144878" Text="Specialization:"></asp:Label>
                            </td>
                            <td class="auto-style99">
                                <asp:TextBox ID="TextBox14" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" MaxLength="10" Width="250px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr id="data3" runat="server">
                            <td class="auto-style98">
                                <asp:Label ID="Label27" runat="server" Font-Bold="True" ForeColor="#144878" Text="Affiliation:"></asp:Label>
                            </td>
                            <td class="auto-style99">
                                <asp:TextBox ID="TextBox13" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" MaxLength="10" Width="250px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr id="data4" runat="server">
                            <td class="auto-style98">
                                <asp:Label ID="Label26" runat="server" Font-Bold="True" ForeColor="#144878" Text="Status: "></asp:Label>
                            </td>
                            <td class="auto-style99">
                                <asp:TextBox ID="TextBox12" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" MaxLength="10" Width="250px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr id="data5" runat="server">
                            <td class="auto-style93">
                                <asp:Button ID="Unarchive_Record" runat="server" BorderStyle="None" CssClass="auto-style97" OnClick="Unarchive_Record_Click" Text="Unarchive" ValidationGroup="deleteSelect" />
                            </td>
                            <td class="auto-style73">
                                <asp:Button ID="Archive_Record" runat="server" BorderStyle="None" Text="Archive" Width="200px" OnClick="Archive_Record_Click" ValidationGroup="deleteDoctor" CssClass="buttonzoom" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>

    </div>
    

</asp:Content>
