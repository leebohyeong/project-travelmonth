<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/include-taglib.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="../include/include-head.jspf" %>
</head>
<body id="travelmonth-trend-list">
    <%@ include file="../include/include-header.jspf" %>
    <%@ include file="include/include-trend-data.jspf" %>
    <div id="container">
        <div class="benefits">
            <div class="benefits__container">
                <div class="benefits__menu benefits__menu--program">
                    <div>
                        <h2><span>여행가는 달의 다양한</span><strong>여행정보와 여행혜택을<br>확인해 보세요!</strong></h2>
                        <%@ include file="../include/include-benefits-nav.jspf" %>
                        <%@ include file="../include/include-benefits-menu.jspf" %>
                    </div>
                </div>
                <div class="benefits__content">
                    <article class="trend-list" data-theme="${search.search_trend_gb}">
                        <div>
                            <header>
                                <div>
                                    <h2><span>${page_sub_title}</span><strong>${page_title}</strong></h2>
                                    <p>${page_content}</p>
                                </div>
                            </header>
                            <nav>
                                <div class="swiper">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <c:choose>
                                                <c:when test="${empty search.search_trend_gb}">
                                                    <strong data-theme="">전체</strong>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="${pageContext.request.contextPath}/trend/list.do" data-theme="">전체</a>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <c:forEach var="row" items="${common:getThemes()}" varStatus="loop">
                                            <div class="swiper-slide">
                                                <c:choose>
                                                    <c:when test="${search.search_trend_gb eq row.theme}">
                                                        <strong data-theme="${row.theme}">${row.title}</strong>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a href="${pageContext.request.contextPath}/trend/trend-${row.theme}.do" data-theme="${row.theme}">${row.title}</a>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </nav>
                        </div>
                        <c:if test="${empty search.search_trend_gb}">
                            <aside>
                                <div>
                                    <div class="swiper">
                                        <div class="swiper-wrapper">
                                            <c:forEach var="row" items="${themes}" varStatus="loop">
                                                <div class="swiper-slide">
                                                    <dl>
                                                        <dt><span>${row.sub_title}</span><strong>${fn:replace(row.title, '<br>', '')}</strong></dt>
                                                        <dd>${row.content}</dd>
                                                        <dd><a href="${pageContext.request.contextPath}/trend/trend-${row.theme}.do">여행 프로그램 확인하기</a></dd>
                                                    </dl>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-button-next"></div>
                                </div>
                            </aside>
                        </c:if>
                        <section class="list-thumbnail list-thumbnail--goods">
                            <h3>${empty search.search_trend_gb ? '해보고 싶은' : page_title} 여행 떠나보기</h3>
                            <c:if test="${not empty goods}">
                                <c:if test="${goods.result}">
                                    <c:set var="list" value="${goods.data.list}"/>
                                    <c:choose>
                                        <c:when test="${not empty list}">
                                            <ul>
                                                <c:forEach var="row" items="${list}" varStatus="loop">
                                                    <c:set var="hidden_class" value=""/>
                                                    <c:if test="${loop.count > 6}">
                                                        <c:set var="hidden_class" value="class='list-thumbnail__item--hide'"/>
                                                    </c:if>
                                                    <li ${hidden_class}>
                                                        <a href="#modal-goods-${row.seq}" data-bs-toggle="modal" data-bs-target="#modal-goods-${row.seq}">
                                                            <span style="background-image: url('${row.image}')"></span>
                                                            <p>
                                                                <fmt:parseDate var="strFromDate" pattern="yyyy-MM-dd" value="${row.from_date}"/>
                                                                <fmt:formatDate var="fromDate" pattern="MM/dd" value="${strFromDate}"/>
                                                                <fmt:parseDate var="strToDate" pattern="yyyy-MM-dd" value="${row.to_date}"/>
                                                                <fmt:formatDate var="ToDate" pattern="MM/dd" value="${strToDate}"/>
                                                                예약신청기간 : ${fromDate}~${ToDate}
                                                            </p>
                                                            <p>${row.title}</p>
                                                            <div>
                                                                <c:if test="${not empty row.price}">
                                                                    <p>${row.price}</p>
                                                                </c:if>
                                                                <p>
                                                                    <c:choose>
                                                                        <c:when test="${fn:contains(row.travel_type, 'L') && fn:contains(row.travel_type, 'D')}">숙박/당일</c:when>
                                                                        <c:when test="${fn:contains(row.travel_type, 'L')}">숙박</c:when>
                                                                        <c:when test="${fn:contains(row.travel_type, 'D')}">당일</c:when>
                                                                    </c:choose>
                                                                </p>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </c:when>
                                        <c:otherwise><div><p>등록된 내용이 없습니다.</p></div></c:otherwise>
                                    </c:choose>
                                </c:if>
                            </c:if>
                            <c:if test="${not empty goods}">
                                <c:if test="${goods.result}">
                                    <c:if test="${fn:length(goods.data.list) > 6}"><p><button type="button">MORE</button></p></c:if>
                                </c:if>
                            </c:if>
                        </section>
                        <c:if test="${not empty goods}">
                            <c:if test="${goods.result}">
                                <c:set var="list" value="${goods.data.list}"/>
                                <c:forEach var="row" items="${list}" varStatus="loop">
                                    <div class="modal fade modal-goods" id="modal-goods-${row.seq}" tabindex="-1" data-bs-backdrop="static" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <article>
                                                    <div style="background-image: url('${row.image}')"></div>
                                                    <div>
                                                        <p>여행상품</p>
                                                        <p>
                                                            <c:choose>
                                                                <c:when test="${fn:contains(row.travel_type, 'L') && fn:contains(row.travel_type, 'D')}">숙박 당일</c:when>
                                                                <c:when test="${fn:contains(row.travel_type, 'L')}">숙박</c:when>
                                                                <c:when test="${fn:contains(row.travel_type, 'D')}">당일</c:when>
                                                            </c:choose>
                                                        </p>
                                                    </div>
                                                    <h3>${row.title}</h3>
                                                    <dl>
                                                        <div>
                                                            <dt>예약접수기간</dt>
                                                            <dd>${row.from_date} ~ ${row.to_date}</dd>
                                                        </div>
                                                        <div>
                                                            <dt>안내사항</dt>
                                                            <dd>${row.content}</dd>
                                                        </div>
                                                        <div>
                                                            <dt>주요 방문처</dt>
                                                            <dd>${row.content_detail}</dd>
                                                        </div>
                                                        <div>
                                                            <dt>문의처</dt>
                                                            <dd>${row.contact_information}</dd>
                                                        </div>
                                                    </dl>
                                                    <p><a href="${row.link}" target="_blank"><span>자세히 보기</span></a></p>
                                                </article>
                                                <button class="modal-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:if>
                        </c:if>
                        <section class="list-thumbnail list-thumbnail--contents">
                            <h3>${empty search.search_trend_gb ? '2023 여행' : page_title} 트렌드 알아보기</h3>
                            <c:if test="${not empty contents}">
                                <c:if test="${contents.result}">
                                    <c:set var="list" value="${contents.data.list}"/>
                                    <c:choose>
                                        <c:when test="${not empty list}">
                                            <ul>
                                                <c:forEach var="row" items="${list}" varStatus="loop">
                                                    <li>
                                                        <a href="#modal-trend-content-${row.seq}" data-bs-toggle="modal" data-bs-target="#modal-trend-content-${row.seq}">
                                                            <span style="background-image: url('${row.image}')"></span>
                                                            <p>${row.title}</p>
                                                        </a>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </c:when>
                                        <c:otherwise><div><p>등록된 내용이 없습니다.</p></div></c:otherwise>
                                    </c:choose>
                                </c:if>
                            </c:if>
                            <c:if test="${not empty contents}">
                                <c:if test="${contents.result}">
                                    <c:if test="${fn:length(contents.data.list) > 6}"><p><button type="button">MORE</button></p></c:if>
                                </c:if>
                            </c:if>
                        </section>
                        <c:if test="${not empty contents}">
                            <c:if test="${contents.result}">
                                <c:set var="list" value="${contents.data.list}"/>
                                <c:forEach var="row" items="${list}" varStatus="loop">
                                    <div class="modal fade modal-trend-contents" id="modal-trend-content-${row.seq}" data-theme="${fn:toLowerCase(row.travel_gb)}" tabindex="-1" data-bs-backdrop="static" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <article>
                                                    <h2 class="modal-trend-contents__theme">
                                                        <c:forEach var="themes" items="${common:getThemes()}" varStatus="loop">
                                                            <c:if test="${themes.theme eq fn:toLowerCase(row.travel_gb)}">${themes.main_title}</c:if>
                                                        </c:forEach>
                                                    </h2>
                                                    <c:set var="jsonObject" value="${common:toJSONObject(row.content)}" />
                                                    <h3 class="modal-trend-contents__title" style="background-image: url('${jsonObject.thumnail}')">${row.title}</h3>
                                                    <c:if test="${fn:length(jsonObject.contents) > 1}">
                                                        <ul class="modal-trend-contents__tab">
                                                            <c:forEach var="sub_row" items="${jsonObject.contents}">
                                                                <li><a class="modal-trend-contents__tab-item" href="#">${sub_row.tab}</a></li>
                                                            </c:forEach>
                                                        </ul>
                                                    </c:if>
                                                    <c:forEach var="sub_row" items="${jsonObject.contents}">
                                                        <div class="modal-trend-contents__panel <c:if test="${fn:length(jsonObject.contents) eq 1}">modal-trend-contents__panel--active</c:if>">
                                                            <h4 class="modal-trend-contents__panel-title">${sub_row.title}</h4>
                                                            <div class="modal-trend-contents__panel-contents">
                                                                <c:forEach var="sub_sub_row" items="${sub_row.contents}">
                                                                    <c:choose>
                                                                        <c:when test="${sub_sub_row.type eq 'text'}">
                                                                            <p>${sub_sub_row.text}</p>
                                                                        </c:when>
                                                                        <c:when test="${sub_sub_row.type eq 'image'}">
                                                                            <p><img src="${sub_sub_row.url}" alt="${sub_sub_row.text}"></p>
                                                                            <p>${sub_sub_row.text}</p>
                                                                        </c:when>
                                                                    </c:choose>
                                                                </c:forEach>
                                                            </div>
                                                            <dl class="modal-trend-contents__panel-info">
                                                                <c:forEach var="info" items="${sub_row.info}">
                                                                    <div>
                                                                        <dt>${info.title}</dt>
                                                                        <dd>
                                                                            <c:forEach var="content" items="${info.contents}">
                                                                                <div>${content}</div>
                                                                            </c:forEach>
                                                                        </dd>
                                                                    </div>
                                                                </c:forEach>
                                                            </dl>
                                                        </div>
                                                    </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:if>
                        </c:if>
                    </article>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../include/include-footer.jspf" %>
</body>
</html>
