<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="YearsInProgram.aspx.cs" Inherits="Alternatives_to_animal_testing2.YearsInProgram" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="left-column">
        <asp:GridView ID="YearOfSchoolGV" runat="server" AutoGenerateColumns="False" DataSourceID="YearOfSchool" DataKeyNames="Id">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>

                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                <asp:BoundField DataField="FirstYearInProgram" HeaderText="FirstYearInProgram" SortExpression="FirstYearInProgram" />
                <asp:BoundField DataField="SecondYearInProgram" HeaderText="SecondYearInProgram" SortExpression="SecondYearInProgram" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            </Columns>
        </asp:GridView>

        <h2>Selected Student</h2>
        <p>
        <asp:DetailsView ID="SelectedStudentDV" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="SelectedStudents">
            <Fields>
                <asp:BoundField DataField="Name" HeaderText="Student Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" />
            </Fields>
        </asp:DetailsView>
        </p>

        <br />
        <br />
        <h2>Year Of School Table Interactions</h2>
        <p>
            <asp:FormView ID="YearOfSchoolFV" runat="server" DataSourceID="YearOfSchool" DataKeyNames="Id">
                <EditItemTemplate>
                    Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /><br />
                    Name:
                    <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /><br />
                    Degree:
                    <asp:TextBox Text='<%# Bind("Degree") %>' runat="server" ID="DegreeTextBox" /><br />
                    FirstYearInProgram:
                    <asp:TextBox Text='<%# Bind("FirstYearInProgram") %>' runat="server" ID="FirstYearInProgramTextBox" /><br />
                    SecondYearInProgram:
                    <asp:TextBox Text='<%# Bind("SecondYearInProgram") %>' runat="server" ID="SecondYearInProgramTextBox" /><br />
                    Description:
                    <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Name:
                    <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /><br />
                    Degree:
                    <asp:TextBox Text='<%# Bind("Degree") %>' runat="server" ID="DegreeTextBox" /><br />
                    FirstYearInProgram:
                    <asp:TextBox Text='<%# Bind("FirstYearInProgram") %>' runat="server" ID="FirstYearInProgramTextBox" /><br />
                    SecondYearInProgram:
                    <asp:TextBox Text='<%# Bind("SecondYearInProgram") %>' runat="server" ID="SecondYearInProgramTextBox" /><br />
                    Description:
                    <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                    Name:
                    <asp:Label Text='<%# Bind("Name") %>' runat="server" ID="NameLabel" /><br />
                    Degree:
                    <asp:Label Text='<%# Bind("Degree") %>' runat="server" ID="DegreeLabel" /><br />
                    FirstYearInProgram:
                    <asp:Label Text='<%# Bind("FirstYearInProgram") %>' runat="server" ID="FirstYearInProgramLabel" /><br />
                    SecondYearInProgram:
                    <asp:Label Text='<%# Bind("SecondYearInProgram") %>' runat="server" ID="SecondYearInProgramLabel" /><br />
                    Description:
                    <asp:Label Text='<%# Bind("Description") %>' runat="server" ID="DescriptionLabel" /><br />
                    <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
        </p>
        
    </section>
    
    <asp:SqlDataSource ID="YearOfSchool" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UserAccountCS %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Degree] = @original_Degree) OR ([Degree] IS NULL AND @original_Degree IS NULL)) AND (([FirstYearInProgram] = @original_FirstYearInProgram) OR ([FirstYearInProgram] IS NULL AND @original_FirstYearInProgram IS NULL)) AND (([SecondYearInProgram] = @original_SecondYearInProgram) OR ([SecondYearInProgram] IS NULL AND @original_SecondYearInProgram IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [Table] ([Name], [Degree], [FirstYearInProgram], [SecondYearInProgram], [Description]) VALUES (@Name, @Degree, @FirstYearInProgram, @SecondYearInProgram, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Name] = @Name, [Degree] = @Degree, [FirstYearInProgram] = @FirstYearInProgram, [SecondYearInProgram] = @SecondYearInProgram, [Description] = @Description WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Degree] = @original_Degree) OR ([Degree] IS NULL AND @original_Degree IS NULL)) AND (([FirstYearInProgram] = @original_FirstYearInProgram) OR ([FirstYearInProgram] IS NULL AND @original_FirstYearInProgram IS NULL)) AND (([SecondYearInProgram] = @original_SecondYearInProgram) OR ([SecondYearInProgram] IS NULL AND @original_SecondYearInProgram IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Degree" Type="String" />
            <asp:Parameter Name="original_FirstYearInProgram" Type="String" />
            <asp:Parameter Name="original_SecondYearInProgram" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Degree" Type="String" />
            <asp:Parameter Name="FirstYearInProgram" Type="String" />
            <asp:Parameter Name="SecondYearInProgram" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Degree" Type="String" />
            <asp:Parameter Name="FirstYearInProgram" Type="String" />
            <asp:Parameter Name="SecondYearInProgram" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Degree" Type="String" />
            <asp:Parameter Name="original_FirstYearInProgram" Type="String" />
            <asp:Parameter Name="original_SecondYearInProgram" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SelectedStudents" runat="server" ConnectionString="<%$ ConnectionStrings:UserAccountCS %>" SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="YearOfSchoolGV" Name="Id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
