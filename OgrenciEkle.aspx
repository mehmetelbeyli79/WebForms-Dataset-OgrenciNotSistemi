<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="Ogrenci_Not_Sistemi.OgrenciEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="Form1" runat="server">
        
         <div class="form-group">
            <asp:Label for="txtOgrAd" runat="server"  Text="Label">Öğrenci AD</asp:Label>
            <asp:TextBox ID="txtOgrAd" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label for="txtOgrSoyad" runat="server"  Text="Label">Öğrenci SOYAD</asp:Label>
            <asp:TextBox ID="txtOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label for="txtOgrTelefon" runat="server"  Text="Label">TELEFON</asp:Label>
            <asp:TextBox ID="txtOgrTelefon" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label for="txtOgrMail" runat="server"  Text="Label">MAİL</asp:Label>
            <asp:TextBox ID="txtOgrMail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label for="txtOgrFotograf" runat="server"  Text="Label">FOTOĞRAF</asp:Label>
            <asp:TextBox ID="txtOgrFotograf" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label for="txtOgrSifre" runat="server"  Text="Label">ŞİFRE</asp:Label>
            <asp:TextBox ID="txtOgrSifre" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Button ID="ogrKaydet" runat="server" CssClass="btn btn-info" Text="Kaydet" OnClick="ogrKaydet_Click" />
    </form>
</asp:Content>
