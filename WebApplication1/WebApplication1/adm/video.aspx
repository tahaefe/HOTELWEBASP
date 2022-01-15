<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin1.Master" AutoEventWireup="true" CodeBehind="video.aspx.cs" Inherits="WebApplication1.adm.video" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 252px;
        }
        .auto-style3 {
            margin-left: 0;
        }
        .auto-style4 {
            width: 476px;
        }
        .auto-style5 {
            width: 110px;
        }
        .auto-style6 {
            width: 26px;
            height: 18px;
        }
        .auto-style7 {
            width: 25px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height:25px; background-color:antiquewhite; font-weight:bolder">
            <asp:Button ID="BT_ktac" runat="server" BackColor="#990033" Height="25px" OnClick="BT_ktac_Click" Text="+" Width="25px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BT_ktkapa" runat="server" BackColor="#990033" CssClass="auto-style3" Height="25px" OnClick="BT_ktkapa_Click" Text="-" Width="25px" />
            &nbsp;&nbsp;&nbsp;Video Ekleme Paneli</div>
        <asp:Panel ID="pnl_vdekle" runat="server" BackColor="#FF9933">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
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

        </asp:Panel>
        <div style="height:30px;"></div>
       <div style="height:25px; background-color:antiquewhite; font-weight:bolder">
            <asp:Button ID="BT_ktdac" runat="server" BackColor="#990033" Height="25px"  Text="+" Width="25px" OnClick="BT_ktdac_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BT_ktdkapa" runat="server" BackColor="#990033" CssClass="auto-style3" Height="25px"  Text="-" Width="25px" OnClick="BT_ktdkapa_Click" />
            &nbsp;&nbsp;&nbsp; Video Düzenleme Paneli</div>
        <asp:Panel ID="pnl_vdduzenle" runat="server" BackColor="#FF9933">
            <asp:DataList ID="dl_vdgetir" runat="server" Width="700px">
                <HeaderTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">VIDEO ADI</td>
                            <td class="auto-style5">DÜZENLE</td>
                            <td>SİL</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("videoOzet") %>'></asp:Literal>
                            </td>
                            <td class="auto-style5">
                                <a href="videoguncelle.aspx?videoID=<%#Eval("videoID") %>"><img alt="" class="auto-style6" src="../img/düzenle.png" /></a>
                            </td>
                            <td>
                                <a href="video.aspx?videoID=<%#Eval("videoID") %>&islem=sil"><img alt="" class="auto-style7" src="../img/sil.png" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>

        </asp:Panel>
    </div>
</asp:Content>