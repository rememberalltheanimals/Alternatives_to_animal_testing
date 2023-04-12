<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Universities.aspx.cs" Inherits="Alternatives_to_animal_testing2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Collaborate among departments to develop alternatives to animal testing in curriculum and in researches</h2>
    
    <section class="left-column">
        <asp:GridView ID="YearOfSchoolGV" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="YearOfSchoolTable">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Name" HeaderText="Member Name" />
                <asp:BoundField DataField="WhatYearInProgram" HeaderText="Degree" />
                <asp:BoundField DataField="Occupation" HeaderText="Role" />
                <asp:BoundField DataField="Description" HeaderText="Public or Private" />
            </Columns>
        </asp:GridView>

        <h2>Selected Year Of School</h2>
        <p>
         <asp:DetailsView ID="SelectedYearOfSchoolDV" runat="server" Height="50px" Width="353px" AutoGenerateRows="False" DataSourceID="SelectedYearOfSchool">
            <Fields>
                <asp:BoundField DataField="Name" HeaderText="Member Name" />
                <asp:BoundField DataField="Description" HeaderText="Public or Private" />
            </Fields>
         </asp:DetailsView>
        </p>

        <br />
        <br />
        <h2>Year Of School Table Interactions</h2>
        <p>
            <asp:FormView ID="YearOfSchoolFV" runat="server" DataKeyNames="Id" DataSourceID="YearOfSchoolTable"></asp:FormView>
                
        </p>

    </section>

    <asp:SqlDataSource ID="YearOfSchoolTable" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UserAccountCS %>" DeleteCommand="DELETE FROM [YearOfSchool] WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Major] = @original_Major) OR ([Major] IS NULL AND @original_Major IS NULL)) AND (([WhatYearInProgram] = @original_WhatYearInProgram) OR ([WhatYearInProgram] IS NULL AND @original_WhatYearInProgram IS NULL)) AND (([Occupation] = @original_Occupation) OR ([Occupation] IS NULL AND @original_Occupation IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [YearOfSchool] ([Name], [Major], [WhatYearInProgram], [Occupation], [Description]) VALUES (@Name, @Major, @WhatYearInProgram, @Occupation, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [YearOfSchool]" UpdateCommand="UPDATE [YearOfSchool] SET [Name] = @Name, [Major] = @Major, [WhatYearInProgram] = @WhatYearInProgram, [Occupation] = @Occupation, [Description] = @Description WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Major] = @original_Major) OR ([Major] IS NULL AND @original_Major IS NULL)) AND (([WhatYearInProgram] = @original_WhatYearInProgram) OR ([WhatYearInProgram] IS NULL AND @original_WhatYearInProgram IS NULL)) AND (([Occupation] = @original_Occupation) OR ([Occupation] IS NULL AND @original_Occupation IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Major" Type="String" />
            <asp:Parameter Name="original_WhatYearInProgram" Type="Int32" />
            <asp:Parameter Name="original_Occupation" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Major" Type="String" />
            <asp:Parameter Name="WhatYearInProgram" Type="Int32" />
            <asp:Parameter Name="Occupation" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Major" Type="String" />
            <asp:Parameter Name="WhatYearInProgram" Type="Int32" />
            <asp:Parameter Name="Occupation" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Major" Type="String" />
            <asp:Parameter Name="original_WhatYearInProgram" Type="Int32" />
            <asp:Parameter Name="original_Occupation" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SelectedYearOfSchool" runat="server" ConnectionString="<%$ ConnectionStrings:UserAccountCS %>" SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="YearOfSchoolGV" Name="Id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>
