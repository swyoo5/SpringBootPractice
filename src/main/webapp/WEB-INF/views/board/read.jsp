<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../includes/header.jsp"%>

<div class="row-content">
    <div class="card">
        <div class="card-header">
            Featured
        </div>
        <div class="card-body">
            <h5 class="card-title">게시글 상세보기</h5>
<%--            <form method="post" action="/board/register">--%>
            <div class="mb-3">
                <label class="form-label">Bno</label>
                <%--                    name 속성은 dto의 필드명과 같아야함--%>
                <input type="text" class="form-control" name="bno" value="${dto.bno}" readonly>
            </div>
            <div class="mb-3">
                <label class="form-label">Title</label>
<%--                    name 속성은 dto의 필드명과 같아야함--%>
                <input type="text" class="form-control" name="title" value="${dto.title}" readonly>
            </div>
            <div class="mb-3">
                <label class="form-label">content</label>
                <textarea class="form-control" rows="3" name="content" readonly>${dto.content}</textarea>
            </div>
            <div class="mb-3">
                <label class="form-label">Writer</label>
                <%--                    name 속성은 dto의 필드명과 같아야함--%>
                <input type="text" class="form-control" name="writer" value="${dto.writer}" readonly>
            </div>
            <div class="mb-3">
                <label class="form-label">PostDate</label>
                <%--                    name 속성은 dto의 필드명과 같아야함--%>
                <input type="text" class="form-control" name="postdate" value="${dto.postdate}" readonly>
            </div>
            <div class="mb-3">
                <label class="form-label">VisitCount</label>
                <%--                    name 속성은 dto의 필드명과 같아야함--%>
                <input type="text" class="form-control" name="visitcount" value="${dto.visitcount}" readonly>
            </div>

            <div class="mb-3">
                <button type="button" class="btn btn-primary">Modify</button>
                <button type="button" class="btn btn-danger">Remove</button>
                <button type="button" class="btn btn-secondary">Board List</button>
            </div>
<%--            </form>--%>
            <script>
                document.querySelector(".btn-primary").addEventListener("click", function (e) {
                    self.location = `/board/modify?bno=${dto.bno}`;
                })
                document.querySelector(".btn-danger").addEventListener("click", function (e) {
                    self.location = `/board/remove?bno=${dto.bno}`;
                })
                document.querySelector(".btn-secondary").addEventListener("click", function (e) {
                    self.location = "/board/list";
                })
            </script>
        </div>
    </div>
</div>

<%@include file="../includes/footer.jsp"%>