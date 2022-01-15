<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin1.Master" AutoEventWireup="true" CodeBehind="slayderguncelle.aspx.cs" Inherits="WebApplication1.adm.slayderguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 235px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #FF9933">
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;SLAYDER GÜNCELLEME</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Başlık:</td>
            <td>
                <asp:TextBox ID="TB_ktdadi" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Sırası:</td>
            <td>
                <asp:TextBox ID="TB_ktdsira" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Alt Yazı:</td>
            <td>
                <asp:TextBox ID="TB_ktdadet" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Resmi:</td>
            <td>
                <asp:FileUpload ID="FU_ktdresim" runat="server" CssClass="textboxGorsel" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="BTN_kGuncelle" runat="server" CssClass="butonGorsel" OnClick="Button1_Click" Text="Güncelle" Width="80px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
