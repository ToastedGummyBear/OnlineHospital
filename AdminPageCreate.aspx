<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminPageCreate.aspx.cs" Inherits="Group4_A55_IT114.WebForm7" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style43 {
            height: 65px;
            width: 216px;
            text-align: left;
        }
        .auto-style60 {
            width: 216px;
            text-align: center;
        }
        .auto-style65 {
            text-align: center;
            width: 258px;
            height: 65px;
        }
        .newStyle1 {
            text-indent: 2cm;
            display: inline-block;
        }
        .auto-style73 {
            text-align: center;
            width: 258px;
        }
        .auto-style90 {
            width: 216px;
            text-align: left;
        }
        .auto-style104 {
            font-family: Arial;
            height: auto;
            width: 560px;
            border-style: none;
            border-radius: 20px;
            margin: 30px auto;
        }
        .auto-style115 {
            height: 190px;
            width: 1057px;
        }
        .auto-style121 {
        text-align: left;
        width: 258px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
    <div class="border_page">
        <h1 class="border_header">Create new Doctor Record </h1>
        <div>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <table class="auto-style104">
                        <tr>
                            <td class="auto-style43">
                                <asp:Label ID="Label6" runat="server" Text="ID Number: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ID_TB1" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style65">
                                <asp:TextBox ID="ID_TB1" runat="server" BorderStyle="Solid" Height="25px" Width="250px" MaxLength="10" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style43">&nbsp;</td>
                            <td class="auto-style65">
                                <asp:Button ID="Random_ID" runat="server" BorderStyle="None" OnClick="Random_ID_Click" Text="Generate Random ID" Width="200px" ValidationGroup="generateID" CssClass="buttonzoom" />
                            </td>
                        </tr>
                        </tr>
                        <tr>
                            <td class="auto-style90">
                                <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="#144878" Text="Password: "></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PW_TB2" EnableClientScript="False" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style73">
                                <asp:TextBox ID="PW_TB2" runat="server" BorderStyle="Solid" CssClass="textbox" Height="25px" MaxLength="20" Width="250px"></asp:TextBox>
                            </td>
                            <tr>
                                <td class="auto-style90">&nbsp;</td>
                                <td class="auto-style73">
                                    <asp:Button ID="Random_PW" runat="server" BorderStyle="None" CssClass="buttonzoom" OnClick="Random_PW_Click" Text="Generate Random PW" ValidationGroup="generatePW" Width="250px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style90">
                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#144878" Text="Name of Doctor:  "></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="NOD_TB3" EnableClientScript="False" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style73">
                                    <asp:TextBox ID="NOD_TB3" runat="server" BorderStyle="Solid" CssClass="textbox" Height="25px" MaxLength="50" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style90">
                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#144878" Text="Doctor Specialization: "></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="S_TB4" EnableClientScript="False" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style73">
                                    <asp:TextBox ID="S_TB4" runat="server" BorderStyle="Solid" CssClass="textbox" Height="25px" MaxLength="20" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style90">
                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="#144878" Text="Affiliation: "></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="A_TB5" EnableClientScript="False" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style73">
                                    <asp:TextBox ID="A_TB5" runat="server" BorderStyle="Solid" CssClass="textbox" Height="25px" MaxLength="100" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style90">
                                    &nbsp;</td>
                                <td class="auto-style73">
                                    <asp:Label ID="Label36" runat="server" Font-Italic="True" ForeColor="#144878" Text="e.g.: +63xxxxxxxxxx"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style90">
                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#144878" Text="Contact Number:  "></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CN_TB6" EnableClientScript="False" ErrorMessage="*" ForeColor="#990000" ValidationGroup="createDoctor"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style121">
                                    <asp:TextBox ID="CN_TB6" runat="server" BorderStyle="Solid" CssClass="textbox" Height="25px" MaxLength="13" Width="150px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CN_TB6" ErrorMessage="Invalid Contact Number" ForeColor="Red" ValidationExpression="((^(\+)(\d){12}$)|(^\d{11}$))" ValidationGroup="createDoctor"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style90">
                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#144878" Text="Room Number: "></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="RN_TB7" EnableClientScript="False" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style73">
                                    <asp:TextBox ID="RN_TB7" runat="server" BorderStyle="Solid" CssClass="textbox" Height="25px" MaxLength="10" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style90">&nbsp;</td>
                                <td class="auto-style73">
                                    <asp:Label ID="Label37" runat="server" Font-Italic="True" ForeColor="#144878" Text="e.g. Monday/Wednesday"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style90">
                                    <asp:Label ID="Label32" runat="server" Font-Bold="True" ForeColor="#144878" Text="Room Schedule Day: "></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="RSD_TB8" EnableClientScript="False" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style73">
                                    <asp:TextBox ID="RSD_TB8" runat="server" BorderStyle="Solid" CssClass="textbox" Height="25px" MaxLength="25" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style90">&nbsp;</td>
                                <td class="auto-style73">
                                    <asp:Label ID="Label12" runat="server" Font-Italic="True" ForeColor="#144878" Text="e.g.: 2pm-5pm, 5pm-6pm"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style90">
                                    <asp:Label ID="Label35" runat="server" Font-Bold="True" ForeColor="#144878" Text="Room Schedule Time: "></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="RST_TB9" EnableClientScript="False" ErrorMessage="*" ForeColor="Red" ValidationGroup="createDoctor"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style73">
                                    <asp:TextBox ID="RST_TB9" runat="server" BorderStyle="Solid" CssClass="textbox" Height="25px" MaxLength="100" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style60">
                                    <asp:Button ID="Button2" runat="server" BorderStyle="None" CausesValidation="False" CssClass="buttonzoom" OnClick="Button2_Click" Text="Clear" Width="150px" />
                                </td>
                                <td class="auto-style73">
                                    <asp:Button ID="Create_Doc_Info" runat="server" BorderStyle="None" CssClass="buttonzoom" OnClick="Create_Doc_Info_Click" Text="Create Record" ValidationGroup="createDoctor" Width="200px" />
                                </td>
                            </tr>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

</asp:Content>
