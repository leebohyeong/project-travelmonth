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
                <div class="intro-swiper">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            <c:if test="${not empty showcase}">
                                <c:if test="${showcase.result}">
                                    <c:set var="list" value="${showcase.data.list}"/>
                                    <c:forEach var="row" items="${list}" varStatus="loop">
                                        <div class="swiper-slide">
                                            <c:choose>
                                                <c:when test="${not empty row.link}">
                                                    <a href="${row.link}" target="${row.target}">
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
                                    <a href="${pageContext.request.contextPath}/benefits/traffic.do" data-theme="a">교통 <br>혜택</a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="${pageContext.request.contextPath}/benefits/stay.do" data-theme="b">숙박
                                        <br>혜택</a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="${pageContext.request.contextPath}/benefits/play.do" data-theme="c">놀거리 <br>혜택</a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="#" data-theme="d">여행 <br>트렌드관</a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="#" data-theme="e">여행상품 <br>특별 기획전</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="main__trend"><h2>요즘 여행 트렌드는</h2>
                <div class="trend-swiper">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><a href="#"><span></span>
                                <p>농어촌/섬관광</p></a></div>
                            <div class="swiper-slide"><a href="#"><span></span>
                                <p>힐링/웰니스</p></a></div>
                            <div class="swiper-slide"><a href="#"><span></span>
                                <p>친환경여행</p></a></div>
                            <div class="swiper-slide"><a href="#"><span></span>
                                <p>살아보기여행 <br>
                                    (생활관광)</p></a></div>
                            <div class="swiper-slide"><a href="#"><span></span>
                                <p>열린관광</p></a></div>
                            <div class="swiper-slide"><a href="#"><span></span>
                                <p>K-Culture</p></a></div>
                            <div class="swiper-slide"><a href="#"><span></span>
                                <p>스포츠케이션</p></a></div>
                            <div class="swiper-slide"><a href="#"><span></span>
                                <p>취미여행</p></a></div>
                            <div class="swiper-slide"><a href="#"><span></span>
                                <p>미식여행</p></a></div>
                            <div class="swiper-slide"><a href="#"><span></span>
                                <p>반려동물 <br>
                                    동반여행
                                </p></a></div>
                        </div>
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
            </section>
            <section class="main__benefits">
                <h2 class="screen_out">여행혜택</h2>
                <ul>
                    <li><a href="#">
                        <div><p>교통혜택</p>
                            <p>국내여행 준비중이라면 <br>
                                교통혜택을 챙겨가세요!</p></div>
                    </a></li>
                    <li><a href="#">
                        <div><p>숙박혜택</p>
                            <p>여행의 완성은 잠자리! <br>
                                역대급 숙박혜택을 확인하세요</p></div>
                    </a></li>
                    <li><a href="#">
                        <div><p>놀거리혜택택</p>
                            <p>놀거리혜택으로 <br>
                                풍성한 여행을 만들어가세요!</p></div>
                    </a></li>
                    <li><a href="#">
                        <div><p>여행상품 <br>
                            특별 기획전</p>
                            <p>여행가는 달 기간동안 <br>
                                여행업계가 선보이는 <br>
                                각종 혜택들을 만나보세요.
                            </p></div>
                    </a></li>
                </ul>
            </section>
            <aside class="main__special">
                <div><h2 class="screen_out">여행상품 특별 기획전</h2>
                    <p class="screen_out">여행가는 달 기간동안 여행업계가 선보이는 <strong>각종 혜택들을 만나보세요.</strong></p><a href="#">기획전 바로가기</a>
                </div>
            </aside>
            <section class="main__june">
                <div>
                    <header><h2><strong>준</strong>이 추천해 <strong>준</strong> 여행정보</h2><p></p></header>
                    <div class="june-contents">
                        <div class="june-contents__information">
                            <c:if test="${not empty june}">
                                <c:if test="${june.result}">
                                    <c:set var="list" value="${june.data.list}"/>
                                    <c:forEach var="row" items="${list}" varStatus="loop">
                                        <c:if test="${row.june_gb eq 'A'}">
                                            <iframe src="${row.link}">
                                                <span class="screen_out">여행가는달 유튜브영상</span>
                                            </iframe>
                                        </c:if>
                                    </c:forEach>
                                </c:if>
                            </c:if>
                            <div>
                                <div>
                                    <p>주간 <br>여행정보</p>
                                    <a href="#">더보기</a>
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
                                                                   target="${row.link_target}">${row.title}</a>
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
                                                        <a href="${row.link}" target="${row.link_target}" style="background-image:url('${row.image}')">
                                                            <p class="screen_out">${row.title}</p>
                                                        </a>
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="june-contents__tourist-banner">
                                                        <strong style="background-image:url('${row.image}')">
                                                            <p class="screen_out">${row.title}</p>
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
                                                        <a href="${row.link}" target="${row.link_target}"
                                                           class="june-contents__tourist-item"
                                                           style="background-image:url('${row.image}')">
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
                    <header class="main__header"><h2>이벤트</h2><a href="#">이벤트 바로가기</a></header>
                    <div class="event-swiper">
                        <div class="swiper">
                            <div class="swiper-wrapper">
                                <c:if test="${not empty event}">
                                    <c:if test="${event.result}">
                                        <c:set var="list" value="${event.data.list}"/>
                                        <c:forEach var="row" items="${list}" varStatus="loop">
                                            <div class="swiper-slide">
                                                <a href="${row.link}" target="${row.link_target}"
                                                   style="background-image:url('${row.thumbnail}')">
                                                    <p>${row.title}</p>
                                                </a>
                                            </div>
                                        </c:forEach>
                                    </c:if>
                                </c:if>
                            </div>
                            <div class="event-swiper__paging">
                                <div class="event-swiper__paging-prev"></div>
                                <div class="event-swiper__paging-next"></div>
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
                            <a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_1.png" alt="국립공원공단"></a>
                            <a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_2.png" alt="코레일관광개발"></a>
                            <a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_3.png" alt="한국어촌어항공단"></a>
                            <a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_4.png" alt="남해관광문화재단"></a>
                            <a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_5.png" alt="KORAIL"></a>
                            <a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_6.png" alt="한국임업진흥원"></a>
                            <a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_1.png" alt="국립공원공단"></a>
                            <a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_2.png" alt="코레일관광개발"></a>
                            <a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_3.png" alt="한국어촌어항공단"></a>
                            <a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_4.png" alt="남해관광문화재단"></a>
                            <a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_5.png" alt="KORAIL"></a>
                            <a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_6.png" alt="한국임업진흥원"></a>
                        </div>
                    </div>
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"></div>
                            <div class="swiper-slide"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_2.png" alt=""></a></div>
                            <div class="swiper-slide"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_3.png" alt=""></a></div>
                            <div class="swiper-slide"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_4.png" alt=""></a></div>
                            <div class="swiper-slide"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_5.png" alt=""></a></div>
                            <div class="swiper-slide"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/assets/images/main/img_organization_6.png" alt=""></a></div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="main__travel">
                <header><h2>대한민국은 절찬여행중</h2>
                    <p>6월, 꿈꿔왔던 여행의 주인공이 되어보세요! <br>
                        <strong>여행가는 달</strong> <strong>2023.6.1 - 6.30</strong></p><a href="#">여행가는 달 자세히보기</a></header>
                <div>
                    <iframe src="https://www.youtube.com/embed/vwjE85JBIH4"><span class="screen_out">여행으로[웃음을]재생하기</span>
                    </iframe>
                </div>
            </section>
            <section class="main__instagram">
                <header class="main__header"><h2>INSTAGRAM</h2><a href="#">여행가는 달 인스타그램 방문하기</a></header>
                <div class="instagram-swiper">
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