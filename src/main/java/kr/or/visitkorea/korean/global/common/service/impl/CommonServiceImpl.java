package kr.or.visitkorea.korean.global.common.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import kr.or.visitkorea.korean.global.common.service.CommonService;
import kr.or.visitkorea.korean.global.dto.CommonResponse;
import kr.or.visitkorea.korean.global.util.RequestUrl;
import lombok.RequiredArgsConstructor;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CommonServiceImpl extends CommonServiceImplWrapper implements CommonService {

	private final ObjectMapper MAPPER;
	private static final Logger LOGGER = LoggerFactory.getLogger(CommonServiceImpl.class);

	/**
	 * GET AREA LIST
	 * @return
	 */
	@Override
	public Object getSidoList() {
		try {
			JSONObject jsonObject = RequestUrl.get(TRAVEL_MONTH_REQUEST_URL + "/area/list");
			if (jsonObject != null) {
				boolean result = (boolean) jsonObject.get("result");
				if (!result) {
					String message = String.valueOf(jsonObject.get("message"));
					throw new RuntimeException(message);
				}
				return MAPPER.convertValue(jsonObject, CommonResponse.List.class);
			}
		} catch (Exception exception) {
			LOGGER.error("Area List Exception");
			LOGGER.error("{} ", exception.getMessage(), exception);
		}
		return null;
	}
}
