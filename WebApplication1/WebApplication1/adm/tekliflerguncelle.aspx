<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin1.Master" AutoEventWireup="true" CodeBehind="tekliflerguncelle.aspx.cs" Inherits="WebApplication1.adm.tekliflerguncelle1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 205px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table class="auto-style1" style=" background-color: #FF9933">
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>TEKLİFLER GÜNCELLEME</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">ID:</td>
                    <td>
                        <asp:TextBox ID="TBmakaleID" runat="server" CssClass="textboxGorsel" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Başlık:</td>
                    <td>
                        <asp:TextBox ID="TB_makbaslik" runat="server" CssClass="textboxGorsel" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Liste:</td>
                    <td>
                        <asp:TextBox ID="TB_makozet" runat="server" CssClass="textboxGorsel" Height="50px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Resim</td>
                    <td>
                        <asp:FileUpload ID="FU_Teklifd" runat="server" CssClass="textboxGorsel" Width="400px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="BTN_makekle" runat="server" CssClass="butonGorsel" OnClick="BTN_tklfedit_Click" Text="Ekle" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
</asp:Content>
