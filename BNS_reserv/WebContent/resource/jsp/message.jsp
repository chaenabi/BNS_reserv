<%@ page language="java" contentType="application/json; charset=utf-8" pageEncoding="EUC-KR"%>
<%@ page import="java.io.*, java.lang.*, org.json.simple.*"%>
<%
    StringBuffer jb = new StringBuffer();
    String line = null;
    BufferedReader reader = request.getReader();
    while ((line = reader.readLine()) != null){
        jb.append(line);
    }
    String jsonString = jb.toString();
 
    String text = "";
    Object obj = JSONValue.parse(jsonString);
    JSONObject json = (JSONObject)obj;
    if(json != null) {
        text = json.get("content").toString();
    }
    if(text.equals("���� Ǯ��")){
%>
        {
            "message":{
                "text" : "������"
            }
            
        }
<%
    }else{
%>
        {
            "message":{
                "text" : "�ȳ��� ������.",
                "photo": {
                    "url": "server_url/images/img01.png",
                    "width": 240,
                    "height": 240
                }
            }
        }
<%
    }
%>