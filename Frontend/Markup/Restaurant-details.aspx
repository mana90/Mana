<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageRestaurant.master" AutoEventWireup="false" CodeFile="Restaurant-details.aspx.vb" Inherits="Restaurant_details" %>
<%@ Register src="MyCaptcha.ascx" tagname="MyCaptcha" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <script src="http://maps.google.com/maps?file=api&v=2&sensor=true&key=AIzaSyAIDTZgRG-hYjVq86JYbsuhPAzHYZXmgOg" 
type="text/javascript">
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- — — — — Breadcrumbs — — — — -->
<div class="breadcrumb">
  <ul>
    <li><a href='<%= m_domainName %>'>Home</a></li>
       <li><a href='<%= m_domainName & "Restaurants"%>'>Restaurants</a></li>
        <li><a href="javascript::">
            <asp:Literal ID="ltBredCrumTitle" runat="server"></asp:Literal>   
            </a></li>
  </ul>
</div>
<!-- — — — — Breadcrumbs — — — — -->
<div class="left-section">
   <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

  <div class="rest_logo">
     <asp:Literal ID="ltLogo" runat="server"></asp:Literal>
  </div>

    <asp:Literal ID="ltRestaurantOverview" runat="server"></asp:Literal>

  <div class="left-bg">

    <!-- Book now Table -->
 <asp:Literal ID="ltBooking" runat="server"></asp:Literal>
    <!-- Book now Table End -->
    
    <!-- Left Buttons -->
    <div class="left-button">
      <ul>
       
       <li <%=latestOfferShow %>>
           <asp:Literal ID="ltOutletofferlist" runat="server"></asp:Literal>
          <!--  -->

          <div class="detailbox latest-offers-inner" style="">
              <div class="view_map_cover">
                <h2 class="title">Latest Offers</h2>
                <a class="closebtn"><img src='<%= m_domainName & "dist/media/icons/inside_closeBtn.png"  %>'  /></a>
                    <div class="offers-home flexslider">
                      <ul class="slides">
                        <asp:Literal ID="ltLatesOffer" runat="server"></asp:Literal>
                      </ul>
                    </div>
              </div>          
          </div>

        </li>
        <li>
          <a href="javascript:;" class="view_map_btn">View Location <img src='<%= m_domainName & "dist/media/icons/view-location_icon.png"  %>' /></a>
          <div class="detailbox view_map" style="display:block;">
              <div class="view_map_cover">
                <a class="closebtn"><img src='<%= m_domainName & "dist/media/icons/inside_closeBtn.png"  %>' /></a>
                    <div class="tool_top">
                        <asp:Literal ID="ltLocation" runat="server"></asp:Literal>
                    </div>
              </div>
          </div>
        </li>
        <li <%=menuShow %>>
          <a href="javascript:;">Menu <img src='<%=m_domainName & "dist/media/icons/menu.png" %>' /></a>
          <div class="detailbox menubox">
              <div class="view_map_cover">
                <h2 class="title">Menu</h2>
                <a class="closebtn"><img src='<%= m_domainName & "dist/media/icons/inside_closeBtn.png"  %>' /></a>
                   <%-- <div class="tool_top menu-scroll">--%>
                   <div class="tool_top">
                         <asp:Literal ID="ltMenu" runat="server"></asp:Literal>
                    </div>
              </div>
          </div>
        </li>
        <li>
          <a href="javascript:;">Opening Hours <img src='<%=m_domainName & "dist/media/icons/openHrs_icon.png" %>' /></a>
          <div class="detailbox openinghours">
              <div class="view_map_cover">
                <h2 class="title">Opening Hours</h2>
                <a class="closebtn"><img src='<%= m_domainName & "dist/media/icons/inside_closeBtn.png"  %>' /></a>
                    <div class="tool_top">
                        <p class="text">
                        <asp:Literal ID="ltOpeningHours" runat="server"></asp:Literal>
                        </p>
                    </div>
              </div>          
          </div>
        </li>
        <li>
          <a href="javascript:;">Reviews<img src='<%=m_domainName & "dist/media/icons/write_revie_ico.png" %>' /></a>
          <div class="detailbox reviews" style="">
              <div class="view_map_cover">
                <h2 class="title">Reviews</h2>
                <a class="closebtn"><img src='<%= m_domainName & "dist/media/icons/inside_closeBtn.png"  %>' /></a>
                    <div class="tool_top">

                      <div class="col-sm-6">

                       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                          <ContentTemplate>
                             <asp:Panel ID="pnlReview" runat="server">
                        <h2>Write A Review</h2>
                        <div class="review-fields">
                          <label for="">Your Name:<img src='<%=m_domainName & "dist/media/icons/mandatory.png" %>'></label>
                            <asp:TextBox ID="txtReviewName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtReviewName" ErrorMessage="* Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                          <label for="">Your Email:<img src='<%=m_domainName & "dist/media/icons/mandatory.png" %>'></label>
                           <asp:TextBox ID="txtReviewEmail" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtReviewEmail" ErrorMessage="* Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ControlToValidate="txtReviewEmail"
                                    ForeColor="Red" Display="Dynamic" ID="RegularExpressionValidator2" runat="server"
                                    ErrorMessage="invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


                          <label for="">Telephone Number:<img src='<%=m_domainName & "dist/media/icons/mandatory.png" %>'></label>
                             <asp:TextBox ID="txtReviewContactno" runat="server"></asp:TextBox>

                          <label for="">Your Comments:<img src='<%=m_domainName & "dist/media/icons/mandatory.png" %>'></label>
                           <asp:TextBox TextMode="MultiLine" Rows="3" ID="txtComments" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtComments" ErrorMessage="* Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
           
                          <label for="">Security Code:<img src='<%=m_domainName & "dist/media/icons/mandatory.png" %>'></label>
                          <div class="submitbox">
                              <uc1:MyCaptcha ID="MyCaptcha1" runat="server" />
                                  <br />
                                <asp:Label ID="lbCaptchaError" ForeColor="Red" runat="server"></asp:Label>
                          
                                <asp:Button ID="btnReviewSubmit" CssClass="button" runat="server" Text="Submit" />
                          </div>
                        </div>

                        </asp:Panel>
                            <asp:Panel ID="pnlReviewThankyou" Visible="false"  runat="server">
                                    <h2>Thank you for your valuable comments.</h2>
                            </asp:Panel>


                          </ContentTemplate> 
                          </asp:UpdatePanel>


                      </div>
                      <div class="col-sm-6 reviews-scroll">
                        <asp:Literal ID="ltReviewList" runat="server"></asp:Literal> 
                      </div>
                    </div>
              </div>          
          </div>
        </li>
         
      </ul>
    </div>
    <!-- Left Buttons End -->
    
  </div>

