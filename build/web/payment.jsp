<%-- 
    Document   : payment
    Created on : 10-Jan-2019, 16:57:16
    Author     : jim
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/payment.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/payment.js" media="all" />
    
   
        
    </head>
    <body>
    <div class="checkout-panel">
  <div class="panel-body">
    <h2 class="title">Checkout</h2>
 
    <br>
    
 <% 
                String d=request.getParameter("day");
                if (d !=null)
                {
                    out.println("Your Selected Day is : "+d);
                }
      %>
    
      <br>
        
 
        <label for="paypal" class="method paypal" href="paypal.com">        
 <%-- custom generated code from Paypal for personal button --%>
        
        <!-- PayPal Logo --><table border="0" cellpadding="10" cellspacing="0" align="center"><tr><td align="center"></td></tr><tr><td align="center"><a href="https://www.paypal.com/webapps/mpp/paypal-popup" title="How PayPal Works" onclick="javascript:window.open('https://www.paypal.com/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;"><img src="https://www.paypalobjects.com/webstatic/mktg/logo/pp_cc_mark_37x23.jpg" border="0" alt="PayPal Logo"></a></td></tr></table><!-- PayPal Logo -->
        <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_xclick">
<input type="hidden" name="business" value="115356541@umail.ucc.ie"> <%-- business email address --%>
<input type="hidden" name="lc" value="US">
<input type="hidden" name="item_name" value="Lesson">
<input type="hidden" name="button_subtype" value="services">
<input type="hidden" name="no_note" value="0">
<input type="hidden" name="currency_code" value="EUR">
<input type="hidden" name="tax_rate" value="10.000">
<input type="hidden" name="shipping" value="0.00">
<input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHostedGuest">
<table>
<tr><td><input type="hidden" name="on0" value="Price">PayPal Discount Price</td></tr><tr><td><select name="os0">
	<option value="Option 1"> Fixed Price €25.00 EUR</option>
</select> </td></tr>
</table>
<input type="hidden" name="option_select0" value="Option 1">
<input type="hidden" name="option_amount0" value="0.01">

<input type="hidden" name="option_index" value="0">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>


  
  </label>
<br>
<br>
<br>
<form action="Sendtxt.jsp" method="post">
        <table border="0" width="35%" align="left">
            <caption><h3>Or by Cash Price</h3></caption>
            <tr>
                <td width="50%">Your phone number </td>
                <td><input type="text" name="phone" size="50"/></td>
            </tr>
            <br
            <tr>
                <td width="50%">Your message </td>
                <td><input type="text" name="message" size="50"/></td>
            </tr>
<br>
            
            
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Pay by Cash"/></td>
            </tr>
        </table>

  
</form>
  
  </div>




  </div>
    
 
  
    
  
    

       
    </body>
    
</html>

<%-- code taken from https://designmodo.com/demo/checkout-panel/ for page template
paypal picture source code taken from https://www.paypal.com/ca/webapps/mpp/logo-center
paypal button code generated from unique button creator at Paypal --%>
 
