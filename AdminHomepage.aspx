<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminHomepage.aspx.cs" Inherits="Group4_A55_IT114.WebForm10" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style115 {
            height: 190px;
            width: 1057px;
        }
        .auto-style116 {
            width: 1088px;
        }
        .auto-style118 {
            background-image: url('Images/Images%20for%20DoctorAdminPage/DocAdmin.png');
            background-size: cover;
            background-repeat: no-repeat;
            height: 150px;
        }
        .auto-style119 {
            width: 320px;
        }
        .auto-style121 {
            font-family: Arial;
            height: 300px;
            width: 300px;
            border-style: none;
            border-radius: 12px;
            background-color: white;
            margin: 30px auto;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div>

        <table class="auto-style116" align="center">
            <tr>
                <td class="auto-style119">
                    <div class="auto-style121">

                        <p>

                        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Images/Images for AdminHome/AddRecord.png" Width="100px" />

                        </p>
                        <p>
                            Create a new doctor record.</p>
                        <p>

                        <br />
                        <asp:Button ID="btnNewRec" runat="server" CssClass="buttonzoom" Text="ADD" Width="150px" BorderStyle="None" OnClick="btnNewRec_Click" />

                        </p>

                    </div>
                </td>
                <td class="auto-style119">
                    <div class="auto-style121">

                        <p>

                        <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl="~/Images/Images for AdminHome/UpdateRecord.png" Width="100px" />

                        </p>
                        <p>
                            Update data in doctor record.</p>
                        <p>

                        <br />
                        <asp:Button ID="btnUpdateRec" runat="server" CssClass="buttonzoom" Text="UPDATE" Width="150px" BorderStyle="None" OnClick="btnUpdateRec_Click" />

                        </p>

                    </div>
                </td>
                <td class="auto-style119">
                    <div class="auto-style121">

                        <p>

                        <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/Images/Images for AdminHome/ArchiveRecord.png" Width="100px" />

                        </p>
                        <p>
                            Archive doctor record.</p>
                        <p>

                        <br />
                        <asp:Button ID="btnArchiveRec" runat="server" CssClass="buttonzoom" Text="ARCHIVE" Width="150px" BorderStyle="None" OnClick="btnArchiveRec_Click" />

                        </p>

                    </div>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
