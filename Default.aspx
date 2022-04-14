<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ogrenci_Not_Sistemi.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-hover">
  <thead class="table-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">AD</th>
      <th scope="col">SOYAD</th>
      <th scope="col">TELEFON</th>
      <th scope="col">MAİL</th>
      <th scope="col">ŞİFRE</th>
      <th scope="col">İŞLEMLER</th>
    </tr>
  </thead>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate>
              <tr>
                  <td><%#Eval("OGRID") %></td>
                  <td><%#Eval("OGRAD") %></td>
                  <td><%#Eval("OGRSOYAD") %></td>
                  <td><%#Eval("OGRTELEFON") %></td>
                  <td><%#Eval("OGRMAIL") %></td>
                  <td><%#Eval("OGRSIFRE") %></td>
                   <td>
                       <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/OgrenciSil.aspx?OGRID="+Eval("OGRID")%>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                       <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+Eval("OGRID")%>' runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                   </td>
              </tr>
          </ItemTemplate>
      </asp:Repeater>
  </tbody>
</table>
</asp:Content>
<%--<th scope="row">1</th>--%>