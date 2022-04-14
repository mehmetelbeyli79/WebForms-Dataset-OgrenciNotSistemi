<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersGuncelle.aspx.cs" Inherits="Ogrenci_Not_Sistemi.DersGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="Form1" runat="server">
        
        
         <div class="form-group">
            <asp:Label for="txtDersGuncelle" runat="server"  Text="Label">DERS AD</asp:Label>
            <asp:TextBox ID="txtDersGuncelle" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         
        <asp:Button ID="dersGuncelle" runat="server" CssClass="btn btn-info" Text="Güncelle" OnClick="dersGuncelle_Click"  />
    </form>
</asp:Content>
