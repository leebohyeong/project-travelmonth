package kr.or.visitkorea.korean.global.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.base.CaseFormat;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

public class Common {

	/**
	 * SEARCH PARAMETER
	 * @param request
	 * @return
	 * @throws JsonProcessingException
	 * @throws IllegalAccessException
	 */
	public static Object searchParameter(Object request) throws JsonProcessingException, IllegalAccessException {
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
	public static String getUrlQueryString(Object request) throws JsonProcessingException, IllegalAccessException {
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
	public static String urlEncodeUTF8(String str) {
		try {
			return URLEncoder.encode(str, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			throw new UnsupportedOperationException(e);
		}
	}

}
