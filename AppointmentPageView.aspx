<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AppointmentPageView.aspx.cs" Inherits="Group4_A55_IT114.WebForm6" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style26 {
            width: 100%;
            height: 367px;
        }
        .auto-style87 {
            width: 296px;
            color: #144878;
        }
        .auto-style92 {
            width: 750px;
        }
        .auto-style94 {
            width: 296px;
            height: 73px;
            text-align: left;
        }
        .auto-style116 {
        color: white;
        text-align: left;
    }
        .auto-style117 {
            width: 296px;
            height: 73px;
        }
        .auto-style119 {
            width: 296px;
        }
        .auto-style121 {
            width: 368px;
            text-align: left;
            height: 73px;
        }
        .auto-style122 {
            width: 368px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="appointmentimage">
        <table class="auto-style26" align="center">
             <tr>
                 <td>
                     <h1 class="auto-style116">APPOINTMENT REQUEST</h1>
                     <p class="auto-style116">Requesting and viewing appointments made easy with Malayan Medical Center.</p>
                 </td>
             </tr>
         </table>
    </div>
    <div class ="border_appointment">
        <h1 class="border_header">Appointment Status</h1>
        <div>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <table class="auto-style92" align="center">
                        <tr>
                            <td class="auto-style117">
                                <asp:Label ID="Label30" runat="server" Text="Search Appointment ID : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox22" ErrorMessage="*" ForeColor="#CC0000" EnableClientScript="False"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style121">
                                <asp:TextBox ID="TextBox22" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style117">&nbsp;</td>
                            <td class="auto-style121">
                                <asp:Button ID="Button9" runat="server" BorderStyle="None" CommandName="Search" CssClass="buttonzoom" OnCommand="ViewAppointment_buttons" Text="Search" Width="150px"/>
                            </td>
                        </tr>
                        <tr id="data1" runat="server">
                            <td class="auto-style94">
                                <asp:Label ID="Label31" runat="server" Font-Bold="True" ForeColor="#144878" Text="Appointment ID : "></asp:Label>
                            </td>
                            <td class="auto-style121">
                                <asp:TextBox ID="TextBox23" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr id="data2" runat="server">
                            <td class="auto-style119">
                                <asp:Label ID="Label33" runat="server" Font-Bold="True" ForeColor="#144878" Text="Patient Name : "></asp:Label>
                            </td>
                            <td class="auto-style122">
                                <asp:TextBox ID="TextBox24" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr id="data3" runat="server">
                            <td class="auto-style119">
                                <asp:Label ID="Label32" runat="server" Font-Bold="True" ForeColor="#144878" Text="Date of appointment : "></asp:Label>
                            </td>
                            <td class="auto-style122">
                                <asp:TextBox ID="TextBox25" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr id="data4" runat="server">
                            <td class="auto-style119">
                                <asp:Label ID="Label35" runat="server" Font-Bold="True" ForeColor="#144878" Text="Time of Appointment:"></asp:Label>
                            </td>
                            <td class="auto-style122">
                                <asp:TextBox ID="TextBox27" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr id="data5" runat="server">
                            <td class="auto-style119">
                                <asp:Label ID="Label36" runat="server" Font-Bold="True" ForeColor="#144878" Text="Doctor:"></asp:Label>
                            </td>
                            <td class="auto-style122">
                                <asp:TextBox ID="TextBox28" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr id="data6" runat="server">
                            <td class="auto-style119">
                                <asp:Label ID="Label37" runat="server" Font-Bold="True" ForeColor="#144878" Text="Room Number:"></asp:Label>
                            </td>
                            <td class="auto-style122">
                                <asp:TextBox ID="TextBox29" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr id="data7" runat="server">
                            <td class="auto-style87">
                                <asp:Label ID="Label34" runat="server" Font-Bold="True" ForeColor="#144878" Text="Status: "></asp:Label>
                            </td>
                            <td class="auto-style122">
                                <asp:TextBox ID="TextBox26" runat="server" BorderStyle="Solid" CssClass="textbox" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr id="data8" runat="server">
                            <td class="auto-style119">
                                <asp:Button ID="Button12" runat="server" BorderStyle="None" CommandName="Clear" CssClass="buttonzoom" OnCommand="ViewAppointment_buttons" Text="Clear" Width="150px" />
                            </td>
                            <td class="auto-style122">
                                <asp:Button ID="Button11" runat="server" BorderStyle="None" CommandName="Cancel" CssClass="buttonzoom" OnCommand="ViewAppointment_buttons" Text="Cancel Appointment" Width="368px" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

</asp:Content>
