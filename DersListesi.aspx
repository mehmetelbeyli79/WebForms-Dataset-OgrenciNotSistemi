<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="Ogrenci_Not_Sistemi.DersListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="Form1" runat="server">
        <table class="table table-hover">
          <thead class="table-dark">
            <tr>
              <th scope="col">DERS ID</th>
              <th scope="col">DERS ADI</th>
              <th scope="col">İŞLEMLER</th>
            </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
                  <ItemTemplate>
                      <tr>
                          <td><%#Eval("DERSID") %></td>
                          <td><%#Eval("DERSAD") %></td>
                           <td>
                               <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"DersSil.aspx?DERSID=" + Eval("DERSID") %>'  runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                               <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"DersGuncelle.aspx?DERSID=" + Eval("DERSID") %>'  runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                           </td>
                      </tr>
                  </ItemTemplate>
              </asp:Repeater>
          </tbody>
        </table>
         <asp:HyperLink runat="server" cssClass="btn btn-info" NavigateUrl="~/DersEkle.aspx">Ders Ekle</asp:HyperLink>
   
     </form>
</asp:Content>
