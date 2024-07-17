<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMasterPage.Master" AutoEventWireup="true" CodeBehind="DoctorPageAppointment.aspx.cs" Inherits="Group4_A55_IT114.WebForm4" Theme="Theme1"%>
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
        .auto-style41 {
            width: 75%;
        }
        .auto-style121 {
            text-align: center;
        }
        .auto-style122 {
            height: 92px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
   <div class ="border_page">
       <h1 class="border_header">View Appointment </h1>
       <div>    
           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
               <ContentTemplate>
                   <table class="auto-style41" align="center">
                       <tr>
                           <td class="auto-style44">
                               <asp:Label ID="Label6" runat="server" Text="Search Appointment ID:  " Font-Bold="True" ForeColor="#144878"></asp:Label>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="searchPatient" EnableClientScript="False">*</asp:RequiredFieldValidator>
                           </td>
                           <td class="auto-style144">
                               <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                           </td>
                           <td class="auto-style46">
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style122"></td>
                           <td class="auto-style122">
                               <asp:Button ID="SelectPatient_Button" runat="server" BorderStyle="None" CommandName="Select" CssClass="buttonzoom" OnCommand="ViewAppointment_Button" Text="Select" ValidationGroup="searchPatient" Width="150px" />
                           </td>
                           <td class="auto-style122"></td>
                       </tr>
                       <tr id="data1" runat="server">
                           <td class="auto-style146">
                               <asp:Label ID="Label7" runat="server" Text="Appointment ID: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                           </td>
                           <td class="auto-style145">
                               <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Height="30px" Width="250px" ReadOnly="True" CssClass="textbox"></asp:TextBox>
                           </td>
                           <td class="auto-style40">
                               &nbsp;</td>
                       </tr>
                       <tr id="data2" runat="server">
                           <td class="auto-style146">
                               <asp:Label ID="Label8" runat="server" Text="Patient Name: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                           </td>
                           <td class="auto-style145">
                               <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="30px" Width="250px" ReadOnly="True" CssClass="textbox"></asp:TextBox>
                           </td>
                           <td class="auto-style40">
                               &nbsp;</td>
                       </tr>
                       <tr id="data3" runat="server">
                           <td class="auto-style146">
                               <asp:Label ID="Label26" runat="server" Font-Bold="True" ForeColor="#144878" Text="Reason for Appointment: "></asp:Label>
                           </td>
                           <td class="text1" colspan="2">
                               <asp:TextBox ID="TextBox28" runat="server" BorderStyle="Solid" Height="90px" MaxLength="200" ReadOnly="True" TextMode="MultiLine" Width="300px" CssClass="textbox"></asp:TextBox>
                           </td>
                       </tr>
                       <tr id="data4" runat="server">
                           <td class="auto-style146">
                               <asp:Label ID="Label18" runat="server" Text="Date: " Font-Bold="True" ForeColor="#144878"></asp:Label>
                           </td>
                           <td class="auto-style145">
                               <asp:TextBox ID="TextBox24" runat="server" BorderStyle="Solid" Height="30px" ReadOnly="True" Width="250px" CssClass="textbox"></asp:TextBox>
                           </td>
                           <td class="auto-style40">&nbsp;</td>
                       </tr>
                       <tr id="data5" runat="server">
                           <td class="auto-style146">
                               <asp:Label ID="Label17" runat="server" Font-Bold="True" ForeColor="#144878" Text="Time of Schedule: "></asp:Label>
                           </td>
                           <td class="auto-style145">
                               <asp:TextBox ID="TextBox25" runat="server" BorderStyle="Solid" Height="30px" ReadOnly="True" Width="250px" CssClass="textbox"></asp:TextBox>
                           </td>
                           <td class="auto-style40">&nbsp;</td>
                       </tr>
                       <tr id="data6" runat="server">
                           <td class="auto-style121">
                               <asp:Button ID="Button2" runat="server" BorderStyle="None" CommandName="Approve" CssClass="buttonzoom" OnCommand="ViewAppointment_Button" Text="Approve" Width="150px" />
                           </td>
                           <td class="auto-style121">
                               <asp:Button ID="VA_Clear_Btn" runat="server" BorderStyle="None" CommandName="Complete" CssClass="buttonzoom" OnCommand="ViewAppointment_Button" Text="Complete" Width="150px" />
                           </td>
                           <td class="auto-style121">
                               <asp:Button ID="Button3" runat="server" BorderStyle="None" CommandName="Cancel" CssClass="buttonzoom" OnCommand="ViewAppointment_Button" Text="Cancel" Width="150px" />
                           </td>
                       </tr>
                   </table>
               </ContentTemplate>
           </asp:UpdatePanel>
       </div>
   </div>


    </asp:Content>
