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
		<section class="main__intro"><h2>여행이 활짝! 일상이 반짝! <br>
			대한민국은 <br>
			절찬여행중
		</h2></section>
		<section class="main__category">
			<ul class="category-tab">
				<li><a href="#"><p><strong>지역</strong>
					어디로 떠나시나요?</p></a></li>
				<li><a href="#"><p><strong>프로그램</strong>
					어떤 프로그램을 원하세요?
				</p></a></li>
			</ul>
			<div class="category-tab-contents">
				<div class="category-tab-contents__location">
					<div class="swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide"><a href="#"><span style="background-image:url()"></span>
								<p>서울</p></a></div>
							<div class="swiper-slide"><a href="#"><span style="background-image:url()"></span>
								<p>인천</p></a></div>
							<div class="swiper-slide"><a href="#"><span style="background-image:url()"></span>
								<p>대전</p></a></div>
							<div class="swiper-slide"><a href="#"><span style="background-image:url()"></span>
								<p>대구</p></a></div>
							<div class="swiper-slide"><a href="#"><span style="background-image:url()"></span>
								<p>광주</p></a></div>
							<div class="swiper-slide"><a href="#"><span style="background-image:url()"></span>
								<p>부산</p></a></div>
						</div>
					</div>
				</div>
				<div class="category-tab-contents__program">
					<div class="swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide"><a href="#"><span style="background-image:url()"></span>
								<p>교통 <br>
									혜택</p></a></div>
							<div class="swiper-slide"><a href="#"><span style="background-image:url()"></span>
								<p>숙박 <br>
									혜택</p></a></div>
							<div class="swiper-slide"><a href="#"><span style="background-image:url()"></span>
								<p>놀거리 <br>
									혜택</p></a></div>
							<div class="swiper-slide"><a href="#"><span style="background-image:url()"></span>
								<p>여행 <br>
									트렌드관</p></a></div>
							<div class="swiper-slide"><a href="#"><span style="background-image:url()"></span>
								<p>여행상품 <br>
									특별 기획전
								</p></a></div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="main__trend"><h2>요즘 여행 트렌드는</h2>
			<div class="trend-swiper">
				<div class="swiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><a href="#"><span><img src="${pageContext.request.contextPath}/assets/images/main/img_trend_1.png"></span>
							<p>농어촌/섬관광</p></a></div>
						<div class="swiper-slide"><a href="#"><span><img src="${pageContext.request.contextPath}/assets/images/main/img_trend_2.png"></span>
							<p>힐링/웰니스</p></a></div>
						<div class="swiper-slide"><a href="#"><span><img src="${pageContext.request.contextPath}/assets/images/main/img_trend_3.png"></span>
							<p>친환경여행</p></a></div>
						<div class="swiper-slide"><a href="#"><span><img src="${pageContext.request.contextPath}/assets/images/main/img_trend_4.png"></span>
							<p>살아보기여행 <br>
								(생활관광)</p></a></div>
						<div class="swiper-slide"><a href="#"><span><img src="${pageContext.request.contextPath}/assets/images/main/img_trend_4.png"></span>
							<p>열린관광</p></a></div>
						<div class="swiper-slide"><a href="#"><span><img src="${pageContext.request.contextPath}/assets/images/main/img_trend_5.png"></span>
							<p>K-Culture</p></a></div>
						<div class="swiper-slide"><a href="#"><span><img src="${pageContext.request.contextPath}/assets/images/main/img_trend_6.png"></span>
							<p>스포츠케이션</p></a></div>
						<div class="swiper-slide"><a href="#"><span><img src="${pageContext.request.contextPath}/assets/images/main/img_trend_7.png"></span>
							<p>취미여행</p></a></div>
						<div class="swiper-slide"><a href="#"><span><img src="${pageContext.request.contextPath}/assets/images/main/img_trend_8.png"></span>
							<p>미식여행</p></a></div>
						<div class="swiper-slide"><a href="#"><span><img src="${pageContext.request.contextPath}/assets/images/main/img_trend_9.png"></span>
							<p>반려동물 <br>
								동반여행
							</p></a></div>
					</div>
					<div class="swiper-scrollbar"></div>
				</div>
			</div>
		</section>
		<section class="main__benefits"><h2 class="screen_out">여행혜택</h2>
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
				<header><h2><strong>준</strong>이 추천해 <strong>준</strong> 여행정보</h2>
					<p></p></header>
				<div class="june-contents">
					<div class="june-contents__information">
						<iframe src="https://www.youtube.com/embed/vwjE85JBIH4"><span class="screen_out">여행가는달 유튜브영상</span>
						</iframe>
						<div>
							<div><p>주간 <br>
								여행정보</p><a href="#">더보기</a></div>
							<ul>
								<li><a href="#"><span>충북</span> 여름철에 떠나기 좋은 어촌체험휴양마을</a></li>
								<li><a href="#"><span>충남</span> 내일로 가는 결성향교, 향교Day 문예축전</a></li>
								<li><a href="#"><span>부산</span> 안 가면 후회할 숨은 벚꽃 명소</a></li>
								<li><a href="#"><span>울산</span> 봄바람 타고, 아이와 함께 블링블링 울산 여행</a></li>
								<li><a href="#"><span>전남</span> 순천 여행, 향긋한 꽃내음을 만끽할 봄 여행코스
								</a></li>
							</ul>
						</div>
					</div>
					<div class="june-contents__tourist">
						<div class="june-contents__tourist-banner"
						     style="background-image:url(/travelmonth/assets/images/main/img_june_banner.png)"><p class="screen_out">
							여행가는 달 광고 영상에서
							<strong>본 관광지는 어디일까요?</strong>
						</p></div>
						<div class="june-contents__tourist-list"><a class="june-contents__tourist-item" href="#"><p
								class="june-contents__tourist-text">여름철에 떠나기 좋은 <br>
							어촌체험휴양마을</p></a><a class="june-contents__tourist-item" href="#"><p
								class="june-contents__tourist-text">Endless summer <br>
							양양으로 떠나는 서핑 여행</p></a><a class="june-contents__tourist-item" href="#"><p
								class="june-contents__tourist-text">숲속으로 떠나는 <br>
							힐링여행 모음</p></a><a class="june-contents__tourist-item" href="#"><p
								class="june-contents__tourist-text">6월에 떠나는 <br>
							제주바다
						</p></a></div>
					</div>
				</div>
			</div>
		</section>
		<section class="main__event">
			<div>
				<header class="main__header"><h2>이벤트</h2>
					<p>여행가는 달에서 준비한 다양한 이벤트를 만나보세요!</p><a href="#">이벤트 바로가기</a></header>
				<div class="event-swiper">
					<div class="swiper">
						<div class="swiper-wrapper">
							<c:if test="${not empty event}">
								<c:if test="${event.result}">
									<c:set var="list" value="${event.data.list}"/>
									<c:forEach var="row" items="${list}" varStatus="loop">
										<div class="swiper-slide">
											<a href="${row.link}" target="${row.link_target}" style="background-image:url(${row.thumbnail})">
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
				<div class="swiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><a href="#" target="_blank"><img
								src="${pageContext.request.contextPath}/assets/images/main/img_organization_1.png" alt=""></a></div>
						<div class="swiper-slide"><a href="#" target="_blank"><img
								src="${pageContext.request.contextPath}/assets/images/main/img_organization_2.png" alt=""></a></div>
						<div class="swiper-slide"><a href="#" target="_blank"><img
								src="${pageContext.request.contextPath}/assets/images/main/img_organization_3.png" alt=""></a></div>
						<div class="swiper-slide"><a href="#" target="_blank"><img
								src="${pageContext.request.contextPath}/assets/images/main/img_organization_4.png" alt=""></a></div>
						<div class="swiper-slide"><a href="#" target="_blank"><img
								src="${pageContext.request.contextPath}/assets/images/main/img_organization_5.png" alt=""></a></div>
						<div class="swiper-slide"><a href="#" target="_blank"><img
								src="${pageContext.request.contextPath}/assets/images/main/img_organization_6.png" alt=""></a></div>
					</div>
				</div>
			</div>
		</section>
		<section class="main__travel">
			<header><h2>대한민국은 절찬여행중</h2>
				<p>6월, 꿈꿔왔던 여행의 주인공이 되어보세요! <br>
					<strong>여행가는 달</strong> <strong>2023.6.1 - 6.30</strong></p><a href="#">여행가는 달 자세히보기</a></header>
			<div>
				<iframe src="https://www.youtube.com/embed/vwjE85JBIH4"><span class="screen_out">여행으로[웃음을]재생하기</span></iframe>
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
										<a href="${row.permalink}" target="_blank" style="background-image:url(${row.media_url})"></a>
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
	<%@ include file="include/include-footer.jspf" %>
</body>
</html>
