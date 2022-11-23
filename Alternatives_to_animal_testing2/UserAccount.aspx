<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserAccount.aspx.cs" Inherits="Alternatives_to_animal_testing2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section id="userInfo" class="column-left">
   <h2>User Account Information</h2>
    <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblLastname" runat="server" Text="Last Name:"></asp:Label>
    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblUserName" runat="server" Text="User Name:"></asp:Label>
    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Label ID="lblConfirmPass" runat="server" Text="Confirm Password:"></asp:Label>
    <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Label ID="lblPhone" runat="server" Text="Phone Number:"></asp:Label>
    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Missing Username" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Missing Password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="cvConfirmPass" runat="server" ErrorMessage="Passwords do not match" ControlToValidate="txtConfirmPass" ControlToCompare="txtPassword"></asp:CompareValidator>
    <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="Invalid Phone number" ControlToValidate="txtPhone" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
   </section>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="UserAccountTable" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:UserAccountCS %>' DeleteCommand="DELETE FROM [UserAccount] WHERE [Id] = @original_Id AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND [Username] = @original_Username AND [Password] = @original_Password AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))" InsertCommand="INSERT INTO [UserAccount] ([FirstName], [LastName], [Username], [Password], [Phone], [Email]) VALUES (@FirstName, @LastName, @Username, @Password, @Phone, @Email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [UserAccount]" UpdateCommand="UPDATE [UserAccount] SET [FirstName] = @FirstName, [LastName] = @LastName, [Username] = @Username, [Password] = @Password, [Phone] = @Phone, [Email] = @Email WHERE [Id] = @original_Id AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND [Username] = @original_Username AND [Password] = @original_Password AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_UserName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Phone" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="Phone" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="Phone" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_UserName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Phone" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
