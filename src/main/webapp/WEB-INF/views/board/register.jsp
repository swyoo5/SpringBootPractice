<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../includes/header.jsp"%>

<div class="row-content">
    <div class="card">
        <div class="card-header">
            Featured
        </div>
        <div class="card-body">
            <h5 class="card-title">게시글 등록</h5>
            <form method="post" action="/board/register">
                <div class="mb-3">
                    <label class="form-label">Title</label>
<%--                    name 속성은 dto의 필드명과 같아야함--%>
                    <input type="text" class="form-control" placeholder="Title" name="title">
                </div>
                <div class="mb-3">
                    <label class="form-label">Content</label>
                    <textarea class="form-control" rows="3" name="content"></textarea>
                </div>
                <div class="mb-3">
                    <label class="form-label">Writer</label>
                    <%--                    name 속성은 dto의 필드명과 같아야함--%>
                    <input type="text" class="form-control" placeholder="Writer" name="writer">
                </div>
                <div class="mb-3">
                    <button type="submit" class="btn btn-primary">Register</button>
                    <button type="button" class="btn btn-secondary">Board List</button>
                </div>
            </form>
            <script>
                document.querySelector(".btn-secondary").addEventListener("click", function (e) {
                    self.location = "/board/list";
                })

                function validateForm() {
                    if (!document.getElementById('title').value) {
                        alert('Title is required');
                        return false;
                    }
                    if (!document.getElementById('content').value) {
                        alert('Content is required');
                        return false;
                    }
                    if (!document.getElementById('writer').value) {
                        alert('Writer is required');
                        return false;
                    }
                    return true;
                }
            </script>
        </div>
    </div>
</div>

<%@include file="../includes/footer.jsp"%>