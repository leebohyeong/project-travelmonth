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
        <c:set var="area_name_en" value="${fn:replace(fn:toLowerCase(area.data.name_en), ',', '-')}"/>
        <div class="benefits">
            <div class="benefits__container">
                <div class="benefits__menu benefits__menu--local">
                    <div><h2><span>여행가는 달의 다양한</span><strong>여행정보와 여행혜택을<br>확인해 보세요!</strong></h2>
                        <nav>
                            <ul>
                                <li><strong>지역별</strong></li>
                                <li><a href="#">프로그램별</a></li>
                            </ul>
                        </nav>
                        <div>
                            <c:set var="sido" value="${sido:getFilteredList()}"/>
                            <c:if test="${not empty sido}">
                                <c:if test="${sido.result}">
                                    <c:set var="list" value="${sido.data.list}"/>
                                    <p>
                                        <span>지역의 여행상품과 여행혜택을 확인하세요.</span>
                                        <select>
                                            <c:forEach var="row" items="${list}" varStatus="loop">
                                                <option value="${fn:replace(fn:toLowerCase(row.name_en), ',', '-')}" <c:if test="${area_name_en eq row.name_en}">selected</c:if>>${row.name_kr}</option>
                                            </c:forEach>
                                        </select>
                                    </p>
                                    <ul>
                                        <c:forEach var="row" items="${list}" varStatus="loop">
                                            <li data-sido="${fn:replace(fn:toLowerCase(row.name_en), ',', '-')}">
                                                <c:choose>
                                                    <c:when test="${area_name_en eq fn:toLowerCase(row.name_en)}">
                                                        <strong>
                                                            <span>${row.name_kr}</span>
                                                        </strong>
                                                        <span></span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a href="/travelmonth/area/${row.name_en}.do">
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
                    <c:set var="title" value="${fn:replace(area.data.name_detail_kr, ',', '/')}"/>
                    <article class="benefits-local" data-local="${fn:replace(fn:toLowerCase(area.data.name_en), ',', '-')}">
                            <header>
                                <h2>${title} 여행</h2>
                                <p>지역별 다양한 여행혜택과 여행상품을 보다 빠르고 쉽게 만나보세요!</p>
                            </header>
                            <section class="list-thumbnail list-thumbnail--benefits">
                                <h3>
                                    매력있는 <strong>${title}</strong> 여행혜택 알아보기
                                </h3>
                                <ul>
                                    <c:if test="${not empty enjoy}">
                                        <c:if test="${enjoy.result}">
                                            <c:set var="list" value="${enjoy.data.list}"/>
                                            <c:forEach var="row" items="${list}" varStatus="loop">
                                                <li>
                                                    <a href="#modal-benefits-${row.seq}" data-type="${fn:toLowerCase(row.enjoy_gb)}" data-bs-toggle="modal" data-bs-target="#modal-benefits-${row.seq}"
                                                       data-gtag-action="여행혜택 1_${row.title}" data-gtag-category="${title}">
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
                                                            <p>${row.agency_name}</p>
                                                        </div>
                                                        <p>${row.title}</p>
                                                    </a>
                                                </li>
                                            </c:forEach>
                                        </c:if>
                                    </c:if>
                                </ul>
                                <p>
                                    <button type="button">MORE</button>
                                </p>
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
                                                        <p>${row.agency_name}</p>
                                                    </div>
                                                    <h3>${row.title}</h3>
                                                    <c:choose>
                                                        <c:when test="${row.enjoy_gb eq 'D'}">
                                                            <dl>
                                                                <div>
                                                                    <dt>예약신청기간</dt>
                                                                    <dd>
                                                                        <div>${row.from_date} ~ ${row.to_date}</div>
                                                                    </dd>
                                                                </div>
                                                                <div>
                                                                    <dt>할인적용기간</dt>
                                                                    <dd>${row.discount_start_date} ~ ${row.discount_end_date}</dd>
                                                                </div>
                                                                <div>
                                                                    <dt>혜택상세</dt>
                                                                    <dd>${row.content}</dd>
                                                                </div>
                                                                <div>
                                                                    <dt>혜택제공조건</dt>
                                                                    <dd>${row.content_detail}</dd>
                                                                </div>
                                                                <div>
                                                                    <dt>참고사항</dt>
                                                                    <dd>${row.notes}</dd>
                                                                </div>
                                                                <div>
                                                                    <dt>문의처</dt>
                                                                    <dd>${row.contact_information}</dd>
                                                                </div>
                                                            </dl>
                                                        </c:when>
                                                        <c:when test="${row.enjoy_gb eq 'T'}">
                                                            <dl>
                                                                <div>
                                                                    <dt>진행기간</dt>
                                                                    <dd>
                                                                        <div>${row.from_date} ~ ${row.to_date}</div>
                                                                    </dd>
                                                                </div>
                                                                <div>
                                                                    <dt>장소</dt>
                                                                    <dd>${row.content}</dd>
                                                                </div>
                                                                <div>
                                                                    <dt>간략소개</dt>
                                                                    <dd>${row.content_detail}</dd>
                                                                </div>
                                                                <div>
                                                                    <dt>문의처</dt>
                                                                    <dd>${row.contact_information}</dd>
                                                                </div>
                                                            </dl>
                                                        </c:when>
                                                        <c:when test="${row.enjoy_gb eq 'E'}">
                                                            <dl>
                                                                <div>
                                                                    <dt>진행기간</dt>
                                                                    <dd>
                                                                        <div>${row.from_date} ~ ${row.to_date}</div>
                                                                    </dd>
                                                                </div>
                                                                <div>
                                                                    <dt>소개내용</dt>
                                                                    <dd>${row.content}</dd>
                                                                </div>
                                                                <div>
                                                                    <dt>당첨인원</dt>
                                                                    <dd>${row.content_detail}</dd>
                                                                </div>
                                                                <div>
                                                                    <dt>참여방법</dt>
                                                                    <dd>${row.notes}</dd>
                                                                </div>
                                                                <div>
                                                                    <dt>문의처</dt>
                                                                    <dd>${row.contact_information}</dd>
                                                                </div>
                                                            </dl>
                                                        </c:when>
                                                    </c:choose>
                                                    <p><a href="${row.link}" data-gtag-action="여행혜택 1_${row.title}" data-gtag-category="${title}" data-gtag-label="자세히 보기 버튼"><span>자세히 보기</span></a></p>
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
                            <ul>
                                <li>
                                    <a href="#" data-type="d" data-bs-toggle="modal" data-bs-target="#modal-goods-1"><span
                                        style="background-image: url('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=3f8fbd92-6b7e-46ba-9161-21bfd76e8e1b&amp;mode=progress')"></span>
                                    <p>예약신청기간 : 5/24~6/20</p>
                                    <p>산속등대 어뮤즈월드<br>이용요금 반값 할인</p>
                                    <div><p>40,000원~</p>
                                        <p>당일</p></div>
                                    </a>
                                </li>
                                <li><a href="#"><span
                                        style="background-image: url('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=de35655e-97a2-4a2d-8da0-812767f53fef&amp;mode=progress')"></span>
                                    <p>예약신청기간 : 5/24~6/20</p>
                                    <p>고래바다여행선 타고, 호캉스 가자</p></a></li>
                                <li><a href="#"><span
                                        style="background-image: url('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=f6c2cdb3-7c48-4ec1-b326-33e19002b0f1&amp;mode=progress')"></span>
                                    <p>예약신청기간 : 5/24~6/20</p>
                                    <p>경북으로 떠나는 친환경 기차여행 이벤트</p></a></li>
                            </ul>
                            <p>
                                <button type="button">MORE</button>
                            </p>
                        </section>
                        <div class="modal fade modal-goods" id="modal-goods-1" tabindex="-1" data-bs-backdrop="static"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <article>
                                        <div style="background-image: url('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=3f8fbd92-6b7e-46ba-9161-21bfd76e8e1b&amp;mode=progress')"></div>
                                        <div><p>여행상품</p>
                                            <p>숙박•당일</p></div>
                                        <h3>산속등대 어뮤즈월드 이용요금 반값 할인</h3>
                                        <dl>
                                            <div>
                                                <dt>예약신청기간</dt>
                                                <dd>2023-05-10 ~ 2023-06-01</dd>
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
                                    <button class="modal-close" type="button" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                            </div>
                        </div>
                    </article>
                    <aside class="list-thumbnail list-thumbnail--benefits-more"><h3>설렘으로 꽉 찬 혜택 추가로 확인하기</h3>
                        <ul>
                            <li data-benefit="traffic"><a href="/html/benefits/traffic.html"><h4>교통혜택</h4>
                                <p>국내여행 준비중이라면<br>교통혜택을 챙겨가세요!</p></a></li>
                            <li data-benefit="stay"><a href="/html/benefits/stay.html"><h4>숙박혜택</h4>
                                <p>여행의 완성은 잠자리!<br>역대급 숙박혜택을 확인하세요</p></a></li>
                            <li data-benefit="play"><a href="/html/benefits/play.html"><h4>놀거리혜택</h4>
                                <p>놀거리혜택으로<br>풍성한 여행을 만들어가세요!</p></a></li>
                            <li data-benefit="special"><a href="/html/special/list.html"><h4>여행상품<br>특별 기획전</h4>
                                <p>여행가는 달 기간동안<br>여행업계가 선보이는<br>각종 혜택들을 만나보세요.</p></a></li>
                        </ul>
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../include/include-footer.jspf" %>
</body>
</html>
