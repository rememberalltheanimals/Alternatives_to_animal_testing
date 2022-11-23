<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Alternatives_to_animal_testing2.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="pnlNotAuth" runat="server">
        <h2>You are not logged in.</h2>
        <a href="UserAccount.aspx">Create a new account</a>
    </asp:Panel>

    <asp:Panel ID="pnlUserProfile" runat="server">
        <h2>Welcome! <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label></h2>

        <span>Username: </span><asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>
    </asp:Panel>
</asp:Content>
