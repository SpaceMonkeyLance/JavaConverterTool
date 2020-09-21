<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleConverterProxyid" scope="session" class="webservices.ConverterToolPackage.ConverterProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleConverterProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleConverterProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleConverterProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        webservices.ConverterToolPackage.Converter getConverter10mtemp = sampleConverterProxyid.getConverter();
if(getConverter10mtemp == null){
%>
<%=getConverter10mtemp %>
<%
}else{
        if(getConverter10mtemp!= null){
        String tempreturnp11 = getConverter10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String poundValue_1id=  request.getParameter("poundValue16");
        double poundValue_1idTemp  = Double.parseDouble(poundValue_1id);
        java.lang.String convertPoundsToKilograms13mtemp = sampleConverterProxyid.convertPoundsToKilograms(poundValue_1idTemp);
if(convertPoundsToKilograms13mtemp == null){
%>
<%=convertPoundsToKilograms13mtemp %>
<%
}else{
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(convertPoundsToKilograms13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
}
break;
case 18:
        gotMethod = true;
        String milesValue_2id=  request.getParameter("milesValue21");
        double milesValue_2idTemp  = Double.parseDouble(milesValue_2id);
        java.lang.String convertMilesToKilometers18mtemp = sampleConverterProxyid.convertMilesToKilometers(milesValue_2idTemp);
if(convertMilesToKilometers18mtemp == null){
%>
<%=convertMilesToKilometers18mtemp %>
<%
}else{
        String tempResultreturnp19 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(convertMilesToKilometers18mtemp));
        %>
        <%= tempResultreturnp19 %>
        <%
}
break;
case 23:
        gotMethod = true;
        String kelvinValue_3id=  request.getParameter("kelvinValue26");
        double kelvinValue_3idTemp  = Double.parseDouble(kelvinValue_3id);
        java.lang.String convertKelvinToCelcius23mtemp = sampleConverterProxyid.convertKelvinToCelcius(kelvinValue_3idTemp);
if(convertKelvinToCelcius23mtemp == null){
%>
<%=convertKelvinToCelcius23mtemp %>
<%
}else{
        String tempResultreturnp24 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(convertKelvinToCelcius23mtemp));
        %>
        <%= tempResultreturnp24 %>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>