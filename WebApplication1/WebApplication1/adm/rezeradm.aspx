<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin1.Master" AutoEventWireup="true" CodeBehind="rezeradm.aspx.cs" Inherits="WebApplication1.adm.rezeradm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Panel ID="pnl_mkduzenle" runat="server" BackColor="#FF9933">
            <asp:DataList ID="ddl_makaled" runat="server" DataSourceID="dsREZ" Width="670px">
                <HeaderTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>REZERVASYON TALEBLERİ</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    RezAd:
                    <asp:Label ID="RezAdLabel" runat="server" Text='<%# Eval("RezAd") %>' />
                    <br />
                    RezSoyad:
                    <asp:Label ID="RezSoyadLabel" runat="server" Text='<%# Eval("RezSoyad") %>' />
                    <br />
                    RezIn:
                    <asp:Label ID="RezInLabel" runat="server" Text='<%# Eval("RezIn") %>' />
                    <br />
                    RezOut:
                    <asp:Label ID="RezOutLabel" runat="server" Text='<%# Eval("RezOut") %>' />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="dsREZ" runat="server" ConnectionString="<%$ ConnectionStrings:webDBConnectionString %>" SelectCommand="SELECT [RezAd], [RezSoyad], [RezIn], [RezOut] FROM [Rezervasyon]"></asp:SqlDataSource>
        </asp:Panel>
    
    </div>
</asp:Content>
