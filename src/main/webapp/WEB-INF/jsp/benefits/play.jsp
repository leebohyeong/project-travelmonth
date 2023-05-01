<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/include-taglib.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="../include/include-head.jspf" %>
</head>
<body id="travelmonth-benefits-play">
    <%@ include file="../include/include-header.jspf" %>
    <div id="container">
        <div class="benefits">
            <div class="benefits__container">
                <div class="benefits__menu benefits__menu--program">
                    <div><h2><span>여행가는 달의 다양한</span><strong>여행정보와 여행혜택을<br>확인해 보세요!</strong></h2>
                        <%@ include file="include/include-nav.jspf" %>
                        <div>
                            <select>
                                <option value="traffic">교통혜택</option>
                                <option value="stay">숙박혜택</option>
                                <option value="play" selected>놀거리혜택</option>
                                <option value="trend">여행트랜드관</option>
                                <option value="special">여행상품 특별 기획전</option>
                            </select>
                            <%@ include file="include/include-menu.jspf" %>
                        </div>
                    </div>
                </div>
                <div class="benefits__content">
                    <article class="benefits-program benefits-program--play">
                        <header>
                            <div><h2><strong>놀거리혜택</strong></h2>
                                <p>여행정보, 할인혜택, 이벤트 등 다양한 놀거리혜택으로<br>풍성한 여행을 만들어가세요!</p></div>
                        </header>
                        <nav>
                            <ul>
                                <li><a class="<c:if test='${empty search.search_play_gb}'>benefits-program__item--current</c:if>" href="?search_play_gb=">전체</a></li>
                                <li><a class="<c:if test='${search.search_play_gb eq "D"}'>benefits-program__item--current</c:if>" href="?search_play_gb=D">할인혜택</a></li>
                                <li><a class="<c:if test='${search.search_play_gb eq "T"}'>benefits-program__item--current</c:if>" href="?search_play_gb=T">여행정보</a></li>
                                <li><a class="<c:if test='${search.search_play_gb eq "E"}'>benefits-program__item--current</c:if>" href="?search_play_gb=E">이벤트</a></li>
                            </ul>
                        </nav>
                        <section class="list-thumbnail list-thumbnail--benefits">
                            <c:if test="${not empty enjoy}">
                                <c:if test="${enjoy.result}">
                                    <c:set var="list" value="${enjoy.data.list}"/>
                                    <c:choose>
                                        <c:when test="${not empty list}">
                                            <ul>
                                                <c:forEach var="row" items="${list}" varStatus="loop">
                                                    <li>
                                                        <a href="#" data-type="d" data-bs-toggle="modal" data-bs-target="#modal-benefits-1">
                                                            <span style="background-image: url('${row.image}')"></span>
                                                            <div>
                                                                <p>
                                                                    <c:choose>
                                                                        <c:when test="${row.enjoy_gb eq 'D'}">할인혜택</c:when>
                                                                        <c:when test="${row.enjoy_gb eq 'T'}">여행정보</c:when>
                                                                        <c:when test="${row.enjoy_gb eq 'E'}">이벤트</c:when>
                                                                    </c:choose>
                                                                </p>
                                                                <p>${row.title}</p>
                                                            </div>
                                                            <p>산속등대 어뮤즈월드<br>이용요금 반값 할인</p>
                                                        </a>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </c:when>
                                        <c:otherwise>
                                            <div><p>등록된 내용이 없습니다.</p></div>
                                        </c:otherwise>
                                    </c:choose>
                                </c:if>
                            </c:if>
                            <p>
                                <button type="button">MORE</button>
                            </p>
                        </section>
                        <div class="modal fade modal-benefits" id="modal-benefits-1" data-type="d" tabindex="-1"
                             data-bs-backdrop="static" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <article>
                                        <div style="background-image: url('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=3f8fbd92-6b7e-46ba-9161-21bfd76e8e1b&amp;mode=progress')"></div>
                                        <div><p>할인혜택</p>
                                            <p>어뮤즈월드</p></div>
                                        <h3>산속등대 어뮤즈월드 이용요금 반값 할인</h3>
                                        <dl>
                                            <div>
                                                <dt>예약신청기간</dt>
                                                <dd>
                                                    <div>2023-05-10 ~ 2023-06-01</div>
                                                    <div>일요일은 안 받음</div>
                                                </dd>
                                            </div>
                                            <div>
                                                <dt>할인적용기간</dt>
                                                <dd>2023-06-01 ~ 2023-06-30</dd>
                                            </div>
                                            <div>
                                                <dt>혜택상세</dt>
                                                <dd>어뮤즈월드 이용요금 50% 할인 어뮤즈월드 이용요금 50% 할인 어뮤즈월드 이용요금 50% 할인</dd>
                                            </div>
                                            <div>
                                                <dt>혜택제공조건</dt>
                                                <dd>어린이만 이용가능(8세 이상~19세 미만)</dd>
                                            </div>
                                            <div>
                                                <dt>참고사항</dt>
                                                <dd>동반하는 어른은 정가</dd>
                                            </div>
                                            <div>
                                                <dt>문의처</dt>
                                                <dd>063-245-2456</dd>
                                            </div>
                                        </dl>
                                        <p><a href="#"><span>자세히 보기</span></a></p></article>
                                    <button class="modal-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../include/include-footer.jspf" %>
</body>
</html>
