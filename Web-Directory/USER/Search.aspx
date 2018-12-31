<%@ Page Title="" Language="VB" MasterPageFile="~/USER/Design.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="USER_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
     	
                	
                <asp:DataList ID="DataList1" runat="server"  RepeatColumns="3" RepeatLayout="Table" RepeatDirection ="Vertical">
                     <ItemTemplate>
                       <div class="feature-box">
                    	<div class="feature-boxes-container col-sm-4 col-md-4" >                     	
                          <table class="table">
                            <tr>
                              <td colspan="2"><asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("Image")%>' height="220px" width="290px" /> </td>
                            </tr> 
                            <tr>
                                <th colspan="2"><b><%# Eval("Title")%></b></th>
                            </tr>
                            <tr>
                                 <td>Website:</td>
                                 <td><%# Eval("Url")%></td>
                            </tr>
                            <tr>
                                 <td>Address:</td>
                                 <td> <%# Eval("Address")%></td>
                             </tr>
                             <tr>
                                  <td>Pincode:</td> 
                                  <td><%# Eval("Pincode")%></td>   
                             </tr>
                             <tr>
                                  <td>Contact No:</td>                               
                                  <td><%# Eval("Contact_No")%></td>                               
                             </tr>
                              <tr>
                                   <td>Email:</td>                                                                           
                                   <td><%# Eval("Email_id")%></td>                                                                              
                              </tr>
                              <tr>
                                   <td>Description:</td>                                    
                                   <td colspan="2"><%# Eval("Short_Descr")%> </td>
                              </tr> 
                                                              
                          </table>
                         </div> 
                        </div>
                        
                       </div> 
    </ItemTemplate>
    <SeparatorTemplate ><hr /></SeparatorTemplate>
    </asp:DataList>
    
    </div> </div> </div> </div> 
    
</asp:Content>