</div>


<div class="total-outer">
  <div class="total-bottom">

<!-- — — — — Footer — — — —  -->
<footer class="bs-docs-footer" role="contentinfo">
  <div> 
  </div> class="">
    <div class="copyright-text">
      <p>© 2014 Diningdfc.com. All Rights Reserved</p>
    </div>
    <div class="newsletter-home">
      <a href="javascript:;" class="newsletter-sub-btn">Newsletter Subscription</a>
      <div class="newsletterbox">
          <a href="javascript:;" class="closebtn"><img alt="" src='<%= m_domainName & "dist/media/icons/inside_closeBtn.png" %>'></a>
          <h3>Subscribe Newsletter</h3>

           <ul>
              <li>
                <label>Full name</label>
                  <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="submit" ControlToValidate="txtName" Display ="Dynamic"  runat="server" ErrorMessage="* Please enter your Name"></asp:RequiredFieldValidator>
             </li>
             <li>
                <label>Email</label>
               
                 <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="submit" ControlToValidate="txtEmail" Display ="Dynamic"  runat="server" ErrorMessage="* Please enter your Email Address"></asp:RequiredFieldValidator>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                        ErrorMessage="* E-mail is not a valid format" ControlToValidate="txtEmail" Display="Dynamic" 
                                                        ValidationGroup="submit"></asp:RequiredFieldValidator>  
             </li>
             <li>
                 <asp:Button ID="btnNewsletterSubmit"  CssClass ="sub-button col-sm-3" runat="server" Text="submit" />
              </li>
          </ul>

      </div>
    </div>
    <div class="socialbutton">

        <ul>
     
