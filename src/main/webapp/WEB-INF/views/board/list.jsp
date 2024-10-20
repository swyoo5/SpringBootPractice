<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../includes/header.jsp"%>

<div class="row-content">
    <div class="card">
        <div class="card-header">
            게시판 목록보기
        </div>
        <div class="card-body">

            <!-- 검색 기능 추가 -->
            <form method="get" action="/board/list" class="mb-3 row">
                <div class="col-md-3">
                    <select name="searchType" class="form-control">
                        <option value="title" <c:if test="${searchType == 'title'}">selected</c:if>>Title</option>
                        <option value="content" <c:if test="${searchType == 'content'}">selected</c:if>>Content</option>
                        <option value="writer" <c:if test="${searchType == 'writer'}">selected</c:if>>Writer</option>
                    </select>
                </div>
                <div class="col-md-6">
                    <input type="text" name="keyword" placeholder="Enter keyword" value="${keyword}" class="form-control">
                </div>
                <div class="col-md-3">
                    <button type="submit" class="btn btn-primary">Search</button>
                </div>
            </form>

            <h5 class="card-title">게시판 목록</h5>
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
                        <td>
                            <a href="/board/read?bno=${dto.bno}" class="text-decoration-none" data-bno="${dto.bno}">
                                    ${dto.title}
                            </a>
                        </td>
                        <td>${dto.writer}</td>
                        <td>${dto.postdate}</td>
                        <td>${dto.visitcount}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <!-- 페이징 기능 추가 -->
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <c:forEach begin="1" end="${totalPages}" var="i">
                        <li class="page-item <c:if test='${currentPage == i}'>active</c:if>'">
                            <a class="page-link" href="?page=${i}&keyword=${keyword}&searchType=${searchType}">${i}</a>
                        </li>
                    </c:forEach>
                </ul>
            </nav>

        </div>
    </div>
</div>

<%@include file="../includes/footer.jsp"%>
