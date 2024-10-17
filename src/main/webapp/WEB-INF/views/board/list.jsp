<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../includes/header.jsp"%>
<div class="row-content">
    <div class="card">
        <div class="card-header">
            Featured
        </div>
        <div class="card-body">
            <h5 class="card-title">게시판 목록보기</h5>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Bno</th>
                    <th scope="col">Title</th>
                    <th scope="col">Writer</th>
                    <th scope="col">PostDate</th>
                    <th scope="col">VisitCount</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${boardList}" var="dto">
                    <tr>
                        <th scope="row">${dto.bno}</th>
                        <td><a href="/board/read?bno=${dto.bno}" class="text-decoration-none" data-bno="${dto.bno}">${dto.title}</a></td>
                        <td>${dto.writer}</td>
                        <td>${dto.postdate}</td>
                        <td>${dto.visitcount}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
</div>
<%@include file="../includes/footer.jsp"%>