<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AppointmentPage.aspx.cs" Inherits="Group4_A55_IT114.AppointmentPage" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style26 {
            width: 100%;
            height: 367px;
        }
        .auto-style124 {
            width: 100%;
            color: #FFFFFF;
        }
        .auto-style126 {
            width: 427px;
        }
        .auto-style127 {
            width: 520px;
        }
        .auto-style130 {
            width: 1126px;
        }
        .auto-style131 {
            text-align: center;
        }
        </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <div class="appointmentimage">
        <table class="auto-style26" align="center">
             <tr>
                 <td>
                     <h1 class="auto-style124">APPOINTMENT REQUEST</h1>
                     <p class="auto-style124"><strong>Requesting and viewing appointments made easy with Malayan Medical Center.</strong></p>
                 </td>
             </tr>
         </table>
    </div>
    <div>

        <table class="auto-style130" align="center">
            <tr>
                <td class="auto-style126">
                    <div class="border_apphome">

                        <p class="auto-style131">

                        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Images/Images for AppointmentPage/AppointNew.png" Width="100px" />

                        </p>
                        <p class="auto-style131">
                            Request a new appointment here.</p>
                        <p class="auto-style131">

                        <br />
                        <asp:Button ID="btnCreateApp" runat="server" CssClass="buttonzoom" Text="Create New Appointment" Width="250px" OnClick="btnCreateApp_Click" BorderStyle="None" />

                        </p>

                    </div>
                </td>
                <td class="auto-style127">
                    <div class="border_apphome">

                        <p class="auto-style131">

                        <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/Images/Images for AppointmentPage/AppointView.png" Width="100px" />

                        </p>
                        <p class="auto-style131">
                            View and cancel your appointment here.</p>
                        <p class="auto-style131">

                        <br />
                        <asp:Button ID="btnViewApp0" runat="server" CssClass="buttonzoom" Text="Manage Appointment" Width="250px" OnClick="btnViewApp_Click" BorderStyle="None" />

                        </p>

                    </div>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
