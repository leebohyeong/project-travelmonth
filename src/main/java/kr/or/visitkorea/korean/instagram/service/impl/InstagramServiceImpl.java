package kr.or.visitkorea.korean.instagram.service.impl;

import egovframework.com.cmm.service.EgovProperties;
import kr.or.visitkorea.korean.global.common.service.impl.CommonServiceImplWrapper;
import kr.or.visitkorea.korean.global.dto.CommonResponse;
import kr.or.visitkorea.korean.global.util.RequestUrl;
import kr.or.visitkorea.korean.instagram.service.InstagramService;
import lombok.RequiredArgsConstructor;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class InstagramServiceImpl<T> implements InstagramService<T> {

	private static final Logger LOGGER = LoggerFactory.getLogger(InstagramServiceImpl.class);

	/**
	 * GET LIST
	 * @return
	 */
	@Override
	@SuppressWarnings("unchecked")
	public Object getList() {
		try {
			JSONObject jsonObject = RequestUrl.get(EgovProperties.getProperty("Globals.Instagram.Request.Url"));
			if (jsonObject != null) {
				JSONObject header = (JSONObject) jsonObject.get("header");
				if ("success".equals(String.valueOf(header.get("process")))) {
					JSONObject body = (JSONObject) jsonObject.get("body");
					if (body != null) {
						JSONObject result = (JSONObject) body.get("result");
						final JSONArray data = (JSONArray) result.get("data");
						return new CommonResponse.List<T>(new CommonResponse.List.Data<T>(data));
					}
				}
			}
		} catch (Exception exception) {
			LOGGER.error("Instagram List Exception");
			LOGGER.error("{} ", exception.getMessage(), exception);
		}
		return null;
	}

}
