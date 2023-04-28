<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/include-taglib.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="../include/include-head.jspf" %>
</head>
<body id="travelmonth-benefits-traffic">
    <%@ include file="../include/include-header.jspf" %>
    <div id="container">
        <div class="benefits">
            <div class="benefits__container">
                <div class="benefits__menu benefits__menu--program">
                    <div><h2><span>여행가는 달의 다양한</span><strong>여행정보와 여행혜택을<br>확인해 보세요!</strong></h2>
                        <%@ include file="include/include-nav.jspf" %>
                        <div>
                            <select>
                                <option value="traffic" selected>교통혜택</option>
                                <option value="stay">숙박혜택</option>
                                <option value="play">놀거리혜택</option>
                                <option value="trend">여행트랜드관</option>
                                <option value="special">여행상품 특별 기획전</option>
                            </select>
                            <%@ include file="include/include-menu.jspf" %>
                        </div>
                    </div>
                </div>
                <div class="benefits__content">
                    <article class="benefits-program benefits-program--traffic">
                        <header>
                            <div><h2><span>2023 여행가는 달 특별할인혜택</span><strong>교통혜택</strong></h2>
                                <p>국내여행 준비중이라면?<br>여행가는 달에서 준비한 교통혜택을 챙겨가세요!</p></div>
                        </header>
                        <section data-theme="train">
                            <div><h3><span>여행가는 달</span>
                                철도 할인 프로모션</h3>
                                <div>
                                    <div><h4>하나. 지역관광 결합형 KTX 할인</h4>
                                        <p>KTX 관광열차 승차권 할인(주말 30%/주중 50% 할인)</p>
                                        <p>지역 숙박권 혹은 관광지 입장권 등 결합구매 시 KTX 할인</p>
                                        <ul>
                                            <li>참여사 : 야놀자, 웹투어, 쏘카, 무브, 와그, 마실, 여행공방, 해밀여행사</li>
                                        </ul>
                                    </div>
                                </div>
                                <div>
                                    <div><h4>둘. 관광열차 할인</h4>
                                        <p>관광열차 5개 노선 대상 승차권 할인(주말 30%/주중 50% 할인)</p>
                                        <ul>
                                            <li>서해금빛열차, 남도해양열차, 동해산타열차, 백두대간협곡열차, 정선아리랑열차</li>
                                        </ul>
                                    </div>
                                </div>
                                <div>
                                    <div><h4>셋. 내일로패스 할인</h4>
                                        <p>전 연령 대상 내일로패스 1만원 할인(5만명 대상)</p>
                                        <ul>
                                            <li>KTX 1일 1회, 좌석 지정가능(이용기간 중 총 2회)<br>일반열차 1일 2회, 좌석 지정가능</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div><h4><img src="/travelmonth/assets/images/@temp/logo_korail.png" alt="KORAIL"></h4>
                                <div><h5><span>KTX 타고 떠나는</span>
                                    자유로운 기차여행</h5>
                                    <dl>
                                        <dt>KTX 관광상품 및<br>
                                            관광열차 승차권
                                        </dt>
                                        <dd>최대 <strong>50<span>%</span></strong> 할인</dd>
                                    </dl>
                                </div>
                                <div><h5><span>대한민국 대표 철도여행패스</span>
                                    국내 방방곡곡을 자유롭게!</h5>
                                    <dl>
                                        <dt>내일로패스 이용권</dt>
                                        <dd><strong>1<span>만원</span></strong> 할인</dd>
                                    </dl>
                                </div>
                                <p><a href="#">할인혜택 보러가기</a></p></div>
                            <div>
                                <dl>
                                    <div>
                                        <dt>판매 기간</dt>
                                        <dd>0월 00일 ~ 0월 00일</dd>
                                    </div>
                                    <div>
                                        <dt>이용 기간</dt>
                                        <dd>0월 00일 ~ 0월 00일</dd>
                                    </div>
                                    <div>
                                        <dt>문의처</dt>
                                        <dd>1544-7788</dd>
                                    </div>
                                </dl>
                            </div>
                            <div>
                                <ul>
                                    <li>이용일 기준일은 승차 시작일 기준</li>
                                    <li>예산 소진 시 조기 마감 가능</li>
                                </ul>
                            </div>
                        </section>
                        <section data-theme="airplane">
                            <div><h3><span>여행가는 달</span>
                                국내 항공권 할인</h3>
                                <div><h4>지방공항 도착 편도 항공<br>노선 이용 시 할인</h4>
                                    <ul>
                                        <li>제주•부산 제외</li>
                                    </ul>
                                </div>
                            </div>
                            <div><h4><img src="/travelmonth/assets/images/@temp/logo_kac.png" alt="KAC"></h4>
                                <div><h5><span>비행기타고 떠나는</span>
                                    방방곡곡 국내여행</h5>
                                    <dl>
                                        <dt>지방공항 도착 편도 항공권</dt>
                                        <dd><strong>1.5~2.1<span>만원</span></strong> 할인</dd>
                                    </dl>
                                </div>
                                <p><a href="#">할인혜택 보러가기</a></p></div>
                            <div>
                                <dl>
                                    <div>
                                        <dt>판매 기간</dt>
                                        <dd>2023년 5월 24일 ~ 7월 15일</dd>
                                    </div>
                                    <div>
                                        <dt>이용 기간</dt>
                                        <dd>2023년 6월 1일 ~ 7월 22일</dd>
                                    </div>
                                    <div>
                                        <dt>참여항공사</dt>
                                        <dd>진에어, 제주항공, 플라이강원, 하이에어, 에어부산</dd>
                                    </div>
                                </dl>
                            </div>
                            <div>
                                <ul>
                                    <li>이용일 기준일은 항공기 탑승일 기준</li>
                                    <li>예산 소진 시 조기 마감 가능</li>
                                </ul>
                            </div>
                        </section>
                        <section data-theme="bus">
                            <div><h3><span>여행가는 달</span>
                                시티투어 할인</h3>
                                <div><h4>카카오T를 통해 시티투어<br>승차권 예매 시 할인</h4></div>
                            </div>
                            <div><h4><img src="/travelmonth/assets/images/@temp/logo_t.png" alt="T"></h4>
                                <div><h5><span>편리하게 만나보는</span>
                                    지역 시티투어버스</h5>
                                    <dl>
                                        <dt>카카오T 앱에서 승차권 예매 시</dt>
                                        <dd><strong>50<span>%</span></strong> 할인</dd>
                                    </dl>
                                </div>
                                <p><a href="#">할인혜택 보러가기</a></p></div>
                            <div>
                                <dl>
                                    <div>
                                        <dt>판매 기간</dt>
                                        <dd>2023년 5월 24일 ~ 7월 15일</dd>
                                    </div>
                                    <div>
                                        <dt>이용 기간</dt>
                                        <dd>2023년 6월 1일 ~ 7월 22일</dd>
                                    </div>
                                    <div>
                                        <dt>문의처</dt>
                                        <dd><a href="#" target="_blank">카카오T 고객센터 바로가기</a></dd>
                                    </div>
                                </dl>
                            </div>
                            <div>
                                <ul>
                                    <li>이용일 기준일은 시티투어버스 탑승일 기준</li>
                                    <li>예산 소진 시 조기 마감 가능</li>
                                </ul>
                            </div>
                        </section>
                        <section data-theme="car">
                            <div><h3><span>여행가는 달</span>
                                카모아 렌터카 할인</h3>
                                <div>
                                    <div><h4>전국 렌터카 10% 할인</h4>
                                        <ul>
                                            <li>제주•부산 제외</li>
                                        </ul>
                                    </div>
                                </div>
                                <div>
                                    <div><h4>일부 지역 소재 렌터카 30% 할인</h4>
                                        <ul>
                                            <li>결제 건당 최대 3만원 할인</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div><h4><img src="/travelmonth/assets/images/@temp/logo_carmoa.png" alt="카모아"></h4>
                                <div><h5><span>전국 어디서나</span>
                                    렌터카를 쉽고 빠르게!</h5>
                                    <dl>
                                        <dt>카모아 렌터카</dt>
                                        <dd><strong>10<span>%</span>~30<span>%</span></strong> 할인</dd>
                                    </dl>
                                </div>
                                <p><a href="#">할인혜택 보러가기</a></p></div>
                            <div>
                                <dl>
                                    <div>
                                        <dt>판매 기간</dt>
                                        <dd>2023년 5월 24일 ~ 7월 15일</dd>
                                    </div>
                                    <div>
                                        <dt>이용 기간</dt>
                                        <dd>2023년 6월 1일 ~ 7월 22일</dd>
                                    </div>
                                    <div>
                                        <dt>문의처</dt>
                                        <dd>1544-7788</dd>
                                    </div>
                                </dl>
                            </div>
                            <div>
                                <ul>
                                    <li>이용일 기준일은 렌터카 이용 시작일 기준</li>
                                    <li>예산 소진 시 조기 마감 가능</li>
                                </ul>
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
