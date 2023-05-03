<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="include/include-taglib.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="include/include-head.jspf" %>
</head>
<body id="travelmonth-travelmonth-intro">
    <%@ include file="include/include-header.jspf" %>
    <div id="container">
        <article class="travelmonth-intro">
            <header>
                <div><h2>여행가는 달이란?</h2>
                    <p>국내여행을 통한 건강한 일상회복 도모 및 지역경제 활성화를 위해 문화체육관광부,<br>
                        한국관광공사와 전국의 지자체, 관광업계가 함께 추진하는 캠페인으로,<br>
                        다양한 할인혜택과 여행 프로그램 및 이벤트가 제공됩니다.
                    </p></div>
            </header>
            <section class="travelmonth-intro--video">
                <div class="travelmonth-intro--video__tab">
                    <ul class="category-tab">
                        <li><a class="category-tab__item category-tab__item--active" href="#">범용영상(40’s)</a></li>
                        <li><a class="category-tab__item" href="#">혜택영상(40’s)</a></li>
                    </ul>
                    <div class="category-tab-contents">
                        <div class="category-panel category-panel--active">
<%--                            <video width="100%" height="100%" poster="/travelmonth/assets/images/intro/thumbnail.png">--%>
<%--                                <source src="aa.mp4">--%>
<%--                            </video>--%>
                            <iframe src="https://www.youtube.com/embed/syTWVcb7z4E" frameborder="0"></iframe>
                        </div>
                        <div class="category-panel">
<%--                            <video width="100%" height="100%" poster="/travelmonth/assets/images/intro/thumbnail.png">--%>
<%--                                <source src="aa.mp4">--%>
<%--                            </video>--%>
                            <iframe src="https://www.youtube.com/embed/grFYVbpd92s" frameborder="0"></iframe>
                        </div>
                    </div>
                </div>
            </section>
            <section class="travelmonth-intro--poster">
                <div><h3><span>여행가는 달 <strong>포스터</strong></span></h3>
                    <p><span style="background-image: url('/travelmonth/assets/images/intro/poster_1.png')"></span><span
                            style="background-image: url('/travelmonth/assets/images/intro/poster_2.png')"></span></p>
                    <div class="travelmonth-intro--poster-notice"><h4>유의사항</h4>
                        <ul>
                            <li>1. <span>포스터의 저작권은 한국관광공사와 제작대행사에 있습니다.</span></li>
                            <li>2. <span>포스터 내 반드시 “문화체육관광부”, “한국관광공사” 로고 및 “여행가는 달” 캠페인 로고가 삽입되어야 합니다.</span></li>
                            <li>3. <span>타 기관의 로고를 삽입하여 사용할 경우 반드시 문화체육관광부 및 한국관광공사 로고와 같이 배치되어야 하며, 그 크기는 관광공사 로고 크기와 유사한 수준이어야 합니다.</span>
                            </li>
                            <li>4. <span>포스터 이미지의 일부분을 사용하는 것은 가능하지만(잘라쓰기), 이미지를 변형하거나, 합성하는 것은 불가합니다.</span></li>
                            <li>5. <span>제작한 게재물의 사용기간은 별도의 확인이 필요하며, 이외의 기간에 해당 이미지를 사용할 경우 발생되는 모델비용 및 문제의 귀속은 최종 사용자가 지게 됩니다.</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
            <section class="travelmonth-intro--leaflet">
                <div><h3><span>여행가는 달 <strong>리플렛</strong></span></h3>
                    <div><p><span style="background-image: url('/travelmonth/assets/images/intro/leaflet_1.png')"></span>
                        리플렛 앞면 - 골목길</p>
                        <p><span style="background-image: url('/travelmonth/assets/images/intro/leaflet_2.png')"></span>
                            리플렛 앞면 - 시니어</p>
                        <p><span style="background-image: url('/travelmonth/assets/images/intro/leaflet_3.png')"></span>
                            리플렛 앞면 - 촌캉스</p></div>
                    <div><p><span style="background-image: url('/travelmonth/assets/images/intro/leaflet_4.png')"></span>
                        리플렛 뒷면</p></div>
                </div>
            </section>
        </article>
    </div>
    <%@ include file="include/include-footer.jspf" %>
</body>
</html>
