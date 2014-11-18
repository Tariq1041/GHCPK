<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="Blogs_Description.aspx.cs" Inherits="Blogs_Description" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
    <div>
<asp:GridView ID="gvEmployee" runat="server" AutoGenerateColumns="false" ShowFooter="true"
            style="margin-left: 48px" Width="1049px" 
            OnRowCommand="gvEmployee_OnRowCommand"
            onrowcancelingedit="gvEmployee_RowCancelingEdit" 
            onrowdeleting="gvEmployee_RowDeleting" onrowediting="gvEmployee_RowEditing" 
            onrowupdating="gvEmployee_RowUpdating" 
            onpageindexchanging="gvEmployee_PageIndexChanging">
        <Columns>
        
           

          <asp:TemplateField HeaderText="Name" HeaderStyle-Width="100px">
          <EditItemTemplate>
              <asp:TextBox ID="txtName" runat="server" Text='<%#DataBinder.Eval(Container. DataItem,"Name") %>'></asp:TextBox>        
          </EditItemTemplate>
          <ItemTemplate >
              <asp:Label ID="lblName" runat="server" Text='<%#DataBinder.Eval(Container. DataItem,"Name") %>'></asp:Label>
          </ItemTemplate>
          <FooterTemplate>
             <asp:TextBox ID="txtAddName" runat="server"></asp:TextBox>        
          </FooterTemplate>
          </asp:TemplateField>

           <asp:TemplateField HeaderText="Time" HeaderStyle-Width="100px">
          <EditItemTemplate>
              <asp:TextBox ID="txttime" runat="server" Text='<%#DataBinder.Eval(Container. DataItem,"Time") %>'></asp:TextBox>        
          </EditItemTemplate>
          <ItemTemplate >
              <asp:Label ID="lbltime" runat="server" Text='<%#DataBinder.Eval(Container. DataItem,"Time") %>'></asp:Label>
          </ItemTemplate>
          <FooterTemplate>
             <asp:TextBox ID="txtAddtime" runat="server"></asp:TextBox>        
          </FooterTemplate>
          </asp:TemplateField>

           <asp:TemplateField HeaderText="Tittle" HeaderStyle-Width="100px">
          <EditItemTemplate>
              <asp:TextBox ID="txttittle" runat="server" Text='<%#DataBinder.Eval(Container. DataItem,"Title") %>'></asp:TextBox>        
          </EditItemTemplate>
          <ItemTemplate >
              <asp:Label ID="lbltittle" runat="server" Text='<%#DataBinder.Eval(Container. DataItem,"Title") %>'></asp:Label>
          </ItemTemplate>
          <FooterTemplate>
             <asp:TextBox ID="txtAddtittle" runat="server"></asp:TextBox>        
          </FooterTemplate>
          </asp:TemplateField>

         <asp:TemplateField HeaderText="Country" HeaderStyle-Width="200px">
          <EditItemTemplate >
              <asp:TextBox ID="txtCountry" runat="server" Text='<%#DataBinder.Eval(Container. DataItem,"country") %>' TextMode="MultiLine"></asp:TextBox>        
          </EditItemTemplate>
          <ItemTemplate >
              <asp:Label ID="lblCountry" runat="server" Text='<%#DataBinder.Eval(Container. DataItem,"country") %>'></asp:Label>
          </ItemTemplate>
          <FooterTemplate>
             <asp:TextBox ID="txtAddCountry" runat="server"></asp:TextBox>        
          </FooterTemplate>
          </asp:TemplateField>

          <asp:TemplateField HeaderText="Blogs" HeaderStyle-Width="200px">
          <EditItemTemplate >
              <asp:TextBox ID="txtblog" runat="server" Text='<%#DataBinder.Eval(Container. DataItem,"Blog") %>' TextMode="MultiLine"></asp:TextBox>        
          </EditItemTemplate>
          <ItemTemplate >
              <asp:Label ID="lblblog" runat="server" Text='<%#DataBinder.Eval(Container. DataItem,"Blog") %>'></asp:Label>
          </ItemTemplate>
          <FooterTemplate>
             <asp:TextBox ID="txtAddblog" runat="server"></asp:TextBox>        
          </FooterTemplate>
          </asp:TemplateField>

          <asp:TemplateField HeaderText="Action" HeaderStyle-Width="150px">
        <EditItemTemplate>
         <asp:LinkButton ID="lbtnUpdate" CommandName="Update" runat="server">Update</asp:LinkButton>
            <asp:LinkButton ID="lbtnCancel"  CommandName="Cancel" runat="server">Cancel</asp:LinkButton>
        </EditItemTemplate>
        <ItemTemplate>
            <asp:LinkButton ID="lbtnEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
            <asp:LinkButton ID="lbtnDelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
        </ItemTemplate>         
        <FooterTemplate>
         <asp:LinkButton ID="lbtnAdd" runat="server" CommandName="Add">Add</asp:LinkButton>
        </FooterTemplate>
        </asp:TemplateField>         
        </Columns>
            <HeaderStyle BackColor="#666666" Font-Names="Cambria" ForeColor="White" 
                Height="30px" />
            <RowStyle Font-Names="Calibri" />
        </asp:GridView>
    </div>
    </form>
</asp:Content>

