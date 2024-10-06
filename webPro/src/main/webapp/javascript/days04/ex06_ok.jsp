<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
    http://localhost/webpro/javascript/days04/ex06_ok.jsp 
    ?
    subject=eng
-->

<%
    //jsp 스크립트 요소 : 스크립트릿
    
    String subject =  request.getParameter("subject");
%>
>전송된 과목 : <%= subject%><br>
<br>
<input type="radio" name="subject" value="kor"><label for="">국어</label></input>
<input type="radio" name="subject" value="eng"><label for="">영어</label></input>
<input type="radio" name="subject" value="mat"><label for="">수학</label></input>
<input type="radio" name="subject" value="pe"><label for="">체육</label></input>
<br>
<!-- BOM - window/document/history -->
<a href="javascript:history.back()">뒤로가기</a>
<br>
<a href="javascript:location.href='ex06_02.html'">뒤로가기</a>

<script>

    let s = "<%= subject%>";
    //<%-- JSP  ${EL 익스프레션 렝귀지}  `${변수}` --%>
    document.querySelector(`input[name=subject][value=\${s}]`).checked=true;

    /*
    let subject = "<%= subject%>";
    document.querySelector("input[name=subject][value=<%= subject%>]").checked=true;
    */

    /*
    const rdbs = document.querySelectorAll("[name=subject]");
    // alert(rdbs.length);
    for (let i = 0; i < rdbs.length; i++) {
        if (rdbs[i].value == subject) {
            rdbs[i].setAttribute("checked","checked");
            break;
        }//if
        
    }//for
    */
</script>
</body>
</html>