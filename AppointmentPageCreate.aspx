<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AppointmentPageCreate.aspx.cs" Inherits="Group4_A55_IT114.WebForm5" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style26 {
            width: 100%;
            height: 367px;
        }
        .auto-style63 {
            width: 100%;
        }
        .auto-style68 {
            height: 73px;
        }
        .auto-style96 {
            width: 307px;
            height: 73px;
        }
        .auto-style116 {
        color: white;
        text-align: left;
    }
        .auto-style117 {
            width: 307px;
            height: 95px;
        }
        .auto-style118 {
            height: 95px;
        }
        .auto-style119 {
            text-align: center;
        }
        .auto-style120 {
            width: 307px;
        }
        .auto-style121 {
            width: 307px;
            height: 78px;
        }
        .auto-style122 {
            height: 78px;
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
        <h1 class="border_header">Create New Appointment</h1>
        <div>

            <table class="auto-style63">
                <tr>
                    <td>
                        <asp:Label ID="Label42" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#144878" Text="Instructions: Take a screenshot of your appointment ID after you're done filling the necessary fields out."></asp:Label>
                    </td>
                </tr>
            </table>

            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <table class="auto-style63">
                        <tr>
                            <td class="auto-style96">
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#144878" Text="Last Name : "></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" EnableClientScript="False" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="val2"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style68" colspan="3">
                                <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" CssClass="textbox" Height="25px" Width="280px"></asp:TextBox>
                            </td>
                        </tr>
                <tr>
                    <td class="auto-style120">
                        <asp:Label ID="Label10" runat="server" Text="First Name : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="#CC0000" EnableClientScript="False" ValidationGroup="val2"></asp:RequiredFieldValidator>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" Height="30px" Width="280px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style120">
                        <asp:Label ID="Label11" runat="server" Text="Midde Name : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" Height="30px" Width="280px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style117">
                        <asp:Label ID="Label13" runat="server" Text="Contact Number : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="#CC0000" EnableClientScript="False" ValidationGroup="val2"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="Label41" runat="server" Font-Bold="False" Font-Italic="True" ForeColor="#144878" Text="(e.g. +63xxxxxxxxxx)"></asp:Label>
                        <br />
                    </td>
                    <td colspan="3" class="auto-style118">
                        <asp:TextBox ID="TextBox8" runat="server" BorderStyle="Solid" Height="30px" Width="150px" CssClass="textbox" MaxLength="13" TextMode="Phone"></asp:TextBox>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox8" ErrorMessage="Invalid Contact Number" ForeColor="Red" ValidationExpression="((^(\+)(\d){12}$)|(^\d{11}$))" ValidationGroup="val2"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style120">
                        <asp:Label ID="Label14" runat="server" Text="Address : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="#CC0000" EnableClientScript="False" ValidationGroup="val2"></asp:RequiredFieldValidator>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox9" runat="server" BorderStyle="Solid" Height="90px" MaxLength="100" TextMode="MultiLine" Width="300px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style120">
                        <asp:Label ID="Label15" runat="server" Text="Email (optional) : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox10" runat="server" BorderStyle="Solid" Height="30px" Width="280px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style120">
                        <asp:Label ID="Label16" runat="server" Text="Reason for visit/appointment : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox11" ErrorMessage="*" ForeColor="#CC0000" EnableClientScript="False" ValidationGroup="val2"></asp:RequiredFieldValidator>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox11" runat="server" BorderStyle="Solid" Height="90px" MaxLength="1000" TextMode="MultiLine" Width="300px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                        <tr>
                            <td class="auto-style121">
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#144878" Text="Doctor Specialization : "></asp:Label>
                            </td>
                            <td colspan="3" class="auto-style122">
                                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" CssClass="textbox" Height="30px" DataTextField="specialization" DataValueField="specialization" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr runat="server" id="specsection">
                            <td  colspan="4" class="auto-style119">
                                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" CellPadding="4" CssClass="doclist" ForeColor="#144878" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#144878" Font-Bold="True" ForeColor="White" />
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
                        <tr runat="server" id="docsection">
                    <td class="auto-style120">
                        <asp:Label ID="Label17" runat="server" Text="Choose Doctor : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="300px"  DataTextField="doctorName" DataValueField="doctorID" CssClass="textbox" AutoPostBack="True" Height="30px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                        <tr runat="server" id="datesection"> 
                            <td class="auto-style120">
                                <asp:Label ID="Label40" runat="server" Font-Bold="True" ForeColor="#144878" Text="Date: "></asp:Label>
                            </td>
                            <td colspan="3">
                                <asp:Calendar runat="server" AutoPostBack="True" BackColor="#5eb2ff" BorderColor="#082d4f" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Arial" Font-Size="8pt" ForeColor="#144878" Height="16px" Width="130px" ID="Calendar1" PrevMonthText="" ShowNextPrevMonth="True" OnDayRender="Calendar1_DayRender">
                                    <DayHeaderStyle BackColor="#144878" ForeColor="White" Height="1px" />
                                    <DayStyle BackColor="#7BB6ED" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                                    <OtherMonthDayStyle ForeColor="#144878" />
                                    <SelectedDayStyle BackColor="#116DC2" Font-Bold="True" ForeColor="#144878" />
                                    <SelectorStyle BackColor="#4f95d6" ForeColor="#144878" />
                                    <TitleStyle BackColor="#082d4f" BorderColor="#144878" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="White" Height="25px" />
                                    <TodayDayStyle BackColor="#5aa6ed" ForeColor="#144878" />
                                    <WeekendDayStyle BackColor="#7bb6ed" />
                                </asp:Calendar>
                            </td>
                        </tr>
                <tr runat="server" id="timesection">
                    <td class="auto-style120">
                        <asp:Label ID="Label18" runat="server" Text="Select Time Slot : " Font-Bold="True" ForeColor="#144878"></asp:Label>
                    </td>
                    <td colspan="3">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr runat="server" id="submitsection">
                    <td class="auto-style119" colspan="2">
                        &nbsp;</td>
                    <td class="text1">
                        <asp:Button ID="Button4" runat="server" BorderStyle="None" CommandName="Submit" CssClass="buttonzoom" OnCommand="CreateNewAppointment" Text="Set Appointment" ValidationGroup="val2" Width="200px" />
                    </td>
                    <td class="text1">
                        <asp:Button ID="Button3" runat="server" BorderStyle="None" CausesValidation="False" CommandName="Clear" CssClass="buttonzoom" OnCommand="CreateNewAppointment" Text="Clear" Width="150px" />
                    </td>
                </tr>
            </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>

    </div>
</asp:Content>
