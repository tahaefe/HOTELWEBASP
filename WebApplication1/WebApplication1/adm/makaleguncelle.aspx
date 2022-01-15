<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin1.Master" AutoEventWireup="true" CodeBehind="makaleguncelle.aspx.cs" Inherits="WebApplication1.adm.tekliflerguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 175px;
        }
        .auto-style3 {
            width: 150px;
            height: 25px;
            border: 1px dotted darksalmon;
            margin-left: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="text-align: right; background-color: #FF9933">
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td style="text-align: left">MAKALE GÜNCELLEME</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Başlık:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TB_mkgbaslik" runat="server" CssClass="auto-style3" Width="470px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Özet:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TB_mkgozet" runat="server" CssClass="textboxGorsel" Height="100px" TextMode="MultiLine" Width="470px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">İçerik:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TB_mkgicerik" runat="server" CssClass="textboxGorsel" Height="200px" TextMode="MultiLine" Width="470px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Resim:</td>
            <td style="text-align: left">
                <asp:FileUpload ID="FU_mkgresim" runat="server" CssClass="textboxGorsel" Width="470px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Makale ID:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TB_mkgyorums" runat="server" CssClass="textboxGorsel" Width="470px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="mkguncelle" runat="server" CssClass="butonGorsel" OnClick="mkguncelle_Click" Text="Guncelle" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td style="text-align: left">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
