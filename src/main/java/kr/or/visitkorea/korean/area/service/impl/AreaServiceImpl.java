package kr.or.visitkorea.korean.area.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import kr.or.visitkorea.korean.area.service.AreaService;
import kr.or.visitkorea.korean.global.common.service.impl.CommonServiceImplWrapper;
import kr.or.visitkorea.korean.global.dto.CommonResponse;
import kr.or.visitkorea.korean.global.util.RequestUrl;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AreaServiceImpl  extends CommonServiceImplWrapper implements AreaService
{

	private final ObjectMapper MAPPER;

	/**
	 * GET LIST
	 * @param request
	 * @return
	 */
	@Override
	@SuppressWarnings("unchecked")
	public Object getList(JSONObject request) {
		try {
			if (request != null)
			{
				boolean result = (boolean) request.get("result");
				if (result)
				{
					JSONObject data = (JSONObject) request.get("data");
					JSONObject jsonObject = RequestUrl.get(TRAVEL_MONTH_SITE_URL + "/program/travel-list?search_area=" + data.get("code"));
					if (jsonObject != null)
					{
						result = (boolean) jsonObject.get("result");
						if (!result)
						{
							String message = String.valueOf(jsonObject.get("message"));
							throw new RuntimeException(message);
						}
						return MAPPER.convertValue(jsonObject, CommonResponse.List.class);
					}
				}
			}
		}
		catch (Exception exception)
		{
			LOGGER.error("Area List Exception : {}", exception.getMessage(), exception);
		}
		return null;
	}

}
