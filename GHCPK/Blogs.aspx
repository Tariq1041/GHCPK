<%@ Page Title="" Language="C#" MasterPageFile="~/Front_Master.master" AutoEventWireup="true" CodeFile="Blogs.aspx.cs" Inherits="Blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 33px; WIDTH: 746px; POSITION: absolute; TOP: 37px; HEIGHT: 310px"
				cellSpacing="1" cellPadding="1" border="1">
				<TR>
					<TD style="WIDTH: 171px; HEIGHT: 246px">
						<P><FONT face="Rockwell" color="#9966cc" size="7">&nbsp;Post&nbsp;</FONT><FONT size="7"><FONT face="Rockwell" color="#9966cc">a</FONT></FONT></P>
                        <P>&nbsp;</P>
                        <P><FONT face="Rockwell" color="#9966cc" size="7">&nbsp;Blog:</FONT></P>
					</TD>
					<TD style="HEIGHT: 246px">
						<asp:TextBox id="txtBlog" runat="server" Height="229px" Width="559px" 
                            TextMode="MultiLine"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 171px; HEIGHT: 25px" align="right"><STRONG>Name:</STRONG></TD>
					<TD style="HEIGHT: 25px">
						<asp:TextBox id="txtName" runat="server" Width="421px"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 171px; HEIGHT: 28px" align="right"><STRONG>Blog Title:</STRONG></TD>
					<TD style="HEIGHT: 28px">
						<asp:TextBox id="txtTitle" runat="server" Width="426px"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 171px; HEIGHT: 28px" align="right"><STRONG>Country:</STRONG></TD>
					<TD style="HEIGHT: 28px">
						<asp:TextBox id="Txtcountry" runat="server" Width="426px"></asp:TextBox></TD>
				</TR>
			    <tr>
					<TD style="WIDTH: 171px"></TD>
					<TD>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                            ImageUrl="~/images/Save_Button.jpg" onclick="ImageButton1_Click" 
                            Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" 
                            ImageUrl="~/images/cancel.gif" onclick="ImageButton2_Click" Width="100px" />
                        &nbsp;
						<asp:HyperLink id="BlogLink" runat="server" Height="22px" Width="96px" NavigateUrl="BlogList.aspx">Back to Blog</asp:HyperLink></TD>
				</tr>
			</TABLE>
			<asp:ValidationSummary id="ValidationSummary1" style="Z-INDEX: 102; LEFT: 320px; POSITION: absolute; TOP: 421px"
				runat="server"></asp:ValidationSummary>
			<asp:RequiredFieldValidator id="RequiredFieldValidator3" style="Z-INDEX: 103; LEFT: 600px; POSITION: absolute; TOP: 424px"
				runat="server" ErrorMessage="Please fill in a blog." ControlToValidate="txtBlog" Display="None"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 104; LEFT: 647px; POSITION: absolute; TOP: 466px"
				runat="server" ErrorMessage="Please fill in your name." ControlToValidate="txtName" Display="None"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 105; LEFT: 660px; POSITION: absolute; TOP: 398px"
				runat="server" ErrorMessage="Please fill in a title." ControlToValidate="txtTitle" Display="None"></asp:RequiredFieldValidator>
		</form>
	

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

