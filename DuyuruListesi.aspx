<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="Ogrenci_Not_Sistemi.DuyuruListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-hover">
      <thead class="table-dark">
        <tr>
          <th scope="col">ID</th>
          <th scope="col">DUYURU BASLIK</th>
          <th scope="col">DUYURU ICERIK</th>
          <th scope="col">DUYURU OGRT</th>
          <th scope="col">İŞLEMLER</th>
        </tr>
      </thead>
      <tbody>
          <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
                  <tr>
                      <td><%#Eval("DUYURUID") %></td>
                      <td><%#Eval("DUYURUBASLIK") %></td>
                      <td><%#Eval("DUYURUICERIK") %></td>
                      <td><%#Eval("DUYURUOGRT") %></td>
                       <td>
                           <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"DuyuruSil.aspx?DUYURUID=" + Eval("DUYURUID") %>'  runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                           <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"DuyuruGuncelle.aspx?DUYURUID=" + Eval("DUYURUID") %>'  runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                       </td>
                  </tr>
              </ItemTemplate>
          </asp:Repeater>
      </tbody>
</table>
</asp:Content>
<%--NavigateUrl='<%#"~/OgrenciSil.aspx?OGRID="+Eval("OGRID")%>'--%>