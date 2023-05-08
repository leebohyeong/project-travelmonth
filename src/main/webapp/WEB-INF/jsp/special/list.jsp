<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/include-taglib.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="../include/include-head.jspf" %>
</head>
<body id="travelmonth-special-list">
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
                                <option value="play">놀거리혜택</option>
                                <option value="trend">여행트렌드관</option>
                                <option value="special" selected>여행상품 특별 기획전</option>
                            </select>
                            <%@ include file="include/include-menu.jspf" %>
                        </div>
                    </div>
                </div>
                <div class="benefits__content">
                    <article class="special-list">
                        <header>
                            <div><h2><strong><span>여행상품</span><br>
                                특별 기획전</strong></h2>
                                <p>쿠폰할인으로 저렴하게<br>여행 패키지 상품도 즐기고</p></div>
                        </header>
                        <section>
                            <header><h3>6월 여행가는 달</h3>
                                <p>여행업계가 선보이는 <br>
                                    대한민국 구석구석 100여개의 여행상품을<br>
                                    <strong><span>30% 할인 가격</span>으로 <br>이용해 보세요.</strong></p></header>
                            <dl><span class="icon-man"></span><span class="icon-plane"></span>
                                <div>
                                    <dt>참여사(상품)</dt>
                                    <dd>총 56개 여행사 101개<br>여행상품</dd>
                                </div>
                                <div>
                                    <dt>구매기간</dt>
                                    <dd>5.17~6.30
                                        <span>*단, 사정에 따라 이용 구매 기간 일부 변동 가능</span>
                                    </dd>
                                </div>
                                <div>
                                    <dt>상품 이용 기간</dt>
                                    <dd>6.1~7.15
                                        <span>*단, 사정에 따라 이용 기간 일부 변동 가능</span>
                                    </dd>
                                </div>
                                <div>
                                    <dt>쿠폰 할인금액</dt>
                                    <dd>상품 가격의 30%
                                        <span>*최대 5만원까지 할인</span></dd>
                                </div>
                                <div>
                                    <dt>할인 적용 기간</dt>
                                    <dd>상품별 정부 지원금<br>소진 시까지</dd>
                                </div>
                            </dl>
                            <div>
                                <p>※ 보다 자세한 내용은 G마켓 홈페이지 내 여행상품 특별 기획전에서 확인해 주세요.</p>
                                <p>
                                    <a href="#"
                                       data-gtag-action="2023 여행가는 달_여행상품 특별 기획전"
                                       data-gtag-category="special_enter"
                                       data-gtag-label="여행상품 특별 기획전 입장하기">
                                        <span>여행상품 특별 기획전 입장하기</span>
                                    </a>
                                </p>
                            </div>
                        </section>
                    </article>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../include/include-footer.jspf" %>
</body>
</html>
