package kr.or.visitkorea.korean.event.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import kr.or.visitkorea.korean.global.util.RequestUrl;
import kr.or.visitkorea.korean.event.service.EventService;
import kr.or.visitkorea.korean.global.dto.CommonResponse;
import lombok.RequiredArgsConstructor;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class EventServiceImpl implements EventService {

	private final ObjectMapper MAPPER;
	private static final Logger LOGGER = LoggerFactory.getLogger(EventServiceImpl.class);

	/**
	 * GET MAIN LIST
	 * @return
	 */
	@Override
	public Object getMainList() {
		try {
			JSONObject parameters = new JSONObject(){{ put("search_main_st", "Y"); }};
			JSONObject jsonObject = RequestUrl.get("http://localhost/event/list", parameters);
			if (jsonObject != null) {
				boolean result = (boolean) jsonObject.get("result");
				if (!result) {
					String message = String.valueOf(jsonObject.get("message"));
					throw new RuntimeException(message);
				}
				return MAPPER.convertValue(jsonObject, CommonResponse.List.class);
			}
		} catch (Exception exception) {
			LOGGER.error("Event Main List Exception");
			LOGGER.error("{} ", exception.getMessage(), exception);
		}
		return null;
	}

}