<%--        <li><a href="http://www.facebook.com/share.php?u=http://www.diningdfc.com/" target="_blank" title="Share This on Facebook" class="facebook">
          <img src='<%= m_domainName & "dist/media/icons/facebook-icon.png" %>' />
        </a></li>
        <li><a class="twitter" href="http://twitter.com/share?url=http://www.diningdfc.com/&amp;count=horiztonal" target="_blank" rel="nofollow">
          <img src='<%= m_domainName & "dist/media/icons/twitter.png" %>' />
        </a></li> 
        <li><a class="googleplus" target="_blank" href="https://plus.google.com/share?url=http://www.diningdfc.com/">
          <img src='<%= m_domainName & "dist/media/icons/google-plus-icon.png" %>' />
        </a></li>
        <li><a class="pinterest" href="javascript:void((function(){var%20e=document.createElement('script'); e.setAttribute('type','text/javascript'); e.setAttribute('charset','UTF-8'); e.setAttribute('src','http://assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);document.body.appendChild(e)})());">
          <img src= '<%= m_domainName &  "dist/media/icons/pinterest-icon.png" %>' />
        </a></li>
        <li><a class="addthis_button" href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=xa-5037433b1aa58004"><img src='<%= domainName & "dist/media/icons/plus.jpg" %>'></a></li>
    --%>
     <asp:Literal ID="ltsocialShare" runat="server"></asp:Literal>
      </ul>

    </div>
  </div>
</footer>

</div>
 <asp:Label ID="lblSEO" runat="server" Text=""></asp:Label>
</div>

<asp:HiddenField ID="hdnSubscriptionTime" runat="server" />
         <asp:SqlDataSource ID="sdsNewsletterSubscription" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    InsertCommand="INSERT INTO [NewsletterSubscription] ([FullName], [Email], [Phone], [Mobile], [Comments], [SubscriptionDate]) VALUES (@FullName, @Email, @Phone, @Mobile, @Comments, @SubscriptionDate)">
                                    <InsertParameters>
                                        <asp:ControlParameter ControlID="txtName" Name="FullName" PropertyName="Text" Type="String" />
                                        <asp:ControlParameter ControlID="txtNewsLetterEmail" Name="Email" PropertyName="Text" Type="String" />
                                        <asp:Parameter DefaultValue="-" Name="Phone" Type="String" />
                                        <asp:Parameter DefaultValue="-" Name="Mobile" Type="String" />
                                        <asp:Parameter DefaultValue="-" Name="Comments" Type="String" />
                                        <asp:ControlParameter ControlID="hdnSubscriptionTime" Name="SubscriptionDate" PropertyName="Value"
                                            Type="DateTime" />
                                    </InsertParameters>
                                </asp:SqlDataSource>

 <asp:SqlDataSource ID="sdsReview" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    InsertCommand="INSERT INTO [Review] ([FullName], [Email], [Phone], [Comments], [SubscriptionDate],Status,[RestaurantID]) VALUES (@FullName, @Email, @Phone, @Comments, @SubscriptionDate,'1',@RestaurantID)">
                                    <InsertParameters>
                                        <asp:ControlParameter ControlID="txtReviewName" Name="FullName" PropertyName="Text" Type="String" />
                                        <asp:ControlParameter ControlID="txtReviewEmail" Name="Email" PropertyName="Text" Type="String" />
                                         <asp:ControlParameter ControlID="txtReviewContactno" Name="Phone" PropertyName="Text" Type="String" />
                                         <asp:ControlParameter ControlID="txtComments" Name="Comments" PropertyName="Text" Type="String" />
                                          <asp:RouteParameter RouteKey ="id" Name="RestaurantID" Type="String" />
                                         <asp:ControlParameter ControlID="hdnDate" Name="SubscriptionDate" PropertyName="Value"
                                            Type="DateTime" />
                                    </InsertParameters>
                                </asp:SqlDataSource>

    
    <script type='text/javascript'> 
