<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="include/include-taglib.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="include/include-head.jspf" %>
</head>
<body id="travelmonth-main">
<%@ include file="include/include-header.jspf" %>
<div id="container">
    <div class="main">
        <section class="main__intro">
            <div class="intro-carousel">
                <div class="swiper">
                    <div class="swiper-wrapper">
                        <c:if test="${not empty showcase}">
                            <c:if test="${showcase.result}">
                                <c:set var="list" value="${showcase.data.list}"/>
                                <c:forEach var="row" items="${list}" varStatus="loop">
                                    <div class="swiper-slide">
                                        <c:choose>
                                            <c:when test="${not empty row.link}">
                                                <a href="${row.link}" target="${row.link_target}">
                                                    <picture>
                                                        <source srcset="${row.pc_image}" media="(min-width: 992px)">
                                                        <img src="${row.mo_image}" alt="${row.alt}">
                                                    </picture>
                                                </a>
                                            </c:when>
                                            <c:otherwise>
                                                <picture>
                                                    <source srcset="${row.pc_image}" media="(min-width: 992px)">
                                                    <img src="${row.mo_image}" alt="${row.alt}">
                                                </picture>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </c:forEach>
                            </c:if>
                        </c:if>
                    </div>
                    <div class="swiper-navigation">
                        <div class="swiper-navigation-prev"></div>
                        <div class="swiper-navigation-next"></div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </section>
        <section class="main__category">
            <ul class="category-tab">
                <li><a class="category-tab__item category-tab__item--active" href="#"><p><strong>지역</strong>
                    어디로 떠나시나요?</p></a></li>
                <li><a class="category-tab__item" href="#"><p><strong>프로그램</strong>
                    어떤 프로그램을 원하세요?
                </p></a></li>
            </ul>
            <div class="category-tab-contents">
                <div class="category-panel category-tab-contents__location category-panel--active">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            <c:set var="local" value="${local:getList()}"/>
                            <c:if test="${not empty local}">
                                <c:if test="${local.result}">
                                    <c:set var="list" value="${local.data.list}"/>
                                    <c:forEach var="row" items="${list}" varStatus="loop">
                                        <div class="swiper-slide">
                                            <c:set var="name_en" value="${fn:toLowerCase(row.name_en)}"/>
                                            <c:if test="${row.code eq '01' || row.code eq '04' || row.code eq '09'}">
                                                <c:set var="name_en" value="seoul-incheon-gyeonggi"/>
                                            </c:if>
                                            <a href="${pageContext.request.contextPath}/benefits/local/${name_en}.do"
                                               data-gtag-action="2023 여행가는 달_메인"
                                               data-gtag-category="main_local_tab_${fn:replace(fn:toLowerCase(name_en), '-', '_')}"
                                               data-gtag-label="${fn:replace(fn:toLowerCase(row.name_kr), '-', '_')}"
                                               data-theme="${row.code}">${row.name_kr}</a>
                                        </div>
                                    </c:forEach>
                                </c:if>
                            </c:if>
                        </div>
                    </div>
                </div>
                <div class="category-panel category-tab-contents__program">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <a href="${pageContext.request.contextPath}/benefits/traffic.do"
                                   data-gtag-action="2023 여행가는 달_메인"
                                   data-gtag-category="main_program_tab_travel"
                                   data-gtag-label="교통혜택"
                                   data-theme="a">교통 <br>혜택</a>
                            </div>
                            <div class="swiper-slide">
                                <a href="${pageContext.request.contextPath}/benefits/stay.do"
                                   data-gtag-action="2023 여행가는 달_메인"
                                   data-gtag-category="main_program_tab_accommodation"
                                   data-gtag-label="숙박혜택"
                                   data-theme="b">숙박
                                    <br>혜택</a>
                            </div>
                            <div class="swiper-slide">
                                <a href="${pageContext.request.contextPath}/benefits/play.do"
                                   data-gtag-action="2023 여행가는 달_메인"
                                   data-gtag-category="main_program_tab_play"
                                   data-gtag-label="놀거리혜택"
                                   data-theme="c">놀거리 <br>혜택</a>
                            </div>
                            <div class="swiper-slide">
                                <a href="${pageContext.request.contextPath}/trend/list.do"
                                   data-gtag-action="2023 여행가는 달_메인"
                                   data-gtag-category="main_program_tab_trend"
                                   data-gtag-label="트렌드관"
                                   data-theme="d">여행 <br>트렌드관</a>
                            </div>
                            <div class="swiper-slide">
                                <a href="${pageContext.request.contextPath}/special/list.do"
                                   data-gtag-action="2023 여행가는 달_메인"
                                   data-gtag-category="main_program_tab_special"
                                   data-gtag-label="여행상품 특별 기획전"
                                   data-theme="e">여행상품 <br>특별 기획전</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="main__trend">
            <header><h2>요즘 <strong>여행 트렌드</strong>는</h2></header>
            <div class="trend-carousel">
                <div class="swiper">
                    <div class="swiper-wrapper">
                        <c:forEach var="row" items="${common:getThemes()}" varStatus="loop">
                            <div class="swiper-slide">
                                <a href="${pageContext.request.contextPath}/trend/trend-${row.theme}.do"
                                   data-gtag-action="2023 여행가는 달_메인"
                                   data-gtag-category="main_trend_${row.ga_tag}"
                                   data-gtag-label="${row.ga_tag_title}"
                                   data-theme="${row.theme}">
                                    <p>${row.main_title}</p>
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="swiper-scrollbar"></div>
                </div>
            </div>
        </section>
        <section class="main__benefits list-thumbnail list-thumbnail--benefits-more">
            <h2>여행혜택</h2>
            <ul>
                <li data-benefit="traffic">
                    <a href="${pageContext.request.contextPath}/benefits/traffic.do"
                       data-gtag-action="2023 여행가는 달_메인" data-gtag-category="main_banner_traffic" data-gtag-label="교통혜택">
                        <h4>교통혜택</h4>
                        <p>열차&#8226;항공&#8226;렌터카&#8226;시티투어 할인<br>우리 함께 떠나요!</p>
                    </a>
                </li>
                <li data-benefit="stay">
                    <a href="${pageContext.request.contextPath}/benefits/stay.do"
                       data-gtag-action="2023 여행가는 달_메인" data-gtag-category="main_banner_accommodation" data-gtag-label="숙박혜택">
                        <h4>숙박혜택</h4>
                        <p>국내 숙박 최대 5만원 할인<br>역대급 숙박혜택을 확인하세요!</p>
                    </a>
                </li>
                <li data-benefit="play">
                    <a href="${pageContext.request.contextPath}/benefits/play.do"
                       data-gtag-action="2023 여행가는 달_메인" data-gtag-category="main_banner_play" data-gtag-label="놀거리혜택">
                        <h4>놀거리혜택</h4>
                        <p>놀거리혜택으로<br>풍성한 여행을 만들어가세요!</p>
                    </a>
                </li>
                <li data-benefit="special">
                    <a href="${pageContext.request.contextPath}/special/list.do"
                       data-gtag-action="2023 여행가는 달_메인" data-gtag-category="main_banner_special" data-gtag-label="여행상품 특별 기획전">
                        <h4>여행상품<br>특별 기획전</h4>
                        <p>관광지 입장 할인, 다양한 방문인증 이벤트 등<br>풍성한 혜택을 만나보세요!</p>
                    </a>
                </li>
            </ul>
        </section>
        <aside class="main__special">
            <div>
                <h2>여행상품 특별 기획전</h2>
                <p>여행가는 달 기간동안 여행업계가 선보이는 <strong>각종 혜택들을 만나보세요.</strong></p>
                <a href="${pageContext.request.contextPath}/special/list.do">기획전 바로가기</a>
            </div>
        </aside>
        <section class="main__june">
            <div>
                <header>
                    <h2><strong>준</strong>이 추천해 <strong>준</strong> 여행정보</h2>
                    <p></p>
                </header>
                <div class="june-contents">
                    <div class="june-contents__information">
                        <c:if test="${not empty june}">
                            <c:if test="${june.result}">
                                <c:set var="list" value="${june.data.list}"/>
                                <c:forEach var="row" items="${list}" varStatus="loop">
                                    <c:if test="${row.june_gb eq 'A'}">
                                        <iframe src="${row.link}">
                                            <span>여행가는달 유튜브영상</span>
                                        </iframe>
                                    </c:if>
                                </c:forEach>
                            </c:if>
                        </c:if>
                        <div>
                            <div>
                                <p>주간 <br>여행정보</p>
                                <a href="${pageContext.request.contextPath}/benefits/local/gangwon.do"
                                   data-gtag-action="2023 여행가는 달_메인" data-gtag-category="main_local_more" data-gtag-label="주간 여행정보 더보기">더보기</a>
                            </div>
                            <ul>
                                <c:if test="${not empty june}">
                                    <c:if test="${june.result}">
                                        <c:set var="list" value="${june.data.list}"/>
                                        <c:forEach var="row" items="${list}" varStatus="loop">
                                            <c:if test="${loop.index gt 0 && loop.index lt 6}">
                                                <li>
                                                    <c:choose>
                                                        <c:when test="${not empty row.link}">
                                                            <a href="${row.link}"
                                                               target="${row.link_target}"
                                                               data-gtag-action="2023 여행가는 달_메인"
                                                               data-gtag-category="main_june_left_${loop.count}"
                                                               data-gtag-label="${common:getTagText(row.title)}">${row.title}</a>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <strong>${row.title}</strong>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </li>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                    <div class="june-contents__tourist">
                        <c:if test="${not empty june}">
                            <c:if test="${june.result}">
                                <c:set var="list" value="${june.data.list}"/>
                                <c:forEach var="row" items="${list}" varStatus="loop">
                                    <c:if test="${row.june_gb eq 'G'}">
                                        <c:choose>
                                            <c:when test="${not empty row.link}">
                                                <div class="june-contents__tourist-banner">
                                                    <a href="${row.link}"
                                                       target="${row.link_target}"
                                                       style="background-image:url('${row.image}')"
                                                       data-gtag-action="2023 여행가는 달_메인"
                                                       data-gtag-category="main_june_right_1"
                                                       data-gtag-label="${common:getTagText(row.title)}">
                                                        <p>${row.title}</p>
                                                    </a>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="june-contents__tourist-banner">
                                                    <strong style="background-image:url('${row.image}')">
                                                        <p>${row.title}</p>
                                                    </strong>
                                                </div>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:if>
                                </c:forEach>
                            </c:if>
                        </c:if>
                        <div class="june-contents__tourist-list">
                            <c:if test="${not empty june}">
                                <c:if test="${june.result}">
                                    <c:set var="list" value="${june.data.list}"/>
                                    <c:forEach var="row" items="${list}" varStatus="loop">
                                        <c:if test="${loop.index gt 6 && loop.index lt 11}">
                                            <c:choose>
                                                <c:when test="${not empty row.link}">
                                                    <a href="${row.link}"
                                                       target="${row.link_target}"
                                                       class="june-contents__tourist-item"
                                                       style="background-image:url('${row.image}')"
                                                       data-gtag-action="2023 여행가는 달_메인"
                                                       data-gtag-category="main_june_right_${loop.index - 5}"
                                                       data-gtag-label="${common:getTagText(row.title)}">
                                                        <p class="june-contents__tourist-text">${row.title}</p>
                                                    </a>
                                                </c:when>
                                                <c:otherwise>
                                                    <strong style="background-image:url('${row.image}')">
                                                        <p class="june-contents__tourist-text">${row.title}</p>
                                                    </strong>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:if>
                                    </c:forEach>
                                </c:if>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="main__event">
            <div>
                <header class="main__header">
                    <h2>이벤트</h2>
                    <a href="${pageContext.request.contextPath}/event/list.do"
                       data-gtag-action="2023 여행가는 달_메인" data-gtag-category="main_event_more" data-gtag-label="이벤트 바로가기">이벤트 바로가기</a>
                </header>
                <div class="event-carousel">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            <c:if test="${not empty event}">
                                <c:if test="${event.result}">
                                    <c:set var="list" value="${event.data.list}"/>
                                    <c:forEach var="row" items="${list}" varStatus="loop">
                                        <div class="swiper-slide">
                                            <a href="${row.link}"
                                               target="${row.link_target}"
                                               data-gtag-action="2023 여행가는 달_메인"
                                               data-gtag-category="main_event_list"
                                               data-gtag-label="${common:getTagText(row.title)}">
                                                <span style="background-image:url('${row.thumbnail}')"></span>
                                                <p>${row.title}</p>
                                            </a>
                                        </div>
                                    </c:forEach>
                                </c:if>
                            </c:if>
                        </div>
                        <div class="event-carousel__paging">
                            <div class="event-carousel__paging-prev"></div>
                            <div class="event-carousel__paging-next"></div>
                        </div>
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
            </div>
        </section>
        <section class="main__organization">
            <div>
                <header class="main__header"><h2>여행가는 달 참여기관</h2></header>
                <div>
                    <div>
                        <a href="#" target="_blank"><img
                                src="${pageContext.request.contextPath}/assets/images/main/img_organization_1.png"
                                alt="국립공원공단"></a>
                        <a href="#" target="_blank"><img
                                src="${pageContext.request.contextPath}/assets/images/main/img_organization_2.png"
                                alt="코레일관광개발"></a>
                        <a href="#" target="_blank"><img
                                src="${pageContext.request.contextPath}/assets/images/main/img_organization_3.png"
                                alt="한국어촌어항공단"></a>
                        <a href="#" target="_blank"><img
                                src="${pageContext.request.contextPath}/assets/images/main/img_organization_4.png"
                                alt="남해관광문화재단"></a>
                        <a href="#" target="_blank"><img
                                src="${pageContext.request.contextPath}/assets/images/main/img_organization_5.png"
                                alt="KORAIL"></a>
                        <a href="#" target="_blank"><img
                                src="${pageContext.request.contextPath}/assets/images/main/img_organization_6.png"
                                alt="한국임업진흥원"></a>
                        <a href="#" target="_blank"><img
                                src="${pageContext.request.contextPath}/assets/images/main/img_organization_1.png"
                                alt="국립공원공단"></a>
                        <a href="#" target="_blank"><img
                                src="${pageContext.request.contextPath}/assets/images/main/img_organization_2.png"
                                alt="코레일관광개발"></a>
                        <a href="#" target="_blank"><img
                                src="${pageContext.request.contextPath}/assets/images/main/img_organization_3.png"
                                alt="한국어촌어항공단"></a>
                        <a href="#" target="_blank"><img
                                src="${pageContext.request.contextPath}/assets/images/main/img_organization_4.png"
                                alt="남해관광문화재단"></a>
                        <a href="#" target="_blank"><img
                                src="${pageContext.request.contextPath}/assets/images/main/img_organization_5.png"
                                alt="KORAIL"></a>
                        <a href="#" target="_blank"><img
                                src="${pageContext.request.contextPath}/assets/images/main/img_organization_6.png"
                                alt="한국임업진흥원"></a>
                    </div>
                </div>
            </div>
        </section>
        <section class="main__travel">
            <header><h2>대한민국은 절찬여행중</h2>
                <p>
                    6월, 꿈꿔왔던 여행의 주인공이 되어보세요! <br>
                    <strong>여행가는 달</strong>
                    <strong>2023.6.1 - 6.30</strong>
                </p>
                <a href="${pageContext.request.contextPath}/intro.do"
                   data-gtag-action="2023 여행가는 달_메인" data-gtag-category="main_travelmonth_more" data-gtag-label="여행가는 달 자세히보기">여행가는 달 자세히보기</a>
            </header>
            <div>
                <iframe src="https://www.youtube.com/embed/vwjE85JBIH4"><span>여행으로[웃음을]재생하기</span></iframe>
            </div>
        </section>
        <section class="main__instagram">
            <header class="main__header">
                <h2>INSTAGRAM</h2>
                <a href="https://www.instagram.com/travelweek.kto/" target="_blank"
                   data-gtag-action="2023 여행가는 달_메인" data-gtag-category="main_instagram_more" data-gtag-label="여행가는 달 인스타그램 방문하기">여행가는 달 인스타그램 방문하기</a>
            </header>
            <div class="instagram-carousel">
                <div class="swiper">
                    <div class="swiper-wrapper">
                        <c:if test="${not empty instagram}">
                            <c:if test="${instagram.result}">
                                <c:set var="list" value="${instagram.data.list}"/>
                                <c:forEach var="row" items="${list}" varStatus="loop">
                                    <div class="swiper-slide">
                                        <a href="${row.permalink}" target="_blank"
                                           style="background-image:url('${row.media_url}')"></a>
                                    </div>
                                </c:forEach>
                            </c:if>
                        </c:if>
                    </div>
                    <div class="swiper-scrollbar"></div>
                </div>
            </div>
        </section>
    </div>
</div>
<%@ include file="include/include-footer.jspf" %>
</body>
</html>