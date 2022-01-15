<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin1.Master" AutoEventWireup="true" CodeBehind="roomguncelle.aspx.cs" Inherits="WebApplication1.adm.roomguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .auto-style1 {
          width: 100%;
      }
      .auto-style2 {
          width: 300px;
      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table class="auto-style1" style="text-align: right; background-color: #FF9933"">
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td style="text-align: left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Oda Türü:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TBodadTur" runat="server" CssClass="textboxGorsel" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Oda Fiyatı:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TBodadFiyat" runat="server" CssClass="textboxGorsel" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Oda Durumu:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TBodadDurum" runat="server" CssClass="textboxGorsel" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Oda Resim:</td>
                    <td style="text-align: left">
                        <asp:FileUpload ID="FU_odadResim" runat="server" CssClass="textboxGorsel" Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td style="text-align: left">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td style="text-align: left">
                        <asp:Button ID="BTN_odadekle" runat="server" CssClass="butonGorsel" Text="Güncelle" OnClick="BTN_odaekle_Click" />
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>
