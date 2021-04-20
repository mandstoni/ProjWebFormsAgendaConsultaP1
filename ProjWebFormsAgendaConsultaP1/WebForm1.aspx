<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ProjWebFormsAgendaConsultaP1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Agenda de Consulta</title>
    <style type="text/css">
        .auto-style1 {
            height: 25px;

        }
        .auto-style2 {
            width: 107px;
        }
        .auto-style3 {
            height: 25px;
            width: 107px;
        }
        .auto-style4 {
            width: 107px;
            height: 22px;
        }
        .auto-style5 {
            height: 22px;
            color: cornflowerblue;
            
        }
        .auto-style6 {
            height: 23px;
            width: 107px;
        }
        .auto-style7 {
            height: 23px;
            color:cornflowerblue;
        }
        .auto-style8 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5"><b>AGENDA MÉDICA </b></td>
            </tr>
            <tr>
                <td class="auto-style2">Horario</td>
                <td>
                    <asp:TextBox ID="TxtHorario" runat="server" Width="254px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Data</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TxtData" runat="server" Width="254px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Medico</td>
                <td>
                    <asp:DropDownList ID="cboMedico" runat="server" Width="254px"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Paciente</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="cboPaciente" runat="server" Width="254px"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                    <asp:Label ID="LblMsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnSalvar" runat="server" OnClick="BtnSalvar_Click" Text="Salvar" ForeColor="#33CC33" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style8">
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td >
                    <asp:GridView ID="GVAgenda" runat="server" CellPadding="5" ForeColor="#333333" GridLines="None" Width="319px" HorizontalAlign="Justify"  AutoGenerateColumns="False">
                         <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" />
                            <asp:BoundField DataField="Data" HeaderText="Data" />
                            <asp:BoundField DataField="Hora" HeaderText="Hora" />
                            <asp:BoundField DataField="Paciente.nome" HeaderText="Paciente" />
                            <asp:BoundField DataField="Medico.nome" HeaderText="Medico" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
