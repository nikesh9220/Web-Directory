<%@ Page Title="" Language="VB" MasterPageFile="~/USER/HomeMasterPage.master" AutoEventWireup="false" CodeFile="Homepage.aspx.vb" Inherits="USER_Homepage" %>

<%-- Add content controls here --%>




<asp:Content ID="Content6" runat="server" 
    contentplaceholderid="ContentPlaceHolder6">
   
                	
                <asp:DataList ID="DataList1" runat="server"  RepeatColumns="3" RepeatLayout="Table" >
                    <ItemTemplate>
                       <div class="feature-box">
                    	<div class="feature-boxes-container col-sm-4 col-md-4" >                     	
                          <table class="table">
                            <tr>
                              <td colspan="2"><asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("img")%>' height="220px" width="290px" /> </td>
                            </tr> 
                            <tr>
                                <th colspan="2"><b><%# Eval("title")%></b></th>
                            </tr>
                            <tr>
                                <td colspan ="2"><%# Eval("header")%></td>
                            </tr>
                             <tr>
                                 <td>Pesron to contact:</td>
                                 <td> <%# Eval("person")%></td>
                             </tr>
                             <tr>
                                   <td>Email:</td>                                                                           
                                   <td><%# Eval("email")%></td>                                                                              
                              </tr>
                              <tr>
                                 <td>Website:</td>
                                 <td><%# Eval("url")%></td>
                            </tr>
                            <tr>
                                  <td>Contact No:</td>                               
                                  <td><%# Eval("number")%></td>                               
                             </tr>
                            <tr>
                                 <td>Address:</td>
                                 <td> <%# Eval("address")%></td>
                             </tr>                       
                              <tr>
                                   <td>Description:</td>                                    
                                   <td colspan="2"><%# Eval("short")%> </td>
                              </tr> 
                                                              
                          </table>
                         </div> 
                        </div>
                        
                       </div> 
    </ItemTemplate>
    
    <SeparatorTemplate ><hr /></SeparatorTemplate>
    </asp:DataList>
    
    </div> </div> </div> 
    </asp:Content>
