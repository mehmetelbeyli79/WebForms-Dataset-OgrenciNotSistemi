<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="Ogrenci_Not_Sistemi.DersEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="Form1" runat="server">
        
        
         <div class="form-group">
            <asp:Label for="txtDersEkle" runat="server"  Text="Label">DERS ADI</asp:Label>
            <asp:TextBox ID="txtDersEkle" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        
        <asp:Button ID="dersEkle" runat="server" CssClass="btn btn-info" Text="Oluştur" OnClick="dersEkle_Click"  />
    </form>
</asp:Content>
