<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>promoboardChk</title>

    <style>
        .clearfix::after {
            content: '';
            display: block;
            clear: both;
        }
    
        .container {
            min-width: 1200px;
            margin-top: 150px;
            margin-bottom: 50px;
        }
        .pagination .page-link {
            color: #000;
        }

        .pagination .page-link:active,
        .pagination .page-pre:active,
        .pagination .page-link:focus,
        .pagination .page-pre:focus,
        .pagination .page-link:hover,
        .pagination .page-pre:hover {
            color: #000;
        }

        .pagination .cur-page {
            background: #000;
            color: #fff;
        }
    </style>
    
</head>

<body>

	<%@ include file="../include/header.jsp" %>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <!--카테고리 메뉴-->
                    <ul class="nav nav-tabs">
                        <li><a href="<c:url value='/user/userInfo' />">회원정보</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티게시판<span class="caret"></span></a>
                            <ul class="dropdown-menu">
								<li><a href="<c:url value='/user/cmnBoardChk' />">작성글보기</a></li>
								<li><a href="<c:url value='/user/cmnReplyChk' />">작성댓글보기</a></li>
                            </ul>
                        </li>
                        
                        <c:if test="${not empty login.businessnum}">
	                        <li class="dropdown active">
	                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">홍보게시판<span class="caret"></span></a>
	                            <ul class="dropdown-menu">
	                                <li class="active"><a href="<c:url value='/user/promoBoardChk' />">작성글보기</a></li>
									<li><a href="<c:url value='/user/promoReplyChk' />">작성댓글보기</a></li>
	                            </ul>
	                        </li>
	                        <li>
	                        	<a href="<c:url value='/user/orderDelHistory' />">주문내역/배송조회</a>
	                        </li>
	                    </c:if>    
                    </ul>

                    <br>
                    <h3>
                        <strong>홍보 작성글 보기</strong>
                    </h3>
                    <br>

                    <form action="#">
                        <!--테이블 자동 크기 조절-->
                        <table class="table table-hover w-auto">
                            <thead>
                            	<tr>
	                                <th>번호</th>
	                                <th>제목</th>
	                                <th>작성일</th>
	                                <th>조회수</th>
	                             </tr>
                            </thead>

                            <!--작성글을 클릭하면 해당 게시물 상세 창으로 이동합니다-->
                            <tbody>
                                <tr>
                                    <td>3</td>
                                    <td><a href="#">작성자가 작성했던 게시글의 작성글 목록입니다</a></td>
                                    <td>0000.00.00</td>
                                    <td>00</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td><a href="#">작성글을 클릭하면 해당 게시물 상세 창으로 이동합니다</a></td>
                                    <td>0000.00.00</td>
                                    <td>00</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><a href="#">제목</a></td>
                                    <td>0000.00.00</td>
                                    <td>00</td>
                                </tr>

                            </tbody>
                        </table>
					</form>

                        <div class="text-center">
                            <!-- 페이징 처리 부분  -->
							<ul class="pagination">
								<!-- 이전 버튼 -->
			                       	<li class="page-pre">
										<a class="page-link" href="#">이전</a>
									</li>
								
								<!-- 페이지 번호 버튼 -->
									<li class="page-num">
									   <a href="#" class="page-link cur-page">1</a>
									</li>
									<li class="page-num">
									   <a href="#" class="page-link">2</a>
									</li>
									<li class="page-num">
									   <a href="#" class="page-link">3</a>
									</li>
									<li class="page-num">
									   <a href="#" class="page-link">4</a>
									</li>
									<li class="page-num">
									   <a href="#" class="page-link">5</a>
									</li>
							   
							   	<!-- 다음 버튼 -->
								    <li class="page-next">
								      <a class="page-link" href="#">다음</a>
								    </li>
						    </ul>
							<!-- 페이징 처리 끝 -->
                        </div>
                </div>
            </div>
        </div>

    </section>

    <%@ include file="../include/footer.jsp" %>
    
</body>

</html>