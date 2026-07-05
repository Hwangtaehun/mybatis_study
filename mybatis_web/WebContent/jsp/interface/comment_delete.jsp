<%@page import="java.io.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="ldg.mybatis.service.*" %>
<%@page contentType="text/html; charset=utf8"%>
<%
// 인터페이스만으로 매핑구문과 결과매핑 처리
// ldg.mybatis.repository.mapper.CommentMapper.deleteComment(Long)
Long commentNo = Long.parseLong(request.getParameter("commentNo"));
CommentService commentService = new CommentService();
Integer result = commentService.deleteComment(commentNo);
%>
<%= result %>