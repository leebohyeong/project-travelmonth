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
                                    <h2><span>${page_sub_title}</span><strong>${page_main_title}</strong></h2>
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
                                                    <a href="${pageContext.request.contextPath}/trend/list.do"
                                                       data-theme=""
                                                       data-gtag-action="2023 여행가는 달_trend관"
                                                       data-gtag-category="trend_all_tab"
                                                       data-gtag-label="전체"
                                                       data-ga-category="2023 여행가는 달_trend관"
                                                       data-ga-action="TAB_전체">전체</a>
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
                                                        <a href="${pageContext.request.contextPath}/trend/trend-${row.theme}.do"
                                                           data-theme="${row.theme}"
                                                           data-gtag-action="2023 여행가는 달_trend관"
                                                           data-gtag-category="trend_${row.ga_tag}_tab"
                                                           data-gtag-label="${row.ga_tag_title}"
                                                           data-ga-category="2023 여행가는 달_trend관"
                                                           data-ga-action="TAB_${row.ga_tag_title}">${row.title}</a>
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
                                                        <dd>
                                                            <a href="${pageContext.request.contextPath}/trend/trend-${row.theme}.do"
                                                               data-gtag-action="2023 여행가는 달_trend관"
                                                               data-gtag-category="trend_${row.ga_tag}_more"
                                                               data-gtag-label="${row.ga_tag_title}_여행 프로그램 확인하기"
                                                               data-ga-category="2023 여행가는 달_trend관"
                                                               data-ga-action="${row.ga_tag_title}_여행 프로그램 확인하기">여행 프로그램 확인하기</a>
                                                        </dd>
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
                        <c:if test="${!fn:contains(path, '/trend/trend-e.do')}">
                            <section class="list-thumbnail list-thumbnail--goods">
                                <h3>${empty search.search_trend_gb ? '해보고 싶은' : page_main_title} 여행 떠나보기</h3>
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
                                                            <c:set var="theme" value="${common:getTheme(fn:toLowerCase(row.themes))}"/>
                                                            <a href="#modal-goods-${row.seq}"
                                                               data-bs-toggle="modal"
                                                               data-bs-target="#modal-goods-${row.seq}"
                                                               data-gtag-action="2023 여행가는 달_trend관"
                                                               data-gtag-category="trend_${theme.ga_tag}_product_list"
                                                               data-gtag-label="${fn:trim(common:getTagText(row.title))}"
                                                               data-ga-category="2023 여행가는 달_여행트렌드관"
                                                               data-ga-action="${theme.ga_tag_title}_여행상품_리스트"
                                                               data-ga-label="${fn:trim(common:getTagText(row.title))}">
                                                                <span style="background-image: url('${row.image}')"></span>
                                                                <div class="list-thumbnail--goods--theme">
                                                                    <c:forEach var="sub_row" items="${fn:split(theme.main_title, '_')}">
                                                                        <p>${sub_row}</p>
                                                                    </c:forEach>
                                                                </div>
                                                                <p>
                                                                    <fmt:parseDate var="strFromDate" pattern="yyyy-MM-dd" value="${row.from_date}"/>
                                                                    <fmt:formatDate var="fromDate" pattern="MM/dd" value="${strFromDate}"/>
                                                                    <fmt:parseDate var="strToDate" pattern="yyyy-MM-dd" value="${row.to_date}"/>
                                                                    <fmt:formatDate var="ToDate" pattern="MM/dd" value="${strToDate}"/>
                                                                    <c:if test="${not empty fromDate && not empty ToDate}">
                                                                        예약신청기간 : ${fromDate}~${ToDate}
                                                                    </c:if>
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
                                        <c:set var="theme" value="${common:getTheme(fn:toLowerCase(row.themes))}"/>
                                        <div class="modal fade modal-goods" id="modal-goods-${row.seq}" tabindex="-1" data-bs-backdrop="static" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <article>
                                                        <div style="background-image: url('${row.image}')"></div>
                                                        <div class="modal-goods--theme">
                                                            <c:forEach var="sub_row" items="${fn:split(theme.main_title, '_')}">
                                                                <p>${sub_row}</p>
                                                            </c:forEach>
                                                        </div>
                                                        <div class="modal-goods--category">
                                                            <p>여행상품</p>
                                                            <p>
                                                                <c:choose>
                                                                    <c:when test="${fn:contains(row.travel_type, 'L') && fn:contains(row.travel_type, 'D')}">숙박 당일</c:when>
                                                                    <c:when test="${fn:contains(row.travel_type, 'L')}">숙박</c:when>
                                                                    <c:when test="${fn:contains(row.travel_type, 'D')}">당일</c:when>
                                                                </c:choose>
                                                            </p>
                                                            <c:if test="${not empty row.price}">
                                                                <p class="price">${row.price}</p>
                                                            </c:if>
                                                        </div>
                                                        <h3>${row.title}</h3>
                                                        <dl>
                                                            <c:if test="${not empty row.from_date && not empty row.to_date}">
                                                                <div>
                                                                    <dt>
                                                                        <span>예</span>
                                                                        <span>약</span>
                                                                        <span>접</span>
                                                                        <span>수</span>
                                                                        <span>기</span>
                                                                        <span>간</span>
                                                                    </dt>
                                                                    <dd>${row.from_date} ~ ${row.to_date}</dd>
                                                                </div>
                                                            </c:if>
                                                            <c:if test="${not empty row.content}">
                                                                <div>
                                                                    <dt>
                                                                        <span>안</span>
                                                                        <span>내</span>
                                                                        <span>사</span>
                                                                        <span>항</span>
                                                                    </dt>
                                                                    <dd>${row.content}</dd>
                                                                </div>
                                                            </c:if>
                                                            <c:if test="${not empty row.content_detail}">
                                                                <div>
                                                                    <dt>
                                                                        <span>주</span>
                                                                        <span>요</span>
                                                                        <span>방</span>
                                                                        <span>문</span>
                                                                        <span>지</span>
                                                                    </dt>
                                                                    <dd>${row.content_detail}</dd>
                                                                </div>
                                                            </c:if>
                                                            <c:if test="${not empty row.contact_information}">
                                                                <div>
                                                                    <dt>
                                                                        <span>문</span>
                                                                        <span>의</span>
                                                                        <span>처</span>
                                                                    </dt>
                                                                    <dd>${row.contact_information}</dd>
                                                                </div>
                                                            </c:if>
                                                        </dl>
                                                        <p>
                                                            <c:set var="href" value="${row.pc_link}"/>
                                                            <c:if test="${common:isMobile()}">
                                                                <c:set var="href" value="${row.mo_link}"/>
                                                            </c:if>
                                                            <c:choose>
                                                                <c:when test="${not empty href}">
                                                                    <a href="${href}"
                                                                       target="_blank"
                                                                       data-gtag-action="2023 여행가는 달_trend관"
                                                                       data-gtag-category="trend_${theme.ga_tag}_product_popup"
                                                                       data-gtag-label="${fn:trim(common:getTagText(row.title))}"
                                                                       data-ga-category="2023 여행가는 달_여행트렌드관"
                                                                       data-ga-action="${theme.ga_tag_title}_여행상품_팝업"
                                                                       data-ga-label="${fn:trim(common:getTagText(row.title))}">
                                                                        <span>자세히 보기</span>
                                                                    </a>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <a href="${href}"
                                                                       target="_blank"
                                                                       data-gtag-action="2023 여행가는 달_trend관"
                                                                       data-gtag-category="trend_${theme.ga_tag}_product_popup"
                                                                       data-gtag-label="${fn:trim(common:getTagText(row.title))}"
                                                                       data-ga-category="2023 여행가는 달_여행트렌드관"
                                                                       data-ga-action="${theme.ga_tag_title}_여행상품_팝업"
                                                                       data-ga-label="${fn:trim(common:getTagText(row.title))}"
                                                                       onclick="alert('추후 오픈 예정'); return false;">
                                                                        <span>자세히 보기</span>
                                                                    </a>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </p>
                                                    </article>
                                                    <button class="modal-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:if>
                            </c:if>
                        </c:if>
                        <section class="list-thumbnail list-thumbnail--contents">
                            <h3>${empty search.search_trend_gb ? '2023 여행' : page_main_title} 트렌드 알아보기</h3>
                            <c:if test="${not empty contents}">
                                <c:if test="${contents.result}">
                                    <c:set var="list" value="${contents.data.list}"/>
                                    <c:choose>
                                        <c:when test="${not empty list}">
                                            <ul>
                                                <c:forEach var="row" items="${list}" varStatus="loop">
                                                    <c:set var="theme" value="${common:getTheme(fn:toLowerCase(row.themes))}"/>
                                                    <c:set var="hidden_class" value=""/>
                                                    <c:if test="${loop.count > 6}">
                                                        <c:set var="hidden_class" value="class='list-thumbnail__item--hide'"/>
                                                    </c:if>
                                                    <li ${hidden_class}>
                                                        <c:choose>
                                                            <c:when test="${empty row.content}">
                                                                <c:choose>
                                                                    <c:when test="${not empty row.pc_link}">
                                                                        <a href="${row.pc_link}"
                                                                           target="_blank"
                                                                           data-gtag-action="2023 여행가는 달_trend관"
                                                                           data-gtag-category="trend_${theme.ga_tag}_contents_list"
                                                                           data-gtag-label="${fn:trim(common:getTagText(row.title))}"
                                                                           data-ga-category="2023 여행가는 달_여행트렌드관"
                                                                           data-ga-action="${fn:trim(theme.ga_tag_title)}_여행콘텐츠_리스트"
                                                                           data-ga-label="${fn:trim(common:getTagText(row.title))}">
                                                                            <span style="background-image: url('${row.image}')"></span>
                                                                            <div class="list-thumbnail--contents--theme">
                                                                                <c:forEach var="sub_row" items="${fn:split(theme.main_title, '_')}">
                                                                                    <p>${sub_row}</p>
                                                                                </c:forEach>
                                                                            </div>
                                                                            <p>${row.title}</p>
                                                                        </a>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <a href="#"
                                                                           data-gtag-action="2023 여행가는 달_trend관"
                                                                           data-gtag-category="trend_${theme.ga_tag}_contents_list"
                                                                           data-gtag-label="${fn:trim(common:getTagText(row.title))}"
                                                                           data-ga-category="2023 여행가는 달_여행트렌드관"
                                                                           data-ga-action="${fn:trim(theme.ga_tag_title)}_여행콘텐츠_리스트"
                                                                           data-ga-label="${fn:trim(common:getTagText(row.title))}"
                                                                           onclick="alert('추후 오픈 예정'); return false;">
                                                                            <span style="background-image: url('${row.image}')"></span>
                                                                            <div class="list-thumbnail--contents--theme">
                                                                                <c:forEach var="sub_row" items="${fn:split(theme.main_title, '_')}">
                                                                                    <p>${sub_row}</p>
                                                                                </c:forEach>
                                                                            </div>
                                                                            <p>${row.title}</p>
                                                                        </a>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <a href="#modal-trend-content-${row.seq}"
                                                                   data-bs-toggle="modal"
                                                                   data-bs-target="#modal-trend-content-${row.seq}"
                                                                   data-gtag-action="2023 여행가는 달_trend관"
                                                                   data-gtag-category="trend_${theme.ga_tag}_contents_list"
                                                                   data-gtag-label="${fn:trim(common:getTagText(row.title))}"
                                                                   data-ga-category="2023 여행가는 달_여행트렌드관"
                                                                   data-ga-action="${fn:trim(theme.ga_tag_title)}_여행콘텐츠_리스트"
                                                                   data-ga-label="${fn:trim(common:getTagText(row.title))}">
                                                                    <span style="background-image: url('${row.image}')"></span>
                                                                    <div class="list-thumbnail--contents--theme">
                                                                        <c:forEach var="sub_row" items="${fn:split(theme.main_title, '_')}">
                                                                            <p>${sub_row}</p>
                                                                        </c:forEach>
                                                                    </div>
                                                                    <p>${row.title}</p>
                                                                </a>
                                                            </c:otherwise>
                                                        </c:choose>
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
                                    <c:if test="${not empty row.content}">
                                        <div class="modal fade modal-trend-contents" id="modal-trend-content-${row.seq}" data-theme="${fn:toLowerCase(row.themes)}" tabindex="-1" data-bs-backdrop="static" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <article>
                                                        <h2 class="modal-trend-contents__theme">
                                                            <c:forEach var="themes" items="${common:getThemes()}" varStatus="loop">
                                                                <c:if test="${themes.theme eq fn:toLowerCase(row.themes)}">${themes.main_title}</c:if>
                                                            </c:forEach>
                                                        </h2>
                                                        <c:set var="jsonObject" value="${common:toJSONObject(row.content)}" />
                                                        <h3 class="modal-trend-contents__title" style="background-image: url('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=${jsonObject.thumbnail}&mode=progress')">${jsonObject.title}</h3>
                                                        <c:if test="${not empty jsonObject.summary}">
                                                            <p class="modal-trend-contents__summary">
                                                                    ${jsonObject.summary}
                                                            </p>
                                                        </c:if>
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
                                                                                <p><img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=${sub_sub_row.url}&mode=progress" alt="${sub_sub_row.text}"></p>
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
                                                                <c:set var="detail" value="${sub_row.detail}"/>
                                                                <c:if test="${not empty detail.url}">
                                                                    <p class="modal-trend-contents__panel-detail">
                                                                        <a href="${detail.url}"
                                                                           target="_blank"
                                                                           data-gtag-action="2023 여행가는 달_trend관"
                                                                           data-gtag-category="trend_${theme.ga_tag}_contents_popup"
                                                                           data-gtag-label="${fn:trim(common:getTagText(row.title))}"
                                                                           data-ga-category="2023 여행가는 달_여행트렌드관"
                                                                           data-ga-action="${fn:trim(theme.ga_tag_title)}_여행콘텐츠_팝업"
                                                                           data-ga-label="${fn:trim(common:getTagText(row.title))}">자세히 보기</a>
                                                                    </p>
                                                                </c:if>
                                                            </div>
                                                        </c:forEach>
                                                    </article>
                                                    <button class="modal-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </c:if>
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
