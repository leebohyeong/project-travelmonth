<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/include-taglib.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="../include/include-head.jspf" %>
</head>
<body id="travelmonth-benefits-local">
    <%@ include file="../include/include-header.jspf" %>
    <div id="container">
        <c:set var="local_name_en" value="${fn:replace(fn:toLowerCase(local.data.name_en), ',', '-')}"/>
        <div class="benefits">
            <div class="benefits__container">
                <div class="benefits__menu benefits__menu--local">
                    <div><h2><span>여행가는 달의 다양한</span><strong>여행정보와 여행혜택을<br>확인해 보세요!</strong></h2>
                        <%@ include file="../include/include-benefits-nav.jspf" %>
                        <div>
                            <c:set var="taglib" value="${local:getFilteredList()}"/>
                            <c:if test="${not empty taglib}">
                                <c:if test="${taglib.result}">
                                    <c:set var="list" value="${taglib.data.list}"/>
                                    <p>
                                        <span>지역의 여행상품과 여행혜택을 확인하세요.</span>
                                        <select>
                                            <c:forEach var="row" items="${list}" varStatus="loop">
                                                <option value="${fn:replace(fn:toLowerCase(row.name_en), ',', '-')}" data-url="/travelmonth/benefits/local/${fn:toLowerCase(row.name_en)}.do"
                                                        <c:if test="${local_name_en eq fn:toLowerCase(row.name_en)}">selected</c:if>>${row.name_kr}</option>
                                            </c:forEach>
                                        </select>
                                    </p>
                                    <ul>
                                        <c:forEach var="row" items="${list}" varStatus="loop">
                                            <li data-sido="${fn:replace(fn:toLowerCase(row.name_en), ',', '-')}">
                                                <c:choose>
                                                    <c:when test="${local_name_en eq fn:toLowerCase(row.name_en)}">
                                                        <strong>
                                                            <span>${row.name_kr}</span>
                                                        </strong>
                                                        <span></span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a href="/travelmonth/benefits/local/${fn:toLowerCase(row.name_en)}.do">
                                                            <span>${row.name_kr}</span>
                                                        </a>
                                                        <span></span>
                                                    </c:otherwise>
                                                </c:choose>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </c:if>
                            </c:if>
                        </div>
                    </div>
                </div>
                <div class="benefits__content">
                    <c:set var="title" value="${fn:replace(local.data.name_kr, ',', '/')}"/>
                    <article class="benefits-local" data-local="${fn:replace(fn:toLowerCase(local.data.name_en), ',', '-')}">
                            <header>
                                <h2>${title} 여행</h2>
                                <p>지역별 다양한 여행혜택과 여행상품을 보다 빠르고 쉽게 만나보세요!</p>
                            </header>
                            <section class="list-thumbnail list-thumbnail--benefits">
                                <h3>
                                    매력있는 <strong>${title}</strong> 여행혜택 알아보기
                                </h3>
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
                                                            <a href="#modal-benefits-${row.seq}"
                                                               data-type="${fn:toLowerCase(row.enjoy_gb)}"
                                                               data-bs-toggle="modal"
                                                               data-bs-target="#modal-benefits-${row.seq}"
                                                               data-gtag-action="travelmonth_2023_benefits_local"
                                                               data-gtag-category="local_${fn:replace(fn:toLowerCase(local.data.name_en), ',', '_')}_benefit_list"
                                                               data-gtag-label="${common:getTagText(row.title)}">
                                                                <span style="background-image: url('${row.image}')"></span>
                                                                <div>
                                                                    <p>
                                                                        <c:choose>
                                                                            <c:when test="${row.enjoy_gb eq 'D'}">할인혜택</c:when>
                                                                            <c:when test="${row.enjoy_gb eq 'T'}">여행정보</c:when>
                                                                            <c:when test="${row.enjoy_gb eq 'E'}">이벤트</c:when>
                                                                            <c:otherwise>-</c:otherwise>
                                                                        </c:choose>
                                                                    </p>
                                                                    <c:if test="${not empty row.agency_name}">
                                                                        <p>${row.agency_name}</p>
                                                                    </c:if>
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
                                <c:forEach var="row" items="${list}" varStatus="loop">
                                    <div class="modal fade modal-benefits" id="modal-benefits-${row.seq}" data-type="${fn:toLowerCase(row.enjoy_gb)}" tabindex="-1"
                                         data-bs-backdrop="static" aria-hidden="true">
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
                                                                <c:otherwise>-</c:otherwise>
                                                            </c:choose>
                                                        </p>
                                                        <c:if test="${not empty row.agency_name}">
                                                            <p>${row.agency_name}</p>
                                                        </c:if>
                                                    </div>
                                                    <h3>${row.title}</h3>
                                                    <dl>
                                                        <c:choose>
                                                            <c:when test="${row.enjoy_gb eq 'D'}">
                                                                <c:if test="${not empty row.from_date && not empty row.to_date}">
                                                                    <div>
                                                                        <dt>예약접수기간</dt>
                                                                        <dd>
                                                                            <div>${row.from_date} ~ ${row.to_date}</div>
                                                                        </dd>
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${not empty row.discount_start_date && not empty row.discount_end_date}">
                                                                    <div>
                                                                        <dt>할인적용기간</dt>
                                                                        <dd>${row.discount_start_date} ~ ${row.discount_end_date}</dd>
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${not empty row.content}">
                                                                    <div>
                                                                        <dt>혜택상세</dt>
                                                                        <dd>${row.content}</dd>
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${not empty row.content_detail}">
                                                                    <div>
                                                                        <dt>혜택제공조건</dt>
                                                                        <dd>${row.content_detail}</dd>
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${not empty row.notes}">
                                                                    <div>
                                                                        <dt>참고사항</dt>
                                                                        <dd>${row.notes}</dd>
                                                                    </div>
                                                                </c:if>
                                                            </c:when>
                                                            <c:when test="${row.enjoy_gb eq 'T'}">
                                                                <c:if test="${not empty row.from_date && not empty row.to_date}">
                                                                    <div>
                                                                        <dt>진행기간</dt>
                                                                        <dd>
                                                                            <div>${row.from_date} ~ ${row.to_date}</div>
                                                                        </dd>
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${not empty row.content}">
                                                                    <div>
                                                                        <dt>장소</dt>
                                                                        <dd>
                                                                            <div>${row.content}</div>
                                                                        </dd>
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${not empty row.content_detail}">
                                                                    <div>
                                                                        <dt>간략소개</dt>
                                                                        <dd>
                                                                            <div>${row.content_detail}</div>
                                                                        </dd>
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${not empty row.content_detail}">
                                                                    <div>
                                                                        <dt>간략소개</dt>
                                                                        <dd>
                                                                            <div>${row.content_detail}</div>
                                                                        </dd>
                                                                    </div>
                                                                </c:if>
                                                            </c:when>
                                                            <c:when test="${row.enjoy_gb eq 'E'}">
                                                                <c:if test="${not empty row.from_date && not empty row.to_date}">
                                                                    <div>
                                                                        <dt>진행기간</dt>
                                                                        <dd>
                                                                            <div>${row.from_date} ~ ${row.to_date}</div>
                                                                        </dd>
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${not empty row.content}">
                                                                    <div>
                                                                        <dt>소개내용</dt>
                                                                        <dd>
                                                                            <div>${row.content}</div>
                                                                        </dd>
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${not empty row.content_detail}">
                                                                    <div>
                                                                        <dt>당첨인원</dt>
                                                                        <dd>
                                                                            <div>${row.content_detail}</div>
                                                                        </dd>
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${not empty row.notes}">
                                                                    <div>
                                                                        <dt>참여방법</dt>
                                                                        <dd>
                                                                            <div>${row.notes}</div>
                                                                        </dd>
                                                                    </div>
                                                                </c:if>
                                                            </c:when>
                                                        </c:choose>
                                                        <c:if test="${not empty row.contact_information}">
                                                            <div>
                                                                <dt>문의처</dt>
                                                                <dd>${row.contact_information}</dd>
                                                            </div>
                                                        </c:if>
                                                    </dl>
                                                    <p>
                                                        <a href="${row.link}"
                                                           target="_blank"
                                                          data-gtag-action="2023 여행가는달_여행혜택 지역별"
                                                          data-gtag-category="local_${fn:replace(fn:toLowerCase(local.data.name_en), ',', '_')}_benefit_popup"
                                                          data-gtag-label="${common:getTagText(row.title)}">
                                                            <span>자세히 보기</span>
                                                        </a>
                                                    </p>
                                                </article>
                                                <button class="modal-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:if>
                        </c:if>
                        <section class="list-thumbnail list-thumbnail--goods">
                            <h3>트렌디한 <strong>${title}</strong> 여행상품 알아보기</h3>
                            <c:if test="${not empty travel}">
                                <c:if test="${travel.result}">
                                    <c:set var="list" value="${travel.data.list}"/>
                                    <c:choose>
                                        <c:when test="${not empty list}">
                                            <ul>
                                                <c:forEach var="row" items="${list}" varStatus="loop">
                                                    <c:set var="hidden_class" value=""/>
                                                    <c:if test="${loop.count > 6}">
                                                        <c:set var="hidden_class" value="class='list-thumbnail__item--hide'"/>
                                                    </c:if>
                                                    <li ${hidden_class}>
                                                        <a href="#"
                                                           data-type="d"
                                                           data-bs-toggle="modal"
                                                           data-bs-target="#modal-goods-${row.seq}"
                                                           data-gtag-action="2023 여행가는달_여행혜택 지역별"
                                                           data-gtag-category="local_${fn:replace(fn:toLowerCase(local.data.name_en), ',', '_')}_product_list"
                                                           data-gtag-label="상품_${common:getTagText(row.title)}_리스트">
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
                                                                <c:if test="${row.travel_gb eq 'P'}">
                                                                    <c:if test="${not empty row.price}">
                                                                        <p>${row.price}</p>
                                                                    </c:if>
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
                                        <c:otherwise>
                                            <div><p>등록된 내용이 없습니다.</p></div>
                                        </c:otherwise>
                                    </c:choose>
                                </c:if>
                            </c:if>
                            <c:if test="${not empty travel}">
                                <c:if test="${travel.result}">
                                    <c:if test="${fn:length(travel.data.list) > 6}"><p><button type="button">MORE</button></p></c:if>
                                </c:if>
                            </c:if>
                        </section>
                        <c:if test="${not empty travel}">
                            <c:if test="${travel.result}">
                                <c:set var="list" value="${travel.data.list}"/>
                                <c:forEach var="row" items="${list}" varStatus="loop">
                                    <div class="modal fade modal-goods" id="modal-goods-${row.seq}" tabindex="-1" data-bs-backdrop="static" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <article>
                                                    <div style="background-image: url('${row.image}')"></div>
                                                    <div>
                                                        <p>
                                                            <c:choose>
                                                                <c:when test="${row.travel_gb eq 'C'}">여행콘텐츠</c:when>
                                                                <c:when test="${row.travel_gb eq 'P'}">여행상품</c:when>
                                                                <c:otherwise>-</c:otherwise>
                                                            </c:choose>
                                                        </p>
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
                                                        <c:if test="${not empty row.from_date && not empty row.to_date}">
                                                            <div>
                                                                <dt>예약접수기간</dt>
                                                                <dd>${row.from_date} ~ ${row.to_date}</dd>
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${not empty row.content}">
                                                            <div>
                                                                <dt>안내사항</dt>
                                                                <dd>${row.content}</dd>
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${not empty row.content_detail}">
                                                            <div>
                                                                <dt>주요방문처</dt>
                                                                <dd>${row.content_detail}</dd>
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${not empty row.contact_information}">
                                                            <div>
                                                                <dt>문의처</dt>
                                                                <dd>${row.contact_information}</dd>
                                                            </div>
                                                        </c:if>
                                                    </dl>
                                                    <p>
                                                        <a href="${row.link}"
                                                           target="_blank"
                                                           data-gtag-action="2023 여행가는달_여행혜택 지역별"
                                                           data-gtag-category="local_${fn:replace(fn:toLowerCase(local.data.name_en), ',', '_')}_product_popup"
                                                           data-gtag-label="${common:getTagText(row.title)}">
                                                            <span>자세히 보기</span>
                                                        </a>
                                                    </p>
                                                </article>
                                                <button class="modal-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:if>
                        </c:if>
                    </article>
                    <aside class="list-thumbnail list-thumbnail--benefits-more">
                        <h3>설렘으로 꽉 찬 혜택, 더 알아보기</h3>
                        <ul>
                            <li data-benefit="traffic">
                                <a href="${pageContext.request.contextPath}/benefits/traffic.do"
                                   data-gtag-action="2023 여행가는달_여행혜택 지역별"
                                   data-gtag-category="local_banner_traffic"
                                   data-gtag-label="교통혜택">
                                    <h4>교통혜택</h4>
                                    <p>열차 항공 렌터카 시티투어 할인<br>우리 함께 떠나요!</p>
                                </a>
                            </li>
                            <li data-benefit="stay">
                                <a href="${pageContext.request.contextPath}/benefits/stay.do"
                                   data-gtag-action="2023 여행가는달_여행혜택 지역별"
                                   data-gtag-category="local_banner_accommodation"
                                   data-gtag-label="숙박혜택">
                                    <h4>숙박혜택</h4>
                                    <p>국내 숙박 최대 5만원 할인<br>역대급 숙박혜택을 확인하세요!</p>
                                </a>
                            </li>
                            <li data-benefit="play">
                                <a href="${pageContext.request.contextPath}/benefits/play.do"
                                   data-gtag-action="2023 여행가는달_여행혜택 지역별"
                                   data-gtag-category="local_banner_play"
                                   data-gtag-label="놀거리혜택">
                                    <h4>놀거리혜택</h4>
                                    <p>관광지 입장 할인, 다양한 방문인증 이벤트 등<br>풍성한 혜택을 만나보세요!</p>
                                </a>
                            </li>
                            <li data-benefit="special">
                                <a href="${pageContext.request.contextPath}/special/list.do"
                                   data-gtag-action="2023 여행가는달_여행혜택 지역별"
                                   data-gtag-category="local_banner_special"
                                   data-gtag-label="여행상품 특별 기획전">
                                    <h4>여행상품<br>특별 기획전</h4>
                                    <p>여행가는 달 기간동안<br>여행업계가 선보이는<br>각종 혜택들을 만나보세요.</p>
                                </a>
                            </li>
                        </ul>
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../include/include-footer.jspf" %>
</body>
</html>
