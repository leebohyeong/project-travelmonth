<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/include-taglib.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="../include/include-head.jspf" %>
</head>
<body id="travelmonth-event-list">
    <%@ include file="../include/include-header.jspf" %>
    <div id="container">
        <article class="event-list">
            <header>
                <div>
                    <h2>여행가는 달<br> 이벤트</h2>
                    <p>6월 여행가는 달에만 진행되는 특별한 이벤트<br>참여하시고 푸짐한 경품도 챙기세요!</p>
                </div>
            </header>
            <c:if test="${not empty banner}">
                <c:if test="${banner.result}">
                    <c:set var="list" value="${banner.data.list}"/>
                    <c:if test="${fn:length(list) > 0}">
                        <div class="event-list--swiper">
                            <div class="swiper">
                                <div class="swiper-wrapper">
                                    <c:forEach var="row" items="${list}" varStatus="loop">
                                        <div class="swiper-slide">
                                            <a href="${row.link}"
                                               target="${row.link_target}"
                                               data-gtag-action="2023 여행가는 달_여행상품 특별 기획전"
                                               data-gtag-category="event_banner_top"
                                               data-gtag-label="${common:getTagText(row.title)}"
                                               data-ga-category="2023 여행가는 달_이벤트"
                                               data-ga-action="이벤트_상단탑배너"
                                               data-ga-label="${common:getTagText(row.title)}">
                                                <picture>
                                                    <source srcset="${row.banner}" media="(min-width: 768px)">
                                                    <img src="${row.banner}" alt="${row.banner_alt}">
                                                </picture>
                                            </a>
                                        </div>
                                    </c:forEach>
                                </div>
                                <div class="swiper-navigation">
                                    <div class="swiper-navigation-prev"></div>
                                    <div class="swiper-navigation-next"></div>
                                </div>
                                <div class="swiper-pagination"></div>
                            </div>
                        </div>
                    </c:if>
                </c:if>
            </c:if>
            <div class="event-list--list">
                <div class="event-list--list__tab">
                    <ul class="category-tab">
                        <li><a class="category-tab__item category-tab__item--active" href="">진행 중 이벤트</a></li>
                        <li><a class="category-tab__item" href="">종료 이벤트 및 당첨자 발표</a></li>
                    </ul>
                    <div class="category-tab-contents">
                        <div class="category-panel category-panel--active">
                            <section class="list-thumbnail list-thumbnail--events">
                                <c:if test="${not empty progress}">
                                    <c:if test="${progress.result}">
                                        <c:set var="list" value="${progress.data.list}"/>
                                        <c:choose>
                                            <c:when test="${not empty list}">
                                                <ul>
                                                    <c:forEach var="row" items="${list}" varStatus="loop">
                                                        <c:set var="hidden_class" value=""/>
                                                        <c:if test="${loop.count > 6}">
                                                            <c:set var="hidden_class" value="class='list-thumbnail__item--hide'"/>
                                                        </c:if>
                                                        <li ${hidden_class}>
                                                            <a href="${row.link}"
                                                               target="${row.link_target}"
                                                               data-gtag-action="2023 여행가는 달_여행상품 특별 기획전"
                                                               data-gtag-category="event_banner_list"
                                                               data-gtag-label="${common:getTagText(row.title)}"
                                                               data-ga-category="2023 여행가는 달_이벤트"
                                                               data-ga-action="이벤트_리스트"
                                                               data-ga-label="${common:getTagText(row.title)}">
                                                                <span style="background-image: url('${row.thumbnail}')"></span>
                                                                <p>${row.title}</p>
                                                                <p>${row.from_date} ~ ${row.to_date}</p>
                                                            </a>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </c:when>
                                            <c:otherwise><div><p>등록된 내용이 없습니다.</p></div></c:otherwise>
                                        </c:choose>
                                    </c:if>
                                </c:if>
                            </section>
                        </div>
                        <div class="category-panel">
                            <section class="list-thumbnail list-thumbnail--events">
                                <c:if test="${not empty ended}">
                                    <c:if test="${ended.result}">
                                        <c:set var="list" value="${ended.data.list}"/>
                                        <c:choose>
                                            <c:when test="${not empty list}">
                                                <ul>
                                                    <c:forEach var="row" items="${list}" varStatus="loop">
                                                        <c:set var="hidden_class" value=""/>
                                                        <c:if test="${loop.count > 6}">
                                                            <c:set var="hidden_class" value="class='list-thumbnail__item--hide'"/>
                                                        </c:if>
                                                        <li ${hidden_class}>
                                                            <a href="${row.link}"
                                                               target="${row.link_target}"
                                                               data-gtag-action="2023 여행가는 달_여행상품 특별 기획전"
                                                               data-gtag-category="event_banner_list"
                                                               data-gtag-label="${common:getTagText(row.title)}"
                                                               data-ga-category="2023 여행가는 달_이벤트"
                                                               data-ga-action="이벤트_리스트"
                                                               data-ga-label="${common:getTagText(row.title)}">
                                                                <span style="background-image: url('${row.thumbnail}')"></span>
                                                                <p>${row.title}</p>
                                                                <p>${row.from_date} ~ ${row.to_date}</p>
                                                            </a>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </c:when>
                                            <c:otherwise><div><p>종료된 이벤트가 없습니다.</p></div></c:otherwise>
                                        </c:choose>
                                    </c:if>
                                </c:if>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </div>
    <%@ include file="../include/include-footer.jspf" %>
</body>
</html>
