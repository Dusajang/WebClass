<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
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

    // let s = "<%= subject%>";
    // $(":radio[name=subject][value=<%= subject%>]").prop("checked", true);
    
    let s = "<%= subject%>";
    $(`:radio[name=subject][value=\${s}]`).prop("checked", true);

</script>
<hr>
<select name="selSubject" id="selSubject">
    <option value="">선택하세요.</option>
    <option value="kor">국어</option>
    <option value="eng">영어</option>
    <option value="mat">수학</option>
    <option value="pe">체육</option>
  </select>

  <script>

    document.querySelector(":select[name=selSubject]")
    .find("[value=<%= subject%>]").prop("selected", true);

    $("selSubject").val("<%= subject%>");

    // const selSubArr = document.querySelector("#selSubject")

    // for (let i = 1; i <= selSubArr.length; i++) {
    //     if (selSubArr[i].value == "<%= subject%>") {
    //         selSubArr[i].setAttribute("selected", "selected");
    //     }
        
    // }
  </script>
</body>
</html>