//<![CDATA[
        var tst14_lg9dq_0 = document.getElementById('googlemap14_lg9dq_0');
        var tstint14_lg9dq_0;
        var map14_lg9dq_0;

        DirectionMarkersubmit14_lg9dq_0 = function (formObj) {
            if (formObj.dir[1].checked) {
                tmp = formObj.daddr.value;
                formObj.daddr.value = formObj.saddr.value;
                formObj.saddr.value = tmp;
            }
            formObj.submit();
            if (formObj.dir[1].checked) {
                tmp = formObj.daddr.value;
                formObj.daddr.value = formObj.saddr.value;
                formObj.saddr.value = tmp;
            }
        }
        function checkMap14_lg9dq_0() {
            if (tst14_lg9dq_0)
                if (tst14_lg9dq_0.offsetWidth != tst14_lg9dq_0.getAttribute("oldValue")) {
                    tst14_lg9dq_0.setAttribute("oldValue", tst14_lg9dq_0.offsetWidth);

                    if (tst14_lg9dq_0.getAttribute("refreshMap") == 0)
                        if (tst14_lg9dq_0.offsetWidth > 0) {
                            clearInterval(tstint14_lg9dq_0);
                            getMap14_lg9dq_0();
                            tst14_lg9dq_0.setAttribute("refreshMap", 1);
                        }
                }
        }
        function getMap14_lg9dq_0() {
            if (tst14_lg9dq_0.offsetWidth > 0) {
                map14_lg9dq_0 = new GMap2(document.getElementById('googlemap14_lg9dq_0'));
                map14_lg9dq_0.addControl(new GSmallMapControl());
                map14_lg9dq_0.addControl(new GMapTypeControl());

                var iwi = new GIcon();
                iwi.image = 'http://www.diningdfc.com/images/marker.png';
                //iwi.shadow = 'images/restaurant.png';
                //iwi.iconSize = new GSize(32,37);
                //iwi.shadowSize = new GSize(36,30);
                iwi.iconAnchor = new GPoint(11, 30);
                iwi.infoWindowAnchor = new GPoint(11, 0);
                iwi.printImage = 'http://www.diningdfc.com/images/marker.png';
                iwi.mozPrintImage = 'http://www.diningdfc.com/images/marker.png';
                //iwi.printShadow = 'images/restaurant.png';
                //iwi.transparent = 'http://www.diningdfc.com/images/marker.png';
                //iwi.imageMap = [10,0,11,1,12,2,13,3,14,4,17,5,19,6,20,7,20,8,20,9,20,10,19,11,19,12,20,13,20,14,20,15,20,16,18,17,19,18,19,19,19,20,18,21,17,22,16,23,17,24,18,25,19,26,19,27,19,28,18,29,0,29,0,28,0,27,0,26,1,25,1,24,1,23,1,22,1,21,1,20,2,19,2,18,0,17,0,16,0,15,0,14,0,13,0,12,1,11,2,10,3,9,4,8,4,7,4,6,4,5,4,4,4,3,5,2,6,1,7,0];

                //iwi.image = "images/restaurant.png";
                //iwi.iconSize = new GSize(12, 20);

                //map14_lg9dq_0.setMapType(G_HYBRID_MAP);
                map14_lg9dq_0.setCenter(new GLatLng(<%=latlong %>), 14);

                var point = new GPoint(<%=longlat %>);
                var marker14_lg9dq_0 = new GMarker(point, { icon: iwi });

                //var marker14_lg9dq_0 = new GMarker(point);
                map14_lg9dq_0.addOverlay(marker14_lg9dq_0);

                //marker14_lg9dq_0.openInfoWindowHtml("<br><br>");
                //                GEvent.addListener(marker14_lg9dq_0, 'click', function () {
                //                    marker14_lg9dq_0.openInfoWindowHtml("Lobby Level, InterContinental Dubai Festival City<br><br>Anise");
                //                });
            }
        }
//]]>
</script>
<script type="text/javascript"> 
//<![CDATA[
    if (GBrowserIsCompatible()) {
        tst14_lg9dq_0.setAttribute("oldValue", 0);
        tst14_lg9dq_0.setAttribute("refreshMap", 0);
        tstint14_lg9dq_0 = setInterval("checkMap14_lg9dq_0()", 495);
    }
//]]>
</script>
    <asp:HiddenField ID="hdnDate" runat="server" />


        <script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = "//platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } }(document, "script", "twitter-wjs");</script>

    <script src="//platform.linkedin.com/in.js" type="text/javascript">
  lang: en_US
</script>

    <script type="text/javascript">
        (function () {
            var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
            po.src = 'https://apis.google.com/js/platform.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
        })();
</script>


</asp:Content>

