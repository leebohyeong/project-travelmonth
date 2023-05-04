package kr.or.visitkorea.korean.global.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.base.CaseFormat;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Common {

	/**
	 * GET THEMES
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static ArrayList<JSONObject> getThemes()
	{
		return new ArrayList<JSONObject>(){{
			add(new JSONObject(){{ put("theme", "a"); put("title", "농어촌<br>/섬관광"); put("sub_title", "여행트렌드 1"); put("main_title", "농어촌/섬관광"); put("content", "엔데믹 이후 번잡하고 답답한 도시를 벗어나 휴식과 함께 새로운 경험, <br>잊지 못할 추억을 만드는 농어촌/섬 관광입니다."); }});
			add(new JSONObject(){{ put("theme", "b"); put("title", "힐링<br>/웰니스"); put("sub_title", "여행트렌드 2"); put("main_title", "힐링/웰니스"); put("content", "일상에 지친 심신을 위로하고 치유하는 여행가는 달이 추천하는 <br>힐링/웰니스 관광입니다."); }});
			add(new JSONObject(){{ put("theme", "c"); put("title", "친환경<br>여행"); put("sub_title", "여행트렌드 3"); put("main_title", "친환경여행"); put("content", "환경이슈에 대한 관심이 증가하는 추세에 맞추어 플로깅, <br>해변정화, 무동력 수단 이용 등 작지만 의미있는 탄소줄이기를 실천해 보세요."); }});
			add(new JSONObject(){{ put("theme", "d"); put("title", "살아보기여행<br>(생활관광)"); put("sub_title", "여행트렌드 4"); put("main_title", "살아보기여행<span>(생활관광)</span>"); put("content", "거주지가 아닌 다른 지역에서, 현지에서만 경험할 수 있는 먹거리와 볼거리, <br>문화를 즐기고, 현지인처럼 살아보는 듯한 감성을 느껴보는 여행입니다."); }});
			add(new JSONObject(){{ put("theme", "e"); put("title", "열린<br>관광"); put("sub_title", "여행트렌드 5"); put("main_title", "열린관광"); put("content", "누구나 누릴 수 있는 모두를 위한 장애물 없는 관광 “열린관광”, <br>열린관광지를 따라 편안하고 안전한 여행을 하세요."); }});
			add(new JSONObject(){{ put("theme", "f"); put("title", "K-<br>CULTURE"); put("sub_title", "여행트렌드 6"); put("main_title", "K-Culture"); put("content", "케이팝, 드라마를 넘어 이제는 예술, 예능, 뷰티까지. K-Culture는 계속해서 <br>확장하고 있습니다. K-Culture 200% 즐기러 떠나보세요!"); }});
			add(new JSONObject(){{ put("theme", "g"); put("title", "스포츠<br>케이션"); put("sub_title", "여행트렌드 7"); put("main_title", "스포츠케이션"); put("content", "걷기, 등산 등 야외활동과 서핑, 골프 등 국내 다양한 아웃도어 <br>레저여행을 알려드립니다."); }});
			add(new JSONObject(){{ put("theme", "h"); put("title", "취미<br>여행"); put("sub_title", "여행트렌드 8"); put("main_title", "취미여행"); put("content", "나만의 취미를 여행과 함께 즐길 수 있습니다. <br>내 취미에 맞는 여행이 있는지 찾아보세요."); }});
			add(new JSONObject(){{ put("theme", "i"); put("title", "미식<br>여행"); put("sub_title", "여행트렌드 9"); put("main_title", "미식여행"); put("content", "지역의 숨겨진 맛을 찾아 떠나는 오감만족 <br>식도락 미식여행입니다."); }});
			add(new JSONObject(){{ put("theme", "j"); put("title", "반려동물<br>동반여행"); put("sub_title", "여행트렌드 10"); put("main_title", "반려동물동반여행"); put("content", "반려동물과 함께 행복한 추억을 쌓을 수 <br>있는 추천여행지를 소개합니다."); }});
		}};
	}

	/**
	 * TO JSONOBJECT
	 * @param strJson
	 * @return
	 */
	public static JSONObject toJSONObject(String strJson) {
		try
		{
			JSONParser parser = new JSONParser();
			return (JSONObject) parser.parse(strJson);
		}
		catch (Exception exception) {
			exception.printStackTrace();
			return null;
		}
	}

	/**
	 * SEARCH PARAMETER
	 * @param request
	 * @return
	 * @throws JsonProcessingException
	 * @throws IllegalAccessException
	 */
	public static Object searchParameter(Object request) throws JsonProcessingException, IllegalAccessException
	{
		Map<String, Object> parameter = new HashMap<>();
		if (request.getClass().getSuperclass() != null) {
			for (Field field : request.getClass().getSuperclass().getDeclaredFields()) {
				if (field.getName().contains("page") || field.getName().contains("search")) {
					field.setAccessible(true);
					if (field.get(request) != null) {
						if (field.get(request).getClass().isArray()) {
							String[] values =  new ObjectMapper().convertValue(field.get(request), String[].class);
							if (values != null) {
								parameter.put(CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, field.getName()), String.join(",", values));
							} else {
								parameter.put(CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, field.getName()), "");
							}
						} else {
							parameter.put(CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, field.getName()), field.get(request));
						}
					} else {
						parameter.put(CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, field.getName()), "");
					}
				}
			}
		}

		for (Field field : request.getClass().getDeclaredFields()) {
			if (field.getName().contains("seq") || field.getName().contains("page") || field.getName().contains("search")) {
				field.setAccessible(true);
				if (field.get(request) != null) {
					if (field.get(request).getClass().isArray()) {
						String[] values =  new ObjectMapper().convertValue(field.get(request), String[].class);
						if (values != null) {
							parameter.put(CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, field.getName()), String.join(",", values));
						} else {
							parameter.put(CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, field.getName()), "");
						}
					} else {
						parameter.put(CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, field.getName()), field.get(request));
					}
				} else {
					parameter.put(CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, field.getName()), "");
				}
			}
		}

		return parameter;
	}

	/**
	 * GET URL QUERY STRING
	 * @param request
	 * @return
	 */
	public static String getUrlQueryString(Object request) throws JsonProcessingException, IllegalAccessException
	{
		request = searchParameter(request);
		Map<String, Object> parameter = new ObjectMapper().convertValue(request, Map.class);
		return parameter.entrySet().stream()
				.map(p -> urlEncodeUTF8(p.getKey()) + "=" + urlEncodeUTF8(String.valueOf(p.getValue())))
				.reduce((p1, p2) -> p1 + "&" + p2)
				.map(s -> "?" + s)
				.orElse("");
	}

	/**
	 * URL ENCODE UTF8
	 * @param str
	 * @return
	 */
	public static String urlEncodeUTF8(String str)
	{
		try
		{
			return URLEncoder.encode(str, "UTF-8");
		}
		catch (UnsupportedEncodingException e)
		{
			throw new UnsupportedOperationException(e);
		}
	}

}
