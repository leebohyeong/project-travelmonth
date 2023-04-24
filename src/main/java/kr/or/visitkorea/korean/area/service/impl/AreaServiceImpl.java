package kr.or.visitkorea.korean.area.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import kr.or.visitkorea.korean.area.service.AreaService;
import kr.or.visitkorea.korean.global.common.service.impl.CommonServiceImplWrapper;
import kr.or.visitkorea.korean.global.dto.CommonResponse;
import kr.or.visitkorea.korean.global.util.RequestUrl;
import lombok.RequiredArgsConstructor;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AreaServiceImpl  extends CommonServiceImplWrapper implements AreaService {

	private final ObjectMapper MAPPER;

	/**
	 * GET LIST
	 * @param area
	 * @return
	 */
	@Override
	public Object getList(String area) {
		try {
			JSONObject jsonObject = RequestUrl.get(TRAVEL_MONTH_SITE_URL + "/area/list");
			if (jsonObject != null) {
				boolean result = (boolean) jsonObject.get("result");if (!result) {
					String message = String.valueOf(jsonObject.get("message"));
					throw new RuntimeException(message);
				}
				return MAPPER.convertValue(jsonObject, CommonResponse.List.class);
			}
		}
		catch (Exception exception) {
			LOGGER.error("Area List Exception : {}", exception.getMessage(), exception);
		}
		return null;
	}

}
