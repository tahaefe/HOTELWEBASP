<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin1.Master" AutoEventWireup="true" CodeBehind="videoguncelle.aspx.cs" Inherits="WebApplication1.adm.videoguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 252px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style1" style=" background-color: #FF9933">
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>VIDEO GÜNCELLEME</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Video&nbsp; Başlık:</td>
                    <td>
                        <asp:TextBox ID="TB_ktadi" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Sıra:</td>
                    <td>
                        <asp:TextBox ID="TB_ktsira" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Özet:</td>
                    <td>
                        <asp:TextBox ID="TB_ktadet" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Resmi:</td>
                    <td>
                        <asp:FileUpload ID="FU_ktresim" runat="server" CssClass="textboxGorsel" Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Link</td>
                    <td>
                        <asp:TextBox ID="TB_videolink" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_kategoriEkle" runat="server" CssClass="butonGorsel" OnClick="btn_kategoriEkle_Click" Text="Ekle" />
                    </td>
                </tr>
            </table>
</asp:Content>
