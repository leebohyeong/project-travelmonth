<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/include-taglib.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="../include/include-head.jspf" %>
</head>
<body id="travelmonth-trend-list">
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
                                <option value="trend" selected>여행트랜드관</option>
                                <option value="special">여행상품 특별 기획전</option>
                            </select>
                            <%@ include file="include/include-menu.jspf" %>
                        </div>
                    </div>
                </div>
                <div class="benefits__content">
                    <article class="trend-list" data-theme="a">
                        <div>
                            <header>
                                <div><h2><span>여행트렌드 1</span><strong>농어촌/섬관광</strong></h2>
                                    <p>엔데믹 이후 번잡하고 답답한 도시를 벗어나 휴식과 함께 새로운 경험, <br>잊지 못할 추억을 만드는 농어촌/섬 관광입니다.</p></div>
                            </header>
                            <nav>
                                <div class="swiper">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide"><strong data-theme="">전체</strong></div>
                                        <div class="swiper-slide"><a href="#" data-theme="a">농어촌<br>/섬관광</a></div>
                                        <div class="swiper-slide"><a href="#" data-theme="b">힐링<br>/웰니스</a></div>
                                        <div class="swiper-slide"><a href="#" data-theme="c">친환경<br>여행</a></div>
                                        <div class="swiper-slide"><a href="#"
                                                                     data-theme="d">살아보기여행<br><span>(생활관광)</span></a></div>
                                        <div class="swiper-slide"><a href="#" data-theme="e">열린<br>관광</a></div>
                                        <div class="swiper-slide"><a href="#" data-theme="f">K-<br>CULTURE</a></div>
                                        <div class="swiper-slide"><a href="#" data-theme="g">스포츠<br>케이션</a></div>
                                        <div class="swiper-slide"><a href="#" data-theme="h">취미<br>여행</a></div>
                                        <div class="swiper-slide"><a href="#" data-theme="i">미식<br>여행</a></div>
                                        <div class="swiper-slide"><a href="#" data-theme="j">반려동물<br>동반여행</a></div>
                                    </div>
                                </div>
                            </nav>
                        </div>
                        <aside>
                            <div>
                                <div class="swiper">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <dl>
                                                <dt><span>여행트렌드 1</span><strong>농어촌/섬관광</strong></dt>
                                                <dd>엔데믹 이후 번잡하고 답답한 도시를 벗어나 휴식과 함께 새로운 경험, <br>잊지 못할 추억을 만드는 농어촌/섬 관광입니다.
                                                </dd>
                                                <dd><a href="#">여행 프로그램 확인하기</a></dd>
                                            </dl>
                                        </div>
                                        <div class="swiper-slide">
                                            <dl>
                                                <dt><span>여행트렌드 2</span><strong>힐링/웰니스</strong></dt>
                                                <dd>일상에 지친 심신을 위로하고 치유하는 여행가는 달이 추천하는 <br>힐링/웰니스 관광입니다.</dd>
                                                <dd><a href="#">여행 프로그램 확인하기</a></dd>
                                            </dl>
                                        </div>
                                        <div class="swiper-slide">
                                            <dl>
                                                <dt><span>여행트렌드 3</span><strong>친환경여행</strong></dt>
                                                <dd>환경이슈에 대한 관심이 증가하는 추세에 맞추어 플로깅, 해변정화, 무동력 수단 이용 등 작지만 의미있는 탄소줄이기를 실천해
                                                    보세요.
                                                </dd>
                                                <dd><a href="#">여행 프로그램 확인하기</a></dd>
                                            </dl>
                                        </div>
                                        <div class="swiper-slide">
                                            <dl>
                                                <dt><span>여행트렌드 4</span><strong>살아보기여행(생활관광)</strong></dt>
                                                <dd>거주지가 아닌 다른 지역에서, 현지에서만 경험할 수 있는 먹거리와 볼거리, 문화를 즐기고, 현지인처럼 살아보는 듯한 감성을
                                                    느껴보는 여행입니다.
                                                </dd>
                                                <dd><a href="#">여행 프로그램 확인하기</a></dd>
                                            </dl>
                                        </div>
                                        <div class="swiper-slide">
                                            <dl>
                                                <dt><span>여행트렌드 5</span><strong>열린관광</strong></dt>
                                                <dd>누구나 누릴 수 있는 모두를 위한 장애물 없는 관광 “열린관광”, 한국관광공사가 추천하는 열린관광지를 따라 편안하고 안전한 여행을
                                                    하세요
                                                </dd>
                                                <dd><a href="#">여행 프로그램 확인하기</a></dd>
                                            </dl>
                                        </div>
                                        <div class="swiper-slide">
                                            <dl>
                                                <dt><span>여행트렌드 6</span><strong>K-CULTURE</strong></dt>
                                                <dd>케이팝, 드라마를 넘어 이제는 예능, 웹툰,뷰티, 패션까지.<br>K-CULTURE는 계속해서 확장하고 있습니다.<br>K-Culture
                                                    200% 즐기러 떠나보세요!
                                                </dd>
                                                <dd><a href="#">여행 프로그램 확인하기</a></dd>
                                            </dl>
                                        </div>
                                        <div class="swiper-slide">
                                            <dl>
                                                <dt><span>여행트렌드 7</span><strong>스포츠케이션</strong></dt>
                                                <dd>걷기, 등산 등 야외활동과 서핑, 열기구 등 국내 다양한 아웃도어 레저여행을 알려드립니다.</dd>
                                                <dd><a href="#">여행 프로그램 확인하기</a></dd>
                                            </dl>
                                        </div>
                                        <div class="swiper-slide">
                                            <dl>
                                                <dt><span>여행트렌드 8</span><strong>취미여행</strong></dt>
                                                <dd>나만의 취미를 여행과 함께 즐길 수 있는 여행입니다. 내 취미에 맞는 여행이 있는지 찾아보세요.</dd>
                                                <dd><a href="#">여행 프로그램 확인하기</a></dd>
                                            </dl>
                                        </div>
                                        <div class="swiper-slide">
                                            <dl>
                                                <dt><span>여행트렌드 9</span><strong>미식여행</strong></dt>
                                                <dd>지역의 숨겨진 맛을 찾아 떠나는 오감만족 식도락 미식여행입니다.</dd>
                                                <dd><a href="#">여행 프로그램 확인하기</a></dd>
                                            </dl>
                                        </div>
                                        <div class="swiper-slide">
                                            <dl>
                                                <dt><span>여행트렌드 10</span><strong>반려동물동반여행</strong></dt>
                                                <dd>반려동물과 함께 행복한 추억을 쌓을 수 있는 추천여행지를 소개합니다.</dd>
                                                <dd><a href="#">여행 프로그램 확인하기</a></dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-button-prev"></div>
                                <div class="swiper-button-next"></div>
                            </div>
                        </aside>
                        <section class="list-thumbnail list-thumbnail--goods"><h3>해보고 싶은 여행 떠나보기</h3>
                            <h3>농어촌/섬관광 여행 떠나보기</h3>
                            <ul>
                                <li><a href="#modal-goods-1" data-bs-toggle="modal" data-bs-target="#modal-goods-1"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_2.png')"></span>
                                    <p>예약신청기간 : 5/24~6/20</p>
                                    <p>섬 속의 섬 접도어촌체험마을</p>
                                    <div><p>40,000원~</p>
                                        <p>당일</p></div>
                                </a></li>
                                <li><a href="#modal-goods-2" data-bs-toggle="modal" data-bs-target="#modal-goods-2"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_1.png')"></span>
                                    <p>예약신청기간 : 5/24~6/20</p>
                                    <p>[양양] 바다낚시 체험과 해변 플로깅 투어</p>
                                    <div><p>40,000원~</p>
                                        <p>당일</p></div>
                                </a></li>
                                <li><a href="#modal-goods-3" data-bs-toggle="modal" data-bs-target="#modal-goods-3"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_3.png')"></span>
                                    <p>예약신청기간 : 5/24~6/20</p>
                                    <p>자연경관이 아름다운 가경주마을체험</p>
                                    <div><p>40,000원~</p>
                                        <p>숙박</p></div>
                                </a></li>
                                <li><a href="#modal-goods-4" data-bs-toggle="modal" data-bs-target="#modal-goods-4"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_2.png')"></span>
                                    <p>예약신청기간 : 5/24~6/20</p>
                                    <p>섬 속의 섬 접도어촌체험마을</p>
                                    <div><p>40,000원~</p>
                                        <p>당일</p></div>
                                </a></li>
                                <li><a href="#modal-goods-5" data-bs-toggle="modal" data-bs-target="#modal-goods-5"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_3.png')"></span>
                                    <p>예약신청기간 : 5/24~6/20</p>
                                    <p>자연경관이 아름다운 가경주마을체험</p>
                                    <div><p>40,000원~</p>
                                        <p>숙박</p></div>
                                </a></li>
                                <li><a href="#modal-goods-6" data-bs-toggle="modal" data-bs-target="#modal-goods-6"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_1.png')"></span>
                                    <p>예약신청기간 : 5/24~6/20</p>
                                    <p>[양양] 바다낚시 체험과 해변 플로깅 투어</p>
                                    <div><p>40,000원~</p>
                                        <p>당일</p></div>
                                </a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-goods-7" data-bs-toggle="modal"
                                                                          data-bs-target="#modal-goods-7"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_2.png')"></span>
                                    <p>예약신청기간 : 5/24~6/20</p>
                                    <p>섬 속의 섬 접도어촌체험마을</p>
                                    <div><p>40,000원~</p>
                                        <p>당일</p></div>
                                </a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-goods-8" data-bs-toggle="modal"
                                                                          data-bs-target="#modal-goods-8"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_1.png')"></span>
                                    <p>예약신청기간 : 5/24~6/20</p>
                                    <p>[양양] 바다낚시 체험과 해변 플로깅 투어</p>
                                    <div><p>40,000원~</p>
                                        <p>당일</p></div>
                                </a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-goods-9" data-bs-toggle="modal"
                                                                          data-bs-target="#modal-goods-9"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_3.png')"></span>
                                    <p>예약신청기간 : 5/24~6/20</p>
                                    <p>자연경관이 아름다운 가경주마을체험</p>
                                    <div><p>40,000원~</p>
                                        <p>숙박</p></div>
                                </a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-goods-10" data-bs-toggle="modal"
                                                                          data-bs-target="#modal-goods-10"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_3.png')"></span>
                                    <p>예약신청기간 : 5/24~6/20</p>
                                    <p>자연경관이 아름다운 가경주마을체험</p>
                                    <div><p>40,000원~</p>
                                        <p>숙박</p></div>
                                </a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-goods-11" data-bs-toggle="modal"
                                                                          data-bs-target="#modal-goods-11"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_2.png')"></span>
                                    <p>예약신청기간 : 5/24~6/20</p>
                                    <p>섬 속의 섬 접도어촌체험마을</p>
                                    <div><p>40,000원~</p>
                                        <p>당일</p></div>
                                </a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-goods-12" data-bs-toggle="modal"
                                                                          data-bs-target="#modal-goods-12"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_1.png')"></span>
                                    <p>예약신청기간 : 5/24~6/20</p>
                                    <p>[양양] 바다낚시 체험과 해변 플로깅 투어</p>
                                    <div><p>40,000원~</p>
                                        <p>당일</p></div>
                                </a></li>
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
                        <section class="list-thumbnail list-thumbnail--contents"><h3>2023 여행 트렌드 알아보기</h3>
                            <h3>농어촌/섬관광 트렌드 알아보기</h3>
                            <ul>
                                <li><a href="#modal-trend-content-1" data-bs-toggle="modal"
                                       data-bs-target="#modal-trend-content-1"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_9.png')"></span>
                                    <p>숲과 바다가 아름다운 어촌마을<br>경남 진도 접도마을</p></a></li>
                                <li><a href="#modal-trend-content-2" data-bs-toggle="modal"
                                       data-bs-target="#modal-trend-content-2"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_6.png')"></span>
                                    <p>산류천석! 그래 석오처럼 산류천석!<br>나를 깨우다</p></a></li>
                                <li><a href="#modal-trend-content-3" data-bs-toggle="modal"
                                       data-bs-target="#modal-trend-content-3"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_6.png')"></span>
                                    <p>산류천석! 그래 석오처럼 산류천석!<br>나를 깨우다</p></a></li>
                                <li><a href="#modal-trend-content-4" data-bs-toggle="modal"
                                       data-bs-target="#modal-trend-content-4"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_7.png')"></span>
                                    <p>울창한 숲과 여유로운 바다<br>충남 태안 용신마을</p></a></li>
                                <li><a href="#modal-trend-content-5" data-bs-toggle="modal"
                                       data-bs-target="#modal-trend-content-5"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_8.png')"></span>
                                    <p>동해와 해송의 콜라보<br>경북 울진 구산마을</p></a></li>
                                <li><a href="#modal-trend-content-6" data-bs-toggle="modal"
                                       data-bs-target="#modal-trend-content-6"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_5.png')"></span>
                                    <p>국난을 슬기롭게 극복한 옥주,<br>슬기로운 옥주생활 1박2일</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-7"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-7"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_8.png')"></span>
                                    <p>동해와 해송의 콜라보<br>경북 울진 구산마을</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-8"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-8"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_4.png')"></span>
                                    <p>서대문형무소! 독립의 그날로 시간여행,<br>별을 따라 걷다</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-9"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-9"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_5.png')"></span>
                                    <p>국난을 슬기롭게 극복한 옥주,<br>슬기로운 옥주생활 1박2일</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-10"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-10"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_9.png')"></span>
                                    <p>숲과 바다가 아름다운 어촌마을<br>경남 진도 접도마을</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-11"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-11"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_5.png')"></span>
                                    <p>국난을 슬기롭게 극복한 옥주,<br>슬기로운 옥주생활 1박2일</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-12"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-12"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_8.png')"></span>
                                    <p>동해와 해송의 콜라보<br>경북 울진 구산마을</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-13"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-13"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_4.png')"></span>
                                    <p>서대문형무소! 독립의 그날로 시간여행,<br>별을 따라 걷다</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-14"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-14"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_8.png')"></span>
                                    <p>동해와 해송의 콜라보<br>경북 울진 구산마을</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-15"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-15"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_4.png')"></span>
                                    <p>서대문형무소! 독립의 그날로 시간여행,<br>별을 따라 걷다</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-16"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-16"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_5.png')"></span>
                                    <p>국난을 슬기롭게 극복한 옥주,<br>슬기로운 옥주생활 1박2일</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-17"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-17"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_7.png')"></span>
                                    <p>울창한 숲과 여유로운 바다<br>충남 태안 용신마을</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-18"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-18"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_9.png')"></span>
                                    <p>숲과 바다가 아름다운 어촌마을<br>경남 진도 접도마을</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-19"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-19"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_9.png')"></span>
                                    <p>숲과 바다가 아름다운 어촌마을<br>경남 진도 접도마을</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-20"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-20"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_7.png')"></span>
                                    <p>울창한 숲과 여유로운 바다<br>충남 태안 용신마을</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-21"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-21"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_7.png')"></span>
                                    <p>울창한 숲과 여유로운 바다<br>충남 태안 용신마을</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-22"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-22"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_6.png')"></span>
                                    <p>산류천석! 그래 석오처럼 산류천석!<br>나를 깨우다</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-23"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-23"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_6.png')"></span>
                                    <p>산류천석! 그래 석오처럼 산류천석!<br>나를 깨우다</p></a></li>
                                <li class="list-thumbnail__item--hide"><a href="#modal-trend-content-24"
                                                                          data-bs-toggle="modal"
                                                                          data-bs-target="#modal-trend-content-24"><span
                                        style="background-image: url('/travelmonth/assets/images/@temp/thumbnail_4.png')"></span>
                                    <p>서대문형무소! 독립의 그날로 시간여행,<br>별을 따라 걷다</p></a></li>
                            </ul>
                            <p>
                                <button type="button">MORE</button>
                            </p>
                        </section>
                        <div class="modal fade modal-trend-contents" id="modal-trend-content-1" data-theme="a" tabindex="-1"
                             data-bs-backdrop="static" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <article><h3 class="modal-trend-contents__title">댕댕이와 사람이 함께<br>행복한 강아지 숲 5스팟</h3>
                                        <ul class="modal-trend-contents__tab">
                                            <li><a class="modal-trend-contents__tab-item" href="#">추천1</a></li>
                                            <li><a class="modal-trend-contents__tab-item" href="#">추천2</a></li>
                                            <li><a class="modal-trend-contents__tab-item" href="#">추천3</a></li>
                                        </ul>
                                        <div class="modal-trend-contents__thumbnail">
                                            <div style="background-image: url('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=3f8fbd92-6b7e-46ba-9161-21bfd76e8e1b&amp;mode=progress')"></div>
                                        </div>
                                        <div class="modal-trend-contents__panel"><h4
                                                class="modal-trend-contents__panel-title">1. 휘바핀란드(강원도 홍천)</h4>
                                            <div class="modal-trend-contents__panel-contents"><p>이색 동물들과 함께하는 방목 체험형 동물원이라고
                                                생각하시면 될 것 같아요! 울타리가 없는 방목형 양떼목장이라서 강아지 여행 하며 사람 아이도 함께하는 여행이라면 함께 가보기에 좋은
                                                장소입니다.</p>
                                                <p>
                                                    <img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=f6c2cdb3-7c48-4ec1-b326-33e19002b0f1&amp;mode=progress"
                                                         alt="붉은 다리"></p>
                                                <p>무엇보다 애견동반 여행 중에 확 트인 초원을 볼 수 있어 좋은 곳이었는데요. 아이가 양떼 목장에서 먹이 주는 것만 재미있어 해서 못
                                                    가봤지만...</p></div>
                                            <dl class="modal-trend-contents__panel-info">
                                                <div>
                                                    <dt>주소</dt>
                                                    <dd>
                                                        <div>경기 안성시 공도읍 대신두길 28</div>
                                                    </dd>
                                                </div>
                                                <div>
                                                    <dt>테스트</dt>
                                                    <dd>
                                                        <div>테스트 내용1</div>
                                                        <div>테스트 내용2</div>
                                                    </dd>
                                                </div>
                                            </dl>
                                        </div>
                                        <div class="modal-trend-contents__panel"><h4
                                                class="modal-trend-contents__panel-title">2</h4></div>
                                        <div class="modal-trend-contents__panel"><h4
                                                class="modal-trend-contents__panel-title">3</h4></div>
                                    </article>
                                    <button class="modal-close" type="button" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../include/include-footer.jspf" %>
</body>
</html>
