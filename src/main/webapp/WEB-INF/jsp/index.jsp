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
		<!-- button.btn.btn-primary(type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop") Launch demo modal--><!-- #staticBackdrop.modal.fade(data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true").modal-dialog
	    .modal-content
	        .modal-header
	            h5.modal-title Modal title
	            button.btn-close(type="button" data-bs-dismiss="modal" aria-label="Close")
	        .modal-body
	            p Modal body text goes here.-->
		<section class="main__intro"><h2>여행이 활짝! 일상이 반짝! <br>
			대한민국은 <br>
			절찬여행중
		</h2></section>
		<section class="main__tab-menu">
			<dl>
				<div>
					<dt><strong>지역</strong>
						어디로 떠나시나요?
					</dt>
					<dd>서울</dd>
					<dd>인천</dd>
					<dd>대전</dd>
					<dd>대구</dd>
					<dd>광주</dd>
					<dd>부산</dd>
					<dd>울산</dd>
					<dd>경기</dd>
					<dd>강원</dd>
					<dd>충북</dd>
					<dd>충남</dd>
					<dd>세종</dd>
					<dd>경북</dd>
					<dd>경남</dd>
					<dd>전북</dd>
					<dd>전남</dd>
					<dd>제주</dd>
				</div>
				<div>
					<dt><strong>프로그램</strong>
						어떤 프로그램을 원하세요?
					</dt>
					<dd>교통 <br> 혜택</dd>
					<dd>숙박 <br> 혜택</dd>
					<dd>놀거리 <br> 혜택</dd>
					<dd>여행 <br> 트렌드관</dd>
					<dd>여행상품 <br> 특별 기획전</dd>
				</div>
			</dl>
		</section>
		<section class="main__trend"><h2>요즘 여행 트렌드는</h2>
			<div><p>농어촌/섬관광</p>
				<p>힐링/웰니스</p>
				<p>친환경여행</p>
				<p>살아보기여행 <br>
					(생활관광)</p>
				<p>열린관광</p>
				<p>K-Culture</p>
				<p>스포츠케이션</p>
				<p>취미여행</p>
				<p>미식여행</p>
				<p>반려동물 <br>
					동반여행
				</p></div>
		</section>
		<section class="main__benefits"><h2 class="screen_out">여행혜택</h2>
			<dl>
				<div>
					<dt>교통혜택</dt>
					<dd>국내여행 준비중이라면 <br>
						교통혜택을 챙겨가세요!
					</dd>
				</div>
				<div>
					<dt>숙박혜택</dt>
					<dd>여행의 완성은 잠자리! <br>
						역대급 숙박혜택을 확인하세요
					</dd>
				</div>
				<div>
					<dt>놀거리혜택택</dt>
					<dd>놀거리혜택으로 <br>
						풍성한 여행을 만들어가세요!
					</dd>
				</div>
			</dl>
		</section>
		<aside class="main__special">
			<div><h2>여행상품 특별 기획전</h2>
				<p>여행가는 달 기간동안 여행업계가 선보이는 <strong>각종 혜택들을 만나보세요.</strong></p>
				<button type="button">기획전 바로가기</button>
			</div>
		</aside>
		<section class="main__june"><h2><strong>준</strong>이 추천해 <strong>준</strong> 여행정보</h2>
			<div>
				<iframe src=""><span class="screen_out">여행가는달 유튜브영상</span></iframe>
				<div><p>주간 <br>
					여행정보</p>
					<button type="button">더보기</button>
					<ul>
						<li><span>충북</span> 여름철에 떠나기 좋은 어촌체험휴양마을</li>
						<li><span>충남</span> 내일로 가는 결성향교, 향교Day 문예축전</li>
						<li><span>부산</span> 안 가면 후회할 숨은 벚꽃 명소</li>
						<li><span>울산</span> 봄바람 타고, 아이와 함께 블링블링 울산 여행</li>
						<li><span>전남</span> 순천 여행, 향긋한 꽃내음을 만끽할 봄 여행코스</li>
					</ul>
				</div>
			</div>
			<div><p>여행가는 달 광고 영상에서
				<strong>본 관광지는 어디일까요?</strong></p>
				<ul>
					<li>여름철에 떠나기 좋은 <br>
						어촌체험휴양마을
					</li>
					<li>Endless summer <br>
						양양으로 떠나는 서핑 여행
					</li>
					<li>숲속으로 떠나는 <br>
						힐링여행 모음
					</li>
					<li>6월에 떠나는 <br>
						제주바다
					</li>
				</ul>
			</div>
		</section>
		<section class="main__event">
			<header class="main__header"><h2>이벤트</h2>
				<p>여행가는 달에서 준비한 다양한 이벤트를 만나보세요!</p><a href="#">이벤트 바로가기</a></header>
			<div class="swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><a href="#" target="_blank">부모님과 여.행.기 <br>
						SNS 인증샷 이벤트</a></div>
					<div class="swiper-slide"><a href="#" target="_blank">스팟트라이트 SNS 댓글 이벤트</a></div>
					<div class="swiper-slide"><a href="#" target="_blank">투(TWO)어게인 <br>
						SNS 여행 인증샷 이벤트</a></div>
					<div class="swiper-slide"><a href="#" target="_blank">부모님과 여.행.기 <br>
						SNS 댓글 이벤트
					</a></div>
				</div>
			</div>
		</section>
		<section class="main__organization">
			<div>
				<header class="main__header"><h2>여행가는 달 참여기관</h2></header>
				<div class="swiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><a href="#" target="_blank"><img
								src="/assets/images/main/img_organization_1.png"></a></div>
						<div class="swiper-slide"><a href="#" target="_blank"><img
								src="/assets/images/main/img_organization_2.png"></a></div>
						<div class="swiper-slide"><a href="#" target="_blank"><img
								src="/assets/images/main/img_organization_3.png"></a></div>
						<div class="swiper-slide"><a href="#" target="_blank"><img
								src="/assets/images/main/img_organization_4.png"></a></div>
						<div class="swiper-slide"><a href="#" target="_blank"><img
								src="/assets/images/main/img_organization_5.png"></a></div>
						<div class="swiper-slide"><a href="#" target="_blank"><img
								src="/assets/images/main/img_organization_6.png"></a></div>
					</div>
				</div>
			</div>
		</section>
		<section class="main__travel">
			<header><h2>대한민국은 절찬여행중</h2>
				<p>6월, 꿈꿔왔던 여행의 주인공이 되어보세요! <br>
					<strong>여행가는 달</strong> <strong>2023.6.1 - 6.30</strong></p><a href="#">여행가는 달 자세히보기</a></header>
			<div><img src="/assets/images/main/img_travel.jpg"><span class="screen_out">여행으로[웃음을]재생하기</span></div>
		</section>
		<section class="main__instagram">
			<header class="main__header"><h2>INSTAGRAM</h2><a href="#">여행가는 달 인스타그램 방문하기</a></header>
			<ul>
				<c:if test="${not empty instagram}">
					<c:if test="${instagram.result}">
						<c:set var="list" value="${instagram.data.list}"/>
						<c:forEach var="row" items="${list}" varStatus="loop">
							<li>
								<a href="${row.permalink}" target="_blank" style="background-image:url(${row.media_url})"></a>
							</li>
						</c:forEach>
					</c:if>
				</c:if>
			</ul>
		</section>
	</div>
	<%@ include file="include/include-footer.jspf" %>
</body>
</html>
