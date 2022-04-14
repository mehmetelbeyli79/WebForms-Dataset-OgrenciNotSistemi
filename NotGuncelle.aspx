<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="Ogrenci_Not_Sistemi.NotGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <asp:Label for="txtNotDersAdi" runat="server"   Text="Label">Ders Adı</asp:Label>
            <asp:TextBox ID="txtNotDersAdi" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label for="txtNotAdID" runat="server"  Text="Label">Öğrenci ID</asp:Label>
            <asp:TextBox ID="txtNotAdID" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label for="txtNotAdSoyad" runat="server"  Text="Label">Öğrenci ADI SOYADI</asp:Label>
            <asp:TextBox ID="txtNotAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label for="txtNotSinav1" runat="server"  Text="Label">SINAV 1</asp:Label>
            <asp:TextBox ID="txtNotSinav1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label for="txtNotSinav2" runat="server"  Text="Label">SINAV 2</asp:Label>
            <asp:TextBox ID="txtNotSinav2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label for="txtNotSinav3" runat="server"  Text="Label">SINAV 3</asp:Label>
            <asp:TextBox ID="txtNotSinav3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label for="txtNotOrtalama" runat="server"  Text="Label">ORTALAMA</asp:Label>
            <asp:TextBox ID="txtNotOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label for="txtNotDurum" runat="server"  Text="Label">DURUM</asp:Label>
            <asp:TextBox ID="txtNotDurum" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Button ID="ogrNotHesapla" runat="server" CssClass="btn btn-btn-primary" Text="Hesapla" OnClick="ogrNotHesapla_Click"  />
        <asp:Button ID="ogrNotGuncelle" runat="server" CssClass="btn btn-info" Text="Güncelle" OnClick="ogrNotGuncelle_Click"  />
    </form>
</asp:Content>
