<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ReportAnimalTesting.aspx.cs" Inherits="Alternatives_to_animal_testing2.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Use your computer mouse to help the lab mouse!</h2><img src="images/mouse.png" />
    <h2>Report unethical animal testing</h2>
    
    <formview id="Form1" method="post" runat="server" EncType="multipart/form-data" action="ReportAnimalTesting.aspx">

        <span>Select the file to upload to the server:</span><INPUT id="oFile" type="file" runat="server" name="oFile" />

        <asp:Button ID="btnUpload" type="submit" Text="Upload" runat="server" OnClick="btnUpload_Click"></asp:button>

        <asp:Panel ID="frmConfirmation" Visible="False" Runat="server">
            <asp:Label ID="lblUploadResult" Runat="server"></asp:Label>
        </asp:Panel>

    </formview>

</asp:Content>
