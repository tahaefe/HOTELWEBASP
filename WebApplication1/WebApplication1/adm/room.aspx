<%@ Page Title="" Language="C#" MasterPageFile="Admin1.Master" AutoEventWireup="true" CodeBehind="room.aspx.cs" Inherits="WebApplication1.adm.rooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 45px;
        }
        .auto-style4 {
          width: 100%;
      }
      .auto-style5 {
          width: 300px;
      }
      .auto-style6 {
          width: 500px;
      }
      .auto-style7 {
          width: 90px;
      }
      .auto-style8 {
          width: 490px;
      }
      .auto-style9 {
            width: 30px;
            height: 25px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height:25px; background-color:antiquewhite; font-weight:bolder">
            <asp:Button ID="BT_makac" runat="server" BackColor="#990033" Height="25px"  Text="+" Width="25px" OnClick="BT_makac_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BT_makkapa" runat="server" BackColor="#990033" CssClass="auto-style3" Height="25px"  Text="-" Width="25px" OnClick="BT_makkapa_Click" />
            &nbsp;&nbsp;&nbsp; Oda Ekleme Paneli</div>
        <asp:Panel ID="pnl_makekle" runat="server" BackColor="#FF9933">
            <table class="auto-style4" style="text-align: right">
                <tr>
                    <td class="auto-style5" style="text-align: right">&nbsp;</td>
                    <td style="text-align: left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Oda Türü:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TBodaTur" runat="server" CssClass="textboxGorsel" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Oda Fiyatı:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TBodaFiyat" runat="server" CssClass="textboxGorsel" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td style="text-align: left">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Oda Resim:</td>
                    <td style="text-align: left">
                        <asp:FileUpload ID="FU_odaResim" runat="server" CssClass="textboxGorsel" Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td style="text-align: left">
                        <asp:Button ID="BTN_odaekle" runat="server" CssClass="butonGorsel" Text="Ekle" OnClick="BTN_odaekle_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>

        <div style="height:30px;"></div>
            <div style="height:25px; background-color:antiquewhite; font-weight:bolder">
            <asp:Button ID="BTN_mkdac" runat="server" BackColor="#990033" Height="25px"  Text="+" Width="25px" OnClick="BTN_mkdac_Click"  />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BTN_mkdkapa" runat="server" BackColor="#990033" CssClass="auto-style3" Height="25px"  Text="-" Width="25px" OnClick="BTN_mkdkapa_Click" />
&nbsp;&nbsp;&nbsp; Oda Düzenleme Paneli</div>
        <asp:Panel ID="pnl_mkduzenle" runat="server" BackColor="#FF9933">
            <asp:DataList ID="ddl_oda" runat="server">
                <HeaderTemplate>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style8">Oda Adı:</td>
                    <td class="auto-style7">Düzenle</td>
                    <td>Sil</td>
                </tr>
                </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class ="auto-style4">
                <tr>
                    <td class="auto-style8">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("OdaTur") %>'></asp:Literal>
                            </td>
                    <td class="auto-style7">
                        <a href="roomguncelle.aspx?odaID=<%#Eval("odaID") %>"><img alt="" class="auto-style9" src="../img/düzenle.png" /></a>
                    </td>
                    <td >
                        <a href="room.aspx?odaID=<%#Eval("odaID") %>&islem=sil"><img alt="" class="auto-style9" src="../img/sil.png" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
                    </ItemTemplate>
            </asp:DataList>
        </asp:Panel>


        </div>
</asp:Content>

