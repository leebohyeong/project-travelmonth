package kr.or.visitkorea.korean.event.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import kr.or.visitkorea.korean.event.service.EventService;
import kr.or.visitkorea.korean.global.common.service.impl.CommonServiceImplWrapper;
import kr.or.visitkorea.korean.global.dto.CommonResponse;
import kr.or.visitkorea.korean.global.util.RequestUrl;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class EventServiceImpl extends CommonServiceImplWrapper implements EventService
{

	private final ObjectMapper MAPPER;

	/**
	 * GET LIST
	 *
	 * @return
	 */
	@Override
	public Object getList()
	{
		try
		{
			JSONObject jsonObject = RequestUrl.get(TRAVEL_MONTH_SITE_URL + "/event/list");
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
			log.error("Event List Exception : {}", exception.getMessage(), exception);
		}
		return null;
	}

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
			log.error("Event Main List Exception : {}", exception.getMessage(), exception);
		}
		return null;
	}

	/**
	 * GET MAIN LIST
	 *
	 * @return
	 */
	@Override
	public Object getBannerList()
	{
		try
		{
			JSONObject jsonObject = RequestUrl.get(TRAVEL_MONTH_SITE_URL + "/event/list?search_banner_st=Y");
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
			log.error("Event Banner List Exception : {}", exception.getMessage(), exception);
		}
		return null;
	}

}
