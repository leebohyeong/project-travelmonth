package kr.or.visitkorea.korean.showcase.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import kr.or.visitkorea.korean.global.dto.CommonResponse;
import kr.or.visitkorea.korean.global.util.RequestUrl;
import kr.or.visitkorea.korean.showcase.service.ShowcaseService;
import lombok.RequiredArgsConstructor;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ShowcaseServiceImpl implements ShowcaseService {

	private final ObjectMapper MAPPER;
	private static final Logger LOGGER = LoggerFactory.getLogger(ShowcaseServiceImpl.class);

	/**
	 * GET LIST
	 * @return
	 */
	@Override
	public Object getList() {
		try {
			JSONObject jsonObject = RequestUrl.get("http://localhost/showcase/list");
			if (jsonObject != null) {
				boolean result = (boolean) jsonObject.get("result");
				if (!result) {
					String message = String.valueOf(jsonObject.get("message"));
					throw new RuntimeException(message);
				}
				return MAPPER.convertValue(jsonObject, CommonResponse.List.class);
			}
		} catch (Exception exception) {
			LOGGER.error("Showcase List Exception");
			LOGGER.error("{} ", exception.getMessage(), exception);
		}
		return null;
	}
}
