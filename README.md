# 여행가는달 

## 프로젝트 정보
- 한국관공공사 캠페인 사이트
- **웹사이트 URl**: https://korean.visitkorea.or.kr/travelmonth/main.do
- **제작 기간** : 2023,2024
- **제작 도구** : Intellij
- **사용 기술** : HTML5, CSS3, SCSS, JavaScript, Git, Webpack
- **팀 규모**: 7명 (기획자2, 디자이너1, 퍼블리셔3, 백엔드1)

## 프로젝트 설명
- 2023, 2024년도 메인페이지, 서브페이지(2page) 작업
- 다양한 디바이스 환경 대응을 위한 미디어 쿼리 설정하고 반응형으로 작업
- 웹 접근성 및 시멘틱 마크업을 고려한 HTML 구조 적용

## 프로젝트 구조
- 📂 __resource/ — 개발 소스 (js, scss, pug)
- 📂 src/main/resources/static/assets — 빌드 결과물 (배포용)

## 로컬에서 실행하기
```bash
git clone https://github.com/leebohyeong/project-travelmonth.git
cd __resource
npm install
npm run watch
```

## 개발서버 배포

```bash
npm run dev
```

## 실 서버 배포
```bash
npm run prod
```