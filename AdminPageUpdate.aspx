<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminPageUpdate.aspx.cs" Inherits="Group4_A55_IT114.WebForm8" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style49 {
            width: 209px;
            height: 65px;
        }
        .auto-style56 {
            width: 209px;
            text-align: center;
        }
        .auto-style63 {
            text-align: center;
            width: 258px;
            height: 73px;
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
        .auto-style66 {
            width: 340px;
            height: 73px;
        }
        .auto-style68 {
            width: 340px;
        }
        .auto-style73 {
            text-align: center;
            width: 258px;
        }
        .auto-style99 {
            text-align: center;
            width: 258px;
            height: 78px;
        }
        .auto-style108 {
            font-family: Arial;
            height: auto;
            width: 684px;
            border-style: none;
            border-radius: 20px;
            margin: 30px auto;
        }
        .auto-style115 {
            height: 190px;
            width: 1057px;
        }
        .auto-style119 {
            width: 209px;
            height: 73px;
            text-align: center;
        }
        .auto-style120 {
            width: 340px;
            height: 78px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
      <!--Update-->
    <div class="border_page">
        <h1 class="border_header"> Update Doctor Records </h1>
        <div>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    
            <table class="auto-style108">
                <tr>
                    <td class="auto-style66">
                        <asp:Label ID="Label23" runat="server" Text="Input Doctor ID: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" ValidationGroup="updatesearchDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style63">
                        <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style119">&nbsp;</td>
                    <td class="auto-style63">
                        <asp:Button ID="Select_Btn" runat="server" BorderStyle="None" CssClass="buttonzoom" Text="Select" ValidationGroup="updatesearchDoctor" Width="150px" Height="50px" OnClick="Select_Btn_Click" />
                    </td>
                </tr>
                <tr id="data1" runat="server">
                    <td class="auto-style68">
                        <asp:Label ID="Label15" runat="server" Text="Name: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor" EnableClientScript="False" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Height="30px" Width="250px" MaxLength="50" CssClass="textbox" CausesValidation="True"></asp:TextBox>
                    </td>
                </tr>
                <tr id="data2" runat="server">
                    <td class="auto-style120">
                        <asp:Label ID="Label16" runat="server" Text="Specialization: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style99">
                        <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="30px" Width="250px" MaxLength="20" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr id="data3" runat="server">
                    <td class="auto-style49">
                        <asp:Label ID="Label17" runat="server" Text="Affiliation:  " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style65">
                        <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" Height="30px" Width="250px" MaxLength="20" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr id="data4" runat="server">
                    <td class="auto-style68">
                        <asp:Label ID="Label18" runat="server" Text="ID Number: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" Height="30px" Width="250px" MaxLength="10" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr id="data5" runat="server">
                    <td class="auto-style68">
                        <asp:Label ID="Label19" runat="server" Text="Password: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" Height="30px" Width="250px" Rows="20" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr id="data6" runat="server">
                    <td class="auto-style66">
                        &nbsp;</td>
                    <td class="auto-style63">
                        <asp:Label ID="Label33" runat="server" Font-Italic="True" ForeColor="#144878" Text="e.g.: +63xxxxxxxxxx"></asp:Label>
                    </td>
                </tr>
                <tr id="data7" runat="server">
                    <td class="auto-style66">
                        <asp:Label ID="Label20" runat="server" Font-Bold="True" ForeColor="#144878" Text="Contact Number: "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox7" EnableClientScript="False" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style63">
                        <asp:TextBox ID="TextBox7" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" MaxLength="13" Width="250px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="Invalid Contact Number" ForeColor="Red" ValidationExpression="((^(\+)(\d){12}$)|(^\d{11}$))" ValidationGroup="updateDoctor"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr id="data8" runat="server">
                    <td class="auto-style68">
                        <asp:Label ID="Label21" runat="server" Text="Room Number: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style73">
                        <asp:TextBox ID="TextBox8" runat="server" BorderStyle="Solid" Height="30px" Width="250px" MaxLength="10" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr id="data9" runat="server">
                    <td class="auto-style66">
                        &nbsp;</td>
                    <td class="auto-style63">
                        <asp:Label ID="Label35" runat="server" Font-Italic="True" ForeColor="#144878" Text="e.g. Monday/Wednesday"></asp:Label>
                    </td>
                </tr>
                <tr id="data10" runat="server">
                    <td class="auto-style66">
                        <asp:Label ID="Label34" runat="server" Font-Bold="True" ForeColor="#144878" Text="Schedule Day: "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox18" EnableClientScript="False" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style63">
                        <asp:TextBox ID="TextBox18" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" MaxLength="25" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr id="data11" runat="server">
                    <td class="auto-style66">
                        &nbsp;</td>
                    <td class="auto-style63">
                        <asp:Label ID="Label12" runat="server" Font-Italic="True" ForeColor="#144878" Text="e.g.: 2pm-5pm, 5pm-6pm"></asp:Label>
                    </td>
                </tr>
                <tr id="data12" runat="server">
                    <td class="auto-style66">
                        <asp:Label ID="Label22" runat="server" Font-Bold="True" ForeColor="#144878" Text="Schedule Time: "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox9" EnableClientScript="False" ErrorMessage="*" ForeColor="Red" ValidationGroup="updateDoctor"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style63">
                        <asp:TextBox ID="TextBox9" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" MaxLength="50" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr id="data13" runat="server">
                    <td class="auto-style56">
                        <asp:Button ID="Button5" runat="server" BorderStyle="None" CssClass="buttonzoom" Text="Clear" Width="150px" OnClick="Button5_Click" />
                    </td>
                    <td class="auto-style63">
                        <asp:Button ID="Update_Rec" runat="server" BorderStyle="None" Text="Update Record" Width="150px" ValidationGroup="updateDoctor" CssClass="buttonzoom" ValidateRequestMode="Enabled" OnClick="Update_Rec_Click" />
                    </td>
                </tr>
            </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

</asp:Content>
