<%@ Page Title="" Language="C#" MasterPageFile="~/Guest.master" AutoEventWireup="true" CodeFile="View_track.aspx.cs" Inherits="View_track" %>

<%@ Register assembly="FlashControl" namespace="Bewise.Web.UI.WebControls" tagprefix="Bewise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <div style="float:left;width:40%;height:500px;">
    

        &nbsp;<Bewise:FlashControl ID="FlashControl1" runat="server" Height="500px" 
            Loop="True" MovieUrl="~/SLIDE.swf" Width="470px" />
    

    </div>
    <div  style="float:left;width:60%;height:600px;">
        <b style="color: #ffc391;">The Airtel Grand Prix of India</b><span 
            style="color: #ffc391;"> </span>- Sounds familiar?? This is the <b>new grand 
        prix added to the F1&#39;s calendar</b> starting this year (2011).
        <br />
        This October end, we&#39;ll be able to witness a start of a new race track in New 
        Delhi, India.<br />
        Delhi is soon going to play host to The Indian Grand Prix of the Formula One 
        World Championship 2011, to be held from October 28 to 30, 2011, at the Buddh 
        International Circuit in Greater Noida, Uttar Pradesh. This is the first time 
        ever that India will be hosting an international motor-racing event of such a 
        grand scale as the F1.<br />
        <br />
        Charlie Whiting, the FIA Formula One Race Director, officially homologated the 
        Delhi race track on September 1, 2011.<br />
        <div class="separator" style="clear: both; text-align: left;">
            <b style="color: #ffc391;"><span style="color: #ffc391;">Circuit Details:</span>
            </b>
        </div>
        <ul style="text-align: left;">
            <li>The Buddh International Circuit in Greater Noida is roughly a 5.14 km&nbsp; (3.19 
                miles) long track spread in an area of 875 acres. </li>
            <li>The seating capacity is speculated to be around 150,000. </li>
            <li>The track is designed by F1 circuit designer Hermann Tilke.</li>
            <li>The 10-year contract for the race has been given to the Indian construction 
                company Jaiprakash Associates.</li>
            <li>There are 16 largely medium speed corners where the participating F1 cars will 
                be able to lap at an average speed of 210 kmph. </li>
            <li>Expected lap time for the F1 cars is 1 minute 276 seconds</li>
            <li>The back straight will let F1 cars reach 320 km/h making it one of the fastest 
                tracks in the world.&nbsp; </li>
        </ul>
&nbsp;<br />
    </div>
    </div>
    <div>

    </div>

</asp:Content>

