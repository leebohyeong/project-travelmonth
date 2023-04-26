package kr.or.visitkorea.korean.event.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import kr.or.visitkorea.korean.global.common.service.impl.CommonServiceImplWrapper;
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
public class EventServiceImpl extends CommonServiceImplWrapper implements EventService
{

	private final ObjectMapper MAPPER;

	/**
	 * GET MAIN LIST
	 * @return
	 */
	@Override
	@SuppressWarnings("unchecked")
	public Object getMainList()
	{
		try
		{
			JSONObject jsonObject = RequestUrl.get(TRAVEL_MONTH_SITE_URL + "/event/list?search_main_st=Y");
			if (jsonObject != null)
			{
				boolean result = (boolean) jsonObject.get("result");
				if (!result)
				{
					String message = String.valueOf(jsonObject.get("message"));
					throw new RuntimeException(message);
				}
				return MAPPER.convertValue(jsonObject, CommonResponse.List.class);
			}
		}
		catch (Exception exception)
		{
			LOGGER.error("Event Main List Exception : {}", exception.getMessage(), exception);
		}
		return null;
	}

}
