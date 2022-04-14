<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="Ogrenci_Not_Sistemi.DuyuruGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="Form1" runat="server">
        
         <div class="form-group">
            <asp:Label for="txtDuyuruId" runat="server"  Text="Label">Öğretmen</asp:Label>
             <asp:TextBox ID="txtDuyuruId" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label for="txtduyuruBaslik" runat="server"  Text="Label">BAŞLIK</asp:Label>
            <asp:TextBox ID="txtduyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label for="txtduyuruIcerik" runat="server"  Text="Label">İÇERİK</asp:Label>
             <textarea id="txtduyuruIcerik" cols="20" rows="6" class="form-control" runat="server"></textarea>
        </div>
        <asp:Button ID="duyuruGuncelle" runat="server" CssClass="btn btn-info" Text="Güncelle" OnClick="duyuruGuncelle_Click" />
    </form>
</asp:Content>
