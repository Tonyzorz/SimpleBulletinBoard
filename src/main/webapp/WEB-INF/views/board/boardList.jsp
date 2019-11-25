<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
//이전 버튼 이벤트
function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "boardList";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}

  //페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "boardList";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;	
	}

	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "boardList";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../home.jsp" %>
<table border="1">
	<tr>
		<th>No.</th>
		<th>Title</th>
		<th>Writer</th>
		<th>Date</th>
		<th>Hit</th>
	</tr>
	<c:forEach var="board" items="${board}">
	<tr>
		<td>${board.boardId }</td>
		<td><a href="boardView?boardId=${board.boardId }">
		<c:forEach begin="1" end="${board.BIndent }">-</c:forEach>${board.BTitle }</a></td>
		<td>${board.BUsername }</td>
		<td>${board.BDate }</td>
		<td>${board.BHit }</td>
	</tr>
	</c:forEach>
</table>
<c:if test="${session != null }">
	<a href="boardWrite">글 쓰기</a>&nbsp;&nbsp;&nbsp;
</c:if>
<div id="paginationBox">
		<ul class="pagination">
			<c:if test="${pagination.prev}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
			</c:if>
			<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
				<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a></li>
			</c:forEach>
			<c:if test="${pagination.next}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')" >Next</a></li>
			</c:if>
		</ul>
	</div>
</body>
</html>