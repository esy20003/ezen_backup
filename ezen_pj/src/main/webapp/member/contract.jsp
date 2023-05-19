<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>

<article>
   <h2>회원 가입 약권</h2>
   <form name="contractFrm" method="post" id="join">
      
      <textarea rows="15" cols="100">
       
      </textarea>

      <br> <br>
      <div style="text-align: center;">
         <input type="radio" name="okon">
         동의함&nbsp;&nbsp;&nbsp;
         <input type="radio" name="okon" checked>
         동의안함
      </div>
      <input type="button" value="Next" class="submit" style="float: right;" onclick="go_next()">
   </form>
</article>

<%@ include file="../footer.jsp"%>