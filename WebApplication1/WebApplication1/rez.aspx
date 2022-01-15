<%@ Page Title="" Language="C#" MasterPageFile="~/anasablon.Master" AutoEventWireup="true" CodeBehind="rez.aspx.cs" Inherits="WebApplication1.rez" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div style="height:200px"></div>
                <div >
                        <div >
                            <h3>Check Availability</h3>
                            
                            
                                <div class="row">
                                    <div class="col-xl-6">
                                        Check IN
                                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                                        
                                        
                                    </div>
                                    <div class="col-xl-6">
                                        Check Out
                                        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                                        
                                        
                                    </div>
                                    <div class="col-xl-6">
                                        <asp:DropDownList ID="DropDownList1" class="form-select wide" runat="server">
                                            <asp:ListItem Value="0">Adult</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </div>
                                    <div class="col-xl-6">
                                        <asp:DropDownList ID="DropDownList2" class="form-select wide" runat="server">
                                            <asp:ListItem Value="0">Children</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </div>
                                    <div class="col-xl-12">
                                        <asp:DropDownList ID="DropDownList3" class="form-select wide" runat="server">
                                            <asp:ListItem>RoomType</asp:ListItem>
                                            <asp:ListItem>Economic Room</asp:ListItem>
                                            <asp:ListItem>Standart Room</asp:ListItem>
                                            <asp:ListItem>Deluxe Room</asp:ListItem>
                                            <asp:ListItem>King Room</asp:ListItem>
                                            </asp:DropDownList>
                                       
                                    </div>
                                    <div class="col-xl-6">
                                            <asp:TextBox ID="chckAd" runat="server" Text="Name"></asp:TextBox>
                                    </div>
                                    <div class="col-xl-6">
                                            <asp:TextBox ID="chckSoyad" runat="server" Text="Surname"></asp:TextBox>
                                    </div>
                                    <div class="col-xl-12">
                                        <asp:Button ID="checkBTN" runat="server" class="boxed-btn3" Text="Check Availability" OnClick="Button1_Click" />
                                        
                                    </div>
                                </div>
                            
                        </div>
                    </div>
            
</asp:Content>
