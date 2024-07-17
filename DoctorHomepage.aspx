<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMasterPage.Master" AutoEventWireup="true" CodeBehind="DoctorHomepage.aspx.cs" Inherits="Group4_A55_IT114.WebForm3" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style115 {
            height: 190px;
            width: 1057px;
        }
        .auto-style116 {
            width: 726px;
        }
        .auto-style117 {
            text-align: center;
        }
        .auto-style119 {
            width: 320px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>

        <table class="auto-style116" align="center">
            <tr>
                <td class="auto-style119">
                    <div class="border_fordocadminhome">

                        <p class="auto-style117">

                        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Images/Images for DoctorHome/AppointmentManage.png" Width="100px" />

                        </p>
                        <p class="auto-style117">
                            Manage appointment status.</p>
                        <p class="auto-style117">
                            &nbsp;<br />
                        <asp:Button ID="btnManageGo" runat="server" CssClass="buttonzoom" Text="Manage Appointment" Width="250px" OnClick="btnManageGo_Click" BorderStyle="None" />

                        </p>

                    </div>
                </td>
                <td class="auto-style119">
                    <div class="border_fordocadminhome">

                        <p class="auto-style117">

                        <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/Images/Images for DoctorHome/AppointmentManage.png" Width="100px" />

                        </p>
                        <p class="auto-style117">
                            View appointment list and patient details.</p>
                        <p class="auto-style117">

                        <br />
                        <asp:Button ID="btnListGo" runat="server" CssClass="buttonzoom" Text="View" Width="150px" OnClick="btnListGo_Click" BorderStyle="None" />

                        </p>

                    </div>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
