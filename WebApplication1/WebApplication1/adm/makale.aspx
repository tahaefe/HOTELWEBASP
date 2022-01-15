<%@ Page Title="" Language="C#" MasterPageFile="Admin1.Master" AutoEventWireup="true" CodeBehind="makale.aspx.cs" Inherits="WebApplication1.adm.teklifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 205px;
        }
        .auto-style3 {
            width: 45px;
        }
        .auto-style4 {
            width: 473px;
        }
        .auto-style5 {
            width: 108px;
        }
        .auto-style6 {
            width: 29px;
            height: 24px;
        }
        .auto-style7 {
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
            &nbsp;&nbsp;&nbsp; Makale Ekleme Paneli</div>
        <asp:Panel ID="pnl_makekle" runat="server" BackColor="#FF9933">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
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
                    <td class="auto-style2" style="text-align: right">Özet:</td>
                    <td>
                        <asp:TextBox ID="TB_makozet" runat="server" CssClass="textboxGorsel" Height="50px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">İçerik:</td>
                    <td>
                        <asp:TextBox ID="TB_makicerik" runat="server" CssClass="textboxGorsel" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Resim:</td>
                    <td>
                        <asp:FileUpload ID="FU_Slider" runat="server" CssClass="textboxGorsel" Width="400px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="BTN_makekle" runat="server" CssClass="butonGorsel" OnClick="BTN_makekle_Click" Text="Ekle" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <div style="height:30px;"></div>
            <div style="height:25px; background-color:antiquewhite; font-weight:bolder">
            <asp:Button ID="BTN_mkdac" runat="server" BackColor="#990033" Height="25px"  Text="+" Width="25px" OnClick="BTN_mkdac_Click"  />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BTN_mkdkapa" runat="server" BackColor="#990033" CssClass="auto-style3" Height="25px"  Text="-" Width="25px" OnClick="BTN_mkdkapa_Click" />
                &nbsp;&nbsp;&nbsp; Makale Düzenleme Paneli</div>
        <asp:Panel ID="pnl_mkduzenle" runat="server" BackColor="#FF9933">
            <asp:DataList ID="ddl_makaled" runat="server">
                <HeaderTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">Makale Adı:</td>
                            <td class="auto-style5">Düzenle</td>
                            <td>Sil</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Literal>
                            </td>
                            <td class="auto-style5">
                                <a href="makaleguncelle.aspx?makaleID=<%#Eval("makaleID") %>"><img alt="" class="auto-style6" src="../img/düzenle.png" /></a>
                            </td>
                            <td>
                                <a href='makale.aspx?makaleID=<%#Eval("makaleID") %>&amp;islem=sil'><img alt="" class="auto-style7" src="../img/sil.png" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </div>
</asp:Content>