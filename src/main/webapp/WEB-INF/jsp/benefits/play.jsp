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
                        <%@ include file="../include/include-benefits-nav.jspf" %>
                        <%@ include file="../include/include-benefits-menu.jspf" %>
                    </div>
                </div>
                <div class="benefits__content">
                    <article class="benefits-program benefits-program--play">
                        <header>
                            <div>
                                <h2><span>2023 여행가는 달 특별할인혜택</span><strong>놀거리혜택</strong></h2>
                                <p>
                                    관광지 입장 할인, 다양한 방문인증 이벤트 등 <br>
                                    풍성한 혜택을 만나보세요!
                                </p>
                            </div>
                        </header>
                        <nav>
                            <ul>
                                <li><a class="<c:if test='${empty search.search_play_gb}'>benefits-program__item--current</c:if>" href="?search_play_gb=">전체</a></li>
                                <li><a class="<c:if test='${fn:toUpperCase(search.search_play_gb) eq "D"}'>benefits-program__item--current</c:if>" href="?search_play_gb=d">할인혜택</a></li>
                                <li><a class="<c:if test='${fn:toUpperCase(search.search_play_gb) eq "T"}'>benefits-program__item--current</c:if>" href="?search_play_gb=t">여행정보</a></li>
                                <li><a class="<c:if test='${fn:toUpperCase(search.search_play_gb) eq "E"}'>benefits-program__item--current</c:if>" href="?search_play_gb=e">이벤트</a></li>
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
                                                    <c:set var="hidden_class" value=""/>
                                                    <c:if test="${loop.count > 6}">
                                                        <c:set var="hidden_class" value="class='list-thumbnail__item--hide'"/>
                                                    </c:if>
                                                    <li ${hidden_class}>
                                                        <c:set var="data_ga_action" value="할인혜택_리스트"/>
                                                        <c:set var="data_gtag_category" value="play_benefit_list"/>
                                                        <c:choose>
                                                            <c:when test="${row.enjoy_gb eq 'T'}">
                                                                <c:set var="data_ga_action" value="여행정보_리스트"/>
                                                                <c:set var="data_gtag_category" value="play_info_list"/>
                                                            </c:when>
                                                            <c:when test="${row.enjoy_gb eq 'E'}">
                                                                <c:set var="data_ga_action" value="이벤트_리스트"/>
                                                                <c:set var="data_gtag_category" value="play_event_list"/>
                                                            </c:when>
                                                        </c:choose>
                                                        <a href="#" data-type="${fn:toLowerCase(row.enjoy_gb)}"
                                                           data-bs-toggle="modal"
                                                           data-bs-target="#modal-benefits-${row.seq}"
                                                           data-gtag-action="2023 여행가는 달_놀거리혜택"
                                                           data-gtag-category="${data_gtag_category}"
                                                           data-gtag-label="${common:getTagText(row.title)}"
                                                           data-ga-category="2023 여행가는 달_놀거리혜택"
                                                           data-ga-action="${data_ga_action}"
                                                           data-ga-label="${common:getTagText(row.title)}">
                                                            <span style="background-image: url('${row.image}')"></span>
                                                            <div>
                                                                <p>
                                                                    <c:choose>
                                                                        <c:when test="${row.enjoy_gb eq 'D'}">할인혜택</c:when>
                                                                        <c:when test="${row.enjoy_gb eq 'T'}">여행정보</c:when>
                                                                        <c:when test="${row.enjoy_gb eq 'E'}">이벤트</c:when>
                                                                    </c:choose>
                                                                </p>
                                                                <p>${row.agency_name}</p>
                                                            </div>
                                                            <p>${row.title}</p>
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
                            <c:if test="${not empty enjoy}">
                                <c:if test="${enjoy.result}">
                                    <c:if test="${fn:length(enjoy.data.list) > 6}"><p><button type="button">MORE</button></p></c:if>
                                </c:if>
                            </c:if>
                        </section>
                        <c:if test="${not empty enjoy}">
                            <c:if test="${enjoy.result}">
                                <c:set var="list" value="${enjoy.data.list}"/>
                                <c:if test="${not empty list}">
                                    <c:forEach var="row" items="${list}" varStatus="loop">
                                        <div class="modal fade modal-benefits" id="modal-benefits-${row.seq}" data-type="${fn:toLowerCase(row.enjoy_gb)}" tabindex="-1" data-bs-backdrop="static" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <article>
                                                        <div style="background-image: url('${row.image}')"></div>
                                                        <div>
                                                            <p>
                                                                <c:choose>
                                                                    <c:when test="${row.enjoy_gb eq 'D'}">할인혜택</c:when>
                                                                    <c:when test="${row.enjoy_gb eq 'T'}">여행정보</c:when>
                                                                    <c:when test="${row.enjoy_gb eq 'E'}">이벤트</c:when>
                                                                </c:choose>
                                                            </p>
                                                            <p>${row.agency_name}</p>
                                                        </div>
                                                        <h3>${row.title}</h3>
                                                        <dl>
                                                            <c:choose>
                                                                <c:when test="${row.enjoy_gb eq 'D'}">
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
                                                                            <dd>
                                                                                <div>${row.from_date} ~ ${row.to_date}</div>
                                                                            </dd>
                                                                        </div>
                                                                    </c:if>
                                                                    <c:if test="${not empty row.discount_start_date && not empty row.discount_end_date}">
                                                                        <div>
                                                                            <dt>
                                                                                <span>할</span>
                                                                                <span>인</span>
                                                                                <span>적</span>
                                                                                <span>용</span>
                                                                                <span>기</span>
                                                                                <span>간</span>
                                                                            </dt>
                                                                            <dd>${row.discount_start_date} ~ ${row.discount_end_date}</dd>
                                                                        </div>
                                                                    </c:if>
                                                                    <c:if test="${not empty row.content}">
                                                                        <div>
                                                                            <dt>
                                                                                <span>혜</span>
                                                                                <span>택</span>
                                                                                <span>상</span>
                                                                                <span>세</span>
                                                                            </dt>
                                                                            <dd>${row.content}</dd>
                                                                        </div>
                                                                    </c:if>
                                                                    <c:if test="${not empty row.content_detail}">
                                                                        <div>
                                                                            <dt>
                                                                                <span>할</span>
                                                                                <span>인</span>
                                                                                <span>조</span>
                                                                                <span>건</span>
                                                                            </dt>
                                                                            <dd>${row.content_detail}</dd>
                                                                        </div>
                                                                    </c:if>
                                                                    <c:if test="${not empty row.notes}">
                                                                        <div>
                                                                            <dt>
                                                                               <span>장</span>
                                                                               <span>소</span>
                                                                            </dt>
                                                                            <dd>${row.notes}</dd>
                                                                        </div>
                                                                    </c:if>
                                                                </c:when>
                                                                <c:when test="${row.enjoy_gb eq 'T'}">
                                                                    <c:if test="${not empty row.from_date && not empty row.to_date}">
                                                                        <div>
                                                                            <dt>
                                                                                <span>기</span>
                                                                                <span>간</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <div>${row.from_date} ~ ${row.to_date}</div>
                                                                            </dd>
                                                                        </div>
                                                                    </c:if>
                                                                    <c:if test="${not empty row.content}">
                                                                        <div>
                                                                            <dt>
                                                                                <span>장</span>
                                                                                <span>소</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <div>${row.content}</div>
                                                                            </dd>
                                                                        </div>
                                                                    </c:if>
                                                                    <c:if test="${not empty row.content_detail}">
                                                                        <div>
                                                                            <dt>
                                                                                <span>주</span>
                                                                                <span>요</span>
                                                                                <span>내</span>
                                                                                <span>용</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <div>${row.content_detail}</div>
                                                                            </dd>
                                                                        </div>
                                                                    </c:if>
                                                                </c:when>
                                                                <c:when test="${row.enjoy_gb eq 'E'}">
                                                                    <c:if test="${not empty row.from_date && not empty row.to_date}">
                                                                        <div>
                                                                            <dt>
                                                                                <span>기</span>
                                                                                <span>간</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <div>${row.from_date} ~ ${row.to_date}</div>
                                                                            </dd>
                                                                        </div>
                                                                    </c:if>
                                                                    <c:if test="${not empty row.content}">
                                                                        <div>
                                                                            <dt>
                                                                                <span>주</span>
                                                                                <span>요</span>
                                                                                <span>내</span>
                                                                                <span>용</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <div>${row.content}</div>
                                                                            </dd>
                                                                        </div>
                                                                    </c:if>
                                                                    <c:if test="${not empty row.content_detail}">
                                                                        <div>
                                                                            <dt>
                                                                                <span>당</span>
                                                                                <span>첨</span>
                                                                                <span>인</span>
                                                                                <span>원</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <div>${row.content_detail}</div>
                                                                            </dd>
                                                                        </div>
                                                                    </c:if>
                                                                    <c:if test="${not empty row.notes}">
                                                                        <div>
                                                                            <dt>
                                                                                <span>참</span>
                                                                                <span>여</span>
                                                                                <span>방</span>
                                                                                <span>법</span>
                                                                            </dt>
                                                                            <dd>
                                                                                <div>${row.notes}</div>
                                                                            </dd>
                                                                        </div>
                                                                    </c:if>
                                                                </c:when>
                                                            </c:choose>
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
                                                            <c:set var="data_ga_action" value="할인혜택_팝업"/>
                                                            <c:set var="data_gtag_category" value="play_benefit_popup"/>
                                                            <c:choose>
                                                                <c:when test="${row.enjoy_gb eq 'T'}">
                                                                    <c:set var="data_ga_action" value="여행정보_팝업"/>
                                                                    <c:set var="data_gtag_category" value="play_info_popup"/>
                                                                </c:when>
                                                                <c:when test="${row.enjoy_gb eq 'E'}">
                                                                    <c:set var="data_ga_action" value="이벤트_팝업"/>
                                                                    <c:set var="data_gtag_category" value="play_event_popup"/>
                                                                </c:when>
                                                            </c:choose>
                                                            <c:choose>
                                                                <c:when test="${not empty row.link}">
                                                                    <a href="${row.link}" target="_blank"
                                                                       data-gtag-action="2023 여행가는 달_놀거리혜택"
                                                                       data-gtag-category="${data_gtag_category}"
                                                                       data-gtag-label="${common:getTagText(row.title)}"
                                                                       data-ga-category="2023 여행가는 달_놀거리혜택"
                                                                       data-ga-action="${data_ga_action}"
                                                                       data-ga-label="${common:getTagText(row.title)}">
                                                                        <span>자세히 보기</span>
                                                                    </a>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <a href="#"
                                                                       data-gtag-action="2023 여행가는 달_놀거리혜택"
                                                                       data-gtag-category="${data_gtag_category}"
                                                                       data-gtag-label="${common:getTagText(row.title)}"
                                                                       data-ga-category="2023 여행가는 달_놀거리혜택"
                                                                       data-ga-action="${data_ga_action}"
                                                                       data-ga-label="${common:getTagText(row.title)}"
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
                    </article>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../include/include-footer.jspf" %>
</body>
</html>
