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
                                                <a href="${row.link}"
                                                   target="${row.link_target}"
                                                   data-gtag-action="2023 여행가는 달_메인"
                                                   data-gtag-category="main_showcase_${row.seq}"
                                                   data-gtag-label="메인 쇼케이스 ${row.seq}"
                                                   data-ga-category="2023 여행가는 달_메인"
                                                   data-ga-action="메인 쇼케이스 ${row.seq}">
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
                                               data-ga-category="2023 여행가는 달_메인"
                                               data-ga-action="지역별_${fn:replace(fn:toLowerCase(row.name_kr), '-', '_')}"
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
                                   data-ga-category="2023 여행가는 달_메인"
                                   data-ga-action="프로그램별_교통혜택"
                                   data-theme="a">교통 <br>혜택</a>
                            </div>
                            <div class="swiper-slide">
                                <a href="${pageContext.request.contextPath}/benefits/stay.do"
                                   data-gtag-action="2023 여행가는 달_메인"
                                   data-gtag-category="main_program_tab_accommodation"
                                   data-gtag-label="숙박혜택"
                                   data-ga-category="2023 여행가는 달_메인"
                                   data-ga-action="프로그램별_숙박혜택"
                                   data-theme="b">숙박<br>혜택</a>
                            </div>
                            <div class="swiper-slide">
                                <a href="${pageContext.request.contextPath}/benefits/play.do"
                                   data-gtag-action="2023 여행가는 달_메인"
                                   data-gtag-category="main_program_tab_play"
                                   data-gtag-label="놀거리혜택"
                                   data-ga-category="2023 여행가는 달_메인"
                                   data-ga-action="프로그램별_놀거리혜택"
                                   data-theme="c">놀거리 <br>혜택</a>
                            </div>
                            <div class="swiper-slide">
                                <a href="${pageContext.request.contextPath}/trend/list.do"
                                   data-gtag-action="2023 여행가는 달_메인"
                                   data-gtag-category="main_program_tab_trend"
                                   data-gtag-label="트렌드관"
                                   data-ga-category="2023 여행가는 달_메인"
                                   data-ga-action="프로그램별_여행트렌드관"
                                   data-theme="d">여행 <br>트렌드관</a>
                            </div>
                            <div class="swiper-slide">
                                <a href="${pageContext.request.contextPath}/special/list.do"
                                   data-gtag-action="2023 여행가는 달_메인"
                                   data-gtag-category="main_program_tab_special"
                                   data-gtag-label="여행상품 특별 기획전"
                                   data-ga-category="2023 여행가는 달_메인"
                                   data-ga-action="프로그램별_여행상품 특별 기획전"
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
                                   data-ga-category="2023 여행가는 달_메인"
                                   data-ga-action="여행트렌드_${row.ga_tag_title}"
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
                       data-gtag-action="2023 여행가는 달_메인"
                       data-gtag-category="main_banner_traffic"
                       data-gtag-label="교통혜택"
                       data-ga-category="2023 여행가는 달_메인"
                       data-ga-action="배너_교통혜택">
                        <h4>교통혜택</h4>
                        <p>열차&#8226;항공&#8226;렌터카&#8226;시티투어 할인<br>우리 함께 떠나요!</p>
                    </a>
                </li>
                <li data-benefit="stay">
                    <a href="${pageContext.request.contextPath}/benefits/stay.do"
                       data-gtag-action="2023 여행가는 달_메인"
                       data-gtag-category="main_banner_accommodation"
                       data-gtag-label="숙박혜택"
                       data-ga-category="2023 여행가는 달_메인"
                       data-ga-action="배너_숙박혜택">
                        <h4>숙박혜택</h4>
                        <p>국내 숙박 최대 5만원 할인<br>역대급 숙박혜택을 확인하세요!</p>
                    </a>
                </li>
                <li data-benefit="play">
                    <a href="${pageContext.request.contextPath}/benefits/play.do"
                       data-gtag-action="2023 여행가는 달_메인"
                       data-gtag-category="main_banner_play"
                       data-gtag-label="놀거리혜택"
                       data-ga-category="2023 여행가는 달_메인"
                       data-ga-action="배너_놀거리혜택">
                        <h4>놀거리혜택</h4>
                        <p>놀거리혜택으로<br>풍성한 여행을 만들어가세요!</p>
                    </a>
                </li>
                <li data-benefit="special">
                    <a href="${pageContext.request.contextPath}/special/list.do"
                       data-gtag-action="2023 여행가는 달_메인"
                       data-gtag-category="main_banner_special"
                       data-gtag-label="여행상품 특별 기획전"
                       data-ga-category="2023 여행가는 달_메인"
                       data-ga-action="배너_여행상품 특별 기획전">
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
                <a href="${pageContext.request.contextPath}/special/list.do"
                   data-gtag-action="2023 여행가는 달_메인"
                   data-gtag-category="main_banner_special"
                   data-gtag-label="여행상품 특별 기획전"
                   data-ga-category="2023 여행가는 달_메인"
                   data-ga-action="배너_여행상품 특별 기획전">기획전 바로가기</a>
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
                                        <div id="player"></div>
                                        <%--<iframe src="${row.link}">
                                            <span>여행가는달 유튜브영상</span>
                                        </iframe>--%>
                                    </c:if>
                                </c:forEach>
                            </c:if>
                        </c:if>
                        <div>
                            <div>
                                <p>지역별 <br>여행정보</p>
                                <a href="${pageContext.request.contextPath}/benefits/local/gangwon.do"
                                   data-gtag-action="2023 여행가는 달_메인"
                                   data-gtag-category="main_local_more"
                                   data-gtag-label="주간 여행정보 더보기"
                                   data-ga-category="2023 여행가는 달_메인"
                                   data-ga-action="주간 여행정보 더보기">더보기</a>
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
                                                               data-gtag-label="${common:getTagText(row.title)}"
                                                               data-ga-category="2023 여행가는 달_메인"
                                                               data-ga-action="준이 추천해준 여행정보_${fn:toUpperCase(row.june_gb)}영역"
                                                               data-ga-label="${common:getTagText(row.title)}">${row.title}</a>
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
                                                       data-gtag-label="${common:getTagText(row.title)}"
                                                       data-ga-category="2023 여행가는 달_메인"
                                                       data-ga-action="준이 추천해준 여행정보_${fn:toUpperCase(row.june_gb)}영역"
                                                       data-ga-label="${common:getTagText(row.title)}">
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
                                                       data-gtag-label="${common:getTagText(row.title)}"
                                                       data-ga-category="2023 여행가는 달_메인"
                                                       data-ga-action="준이 추천해준 여행정보_${fn:toUpperCase(row.june_gb)}영역"
                                                       data-ga-label="${common:getTagText(row.title)}">
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
                       data-gtag-action="2023 여행가는 달_메인"
                       data-gtag-category="main_event_more"
                       data-gtag-label="이벤트 바로가기"
                       data-ga-category="2023 여행가는 달_메인"
                       data-ga-action="이벤트 바로가기"
                       data-ga-label="${common:getTagText(row.title)}">이벤트 바로가기</a>
                </header>
                <div class="event-carousel">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            <c:if test="${not empty event}">
                                <c:if test="${event.result}">
                                    <c:set var="list" value="${event.data.list}"/>
                                    <c:forEach var="row" items="${list}" varStatus="loop">
                                        <div class="swiper-slide">
                                            <c:choose>
                                                <c:when test="${row.registration_gb eq 'O'}">
                                                    <c:choose>
                                                        <c:when test="${not empty row.link}">
                                                            <a href="${row.link}"
                                                               target="${row.link_target}"
                                                               data-gtag-action="2023 여행가는 달_메인"
                                                               data-gtag-category="main_event_list"
                                                               data-gtag-label="${common:getTagText(row.title)}"
                                                               data-ga-category="2023 여행가는 달_메인"
                                                               data-ga-action="이벤트 리스트"
                                                               data-ga-label="${common:getTagText(row.title)}">
                                                                <span style="background-image:url('${row.thumbnail}')"></span>
                                                                <p>${row.title}</p>
                                                            </a>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <a href="#"
                                                               data-gtag-action="2023 여행가는 달_메인"
                                                               data-gtag-category="main_event_list"
                                                               data-gtag-label="${common:getTagText(row.title)}"
                                                               data-ga-category="2023 여행가는 달_메인"
                                                               data-ga-action="이벤트 리스트"
                                                               data-ga-label="${common:getTagText(row.title)}"
                                                               onclick="alert('추후 오픈 예정'); return false;">
                                                                <span style="background-image:url('${row.thumbnail}')"></span>
                                                                <p>${row.title}</p>
                                                            </a>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:when>
                                                <c:otherwise>
                                                    <a
                                                       data-gtag-action="2023 여행가는 달_메인"
                                                       data-gtag-category="main_event_list"
                                                       data-gtag-label="${common:getTagText(row.title)}"
                                                       data-ga-category="2023 여행가는 달_메인"
                                                       data-ga-action="이벤트 리스트"
                                                       data-ga-label="${common:getTagText(row.title)}">
                                                        <span style="background-image:url('${row.thumbnail}')"></span>
                                                        <p>${row.title}</p>
                                                    </a>
                                                </c:otherwise>
                                            </c:choose>
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
                        <img src="/travelmonth/assets/images/intro/img_organization_2_1.jpg" alt="한국관광공사">
                        <img src="/travelmonth/assets/images/intro/img_organization_3_1.jpg" alt="국가보훈처">
                        <img src="/travelmonth/assets/images/intro/img_organization_3_2.jpg" alt="해양수산부">
                        <img src="/travelmonth/assets/images/intro/img_organization_3_3.jpg" alt="문화재청">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_1.jpg" alt="거창군">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_2.jpg" alt="경상남도">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_3.jpg" alt="경상북도">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_4.jpg" alt="">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_5.jpg" alt="김제시">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_6.jpg" alt="여주시">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_7.jpg" alt="인천광역시">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_8.jpg" alt="전라남도">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_9.jpg" alt="충청남도">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_10.jpg" alt="충청북도">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_11.jpg" alt="변화의 중심 기회의 경기">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_12.jpg" alt="흥미진진 공주">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_13.jpg" alt="남원시">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_14.jpg" alt="대구광역시">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_15.jpg" alt="대전광역시">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_16.jpg" alt="부산광역시">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_17.jpg" alt="부안군">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_18.jpg" alt="사천">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_19.jpg" alt="임실군">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_20.jpg" alt="전라남도">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_21.jpg" alt="자유치유도시 제천">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_22.jpg" alt="창녕군">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_23.jpg" alt="충주시">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_24.jpg" alt="하동군">
                        <img src="/travelmonth/assets/images/intro/img_organization_4_25.jpg" alt="홍성군">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_1.jpg" alt="SR">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_2.jpg" alt="강원도관광재단">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_3.jpg" alt="경남관광재단">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_4.jpg" alt="국립아시아문화전당">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_5.jpg" alt="대구문화예술진흥원">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_6.jpg" alt="대전광역시관광협회">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_7.jpg" alt="부산관광공사">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_8.jpg" alt="전라남도 관광재단">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_9.jpg" alt="전북문화관광재단">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_10.jpg" alt="태권도진흥재단">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_11.jpg" alt="HIGH1">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_12.jpg" alt="한국산업기술평가관리원">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_13.jpg" alt="경기관광공사">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_14.jpg" alt="경상북도문화관광공사">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_15.jpg" alt="국립공원">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_16.jpg" alt="국립대구박물관">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_17.jpg" alt="국립해양과학관">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_18.jpg" alt="대한민국술테마박물관">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_19.jpg" alt="독립기념과">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_20.jpg" alt="유엔평화기념관">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_21.jpg" alt="인천관광공사">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_22.jpg" alt="제주관광공사">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_23.jpg" alt="제주특별자치도관광협회">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_24.jpg" alt="JAM">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_25.jpg" alt="청풍호반케이블카">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_26.jpg" alt="KENSINGTON">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_27.jpg" alt="코레일관광개발">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_28.jpg" alt="한국공항공사">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_29.jpg" alt="한국농어촌공사">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_30.jpg" alt="한국등산트레킹지원센터">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_31.jpg" alt="한국문화예술위원회">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_32.jpg" alt="한국불교문화사업단">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_33.jpg" alt="한국어촌어항공단">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_34.jpg" alt="한국임업진흥원">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_35.jpg" alt="한국철도">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_36.jpg" alt="한국농총경제연구원">
                        <img src="/travelmonth/assets/images/intro/img_organization_5_37.jpg" alt="한국항로표지기술원">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_1.jpg" alt="프라이빗 이동 서비스, 무브">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_2.jpg" alt="문화상상연구소">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_3.jpg" alt="SOCAR">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_4.jpg" alt="DRIV">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_5.jpg" alt="EMART24">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_6.jpg" alt="카모아">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_7.jpg" alt="DMZ FLOWER TEA">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_8.jpg" alt="미스터멘션">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_10.jpg" alt="여행공방">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_11.jpg" alt="임자만났네">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_12.jpg" alt="JINAIR">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_13.jpg" alt="Kakako mobility">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_14.jpg" alt="TLBAL">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_15.jpg" alt="파주 임진각평화곤둘라">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_16.jpg" alt="하이웨어">
                        <img src="/travelmonth/assets/images/intro/img_organization_6_17.jpg" alt="호텔스컴바인">
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
                   data-gtag-action="2023 여행가는 달_메인"
                   data-gtag-category="main_travelmonth_more"
                   data-gtag-label="여행가는 달 자세히보기"
                   data-ga-category="2023 여행가는 달_메인"
                   data-ga-action="여행가는 달 자세히보기">여행가는 달 자세히보기</a>
            </header>
            <div>
                <iframe src="https://www.youtube.com/embed/HWKzDx-aAgE"><span>여행으로[웃음을]재생하기</span></iframe>
            </div>
        </section>
        <section class="main__instagram">
            <header class="main__header">
                <h2>INSTAGRAM</h2>
                <a href="https://www.instagram.com/travelweek.kto/" target="_blank"
                   data-gtag-action="2023 여행가는 달_메인"
                   data-gtag-category="main_instagram_more"
                   data-gtag-label="여행가는 달 인스타그램 방문하기"
                   data-ga-category="2023 여행가는 달_메인"
                   data-ga-action="여행가는 달 인스타그램 방문하기">여행가는 달 인스타그램 방문하기</a>
            </header>
            <div class="instagram-carousel">
                <div class="swiper">
                    <div class="swiper-wrapper">
                        <c:if test="${not empty instagram}">
                            <c:if test="${instagram.result}">
                                <c:set var="list" value="${instagram.data.list}"/>
                                <c:forEach var="row" items="${list}" varStatus="loop">
                                    <div class="swiper-slide">
                                        <c:choose>
                                            <c:when test="${row.media_type eq 'CAROUSEL_ALBUM'}">
                                                <a href="${row.permalink}" target="_blank"
                                                   style="background-image:url('${row.media_url}')"></a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href="${row.permalink}" target="_blank"
                                                   style="background-image:url('${row.thumbnail_url}')"></a>
                                            </c:otherwise>
                                        </c:choose>
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
<script>
    // 2. This code loads the IFrame Player API code asynchronously.
    var tag = document.createElement('script');

    tag.src = "https://www.youtube.com/iframe_api";
    var firstScriptTag = document.getElementsByTagName('script')[0];
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

    // 3. This function creates an <iframe> (and YouTube player)
    //    after the API code downloads.
    var player;
    function onYouTubeIframeAPIReady() {
        player = new YT.Player('player', {
            videoId: 'UgTrlxzy47k',
            events: {
                'onReady': onPlayerReady,
                'onStateChange': onPlayerStateChange
            }
        });
    }

    // 4. The API will call this function when the video player is ready.
    function onPlayerReady(event) {
        event.target.playVideo();
    }

    // 5. The API calls this function when the player's state changes.
    //    The function indicates that when playing a video (state=1),
    //    the player should play for six seconds and then stop.
    var done = false;
    function onPlayerStateChange(event) {
        if (event.data == YT.PlayerState.PLAYING && !done) {
            setTimeout(stopVideo, 6000);
            done = true;
        }
    }
    function stopVideo() {
        player.stopVideo();
    }
</script>
<%@ include file="include/include-footer.jspf" %>
</body>
</html>