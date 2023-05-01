package kr.or.visitkorea.korean.program.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import kr.or.visitkorea.korean.global.common.service.impl.CommonServiceImplWrapper;
import kr.or.visitkorea.korean.global.dto.CommonResponse;
import kr.or.visitkorea.korean.global.util.Common;
import kr.or.visitkorea.korean.global.util.RequestUrl;
import kr.or.visitkorea.korean.program.service.ProgramService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import javax.json.Json;

@Slf4j
@Service
@RequiredArgsConstructor
public class ProgramServiceImpl extends CommonServiceImplWrapper implements ProgramService
{

	private final ObjectMapper MAPPER;

	/**
	 * GET ENJOY LIST
	 *
	 * @param request
	 * @return
	 */
	@Override
	public Object getEnjoyList(Object request)
	{
		try
		{
			String parameter = "";
			if (request != null)
			{
				if (request instanceof JSONObject)
				{
					JSONObject jsonObject = (JSONObject) request;
					boolean result = (boolean) jsonObject.get("result");
					if (result)
					{
						JSONObject data = (JSONObject) jsonObject.get("data");
						parameter = "?search_area=" + String.valueOf(data.get("code")).replaceAll(",", "-");
					}
				} else {
					parameter = Common.getUrlQueryString(request);
				}
			}

			JSONObject jsonObject = RequestUrl.get(TRAVEL_MONTH_SITE_URL + "/program/enjoy-list" + parameter);
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
			log.error("Enjoy List Exception : {}", exception.getMessage(), exception);
		}
		return null;
	}

	/**
	 * GET LIST
	 * @param request
	 * @return
	 */
	@Override
	public Object getTravelList(Object request) {
		try
		{
			String parameter = "";
			if (request != null)
			{
				if (request instanceof JSONObject)
				{
					JSONObject jsonObject = (JSONObject) request;
					boolean result = (boolean) jsonObject.get("result");
					if (result)
					{
						JSONObject data = (JSONObject) jsonObject.get("data");
						parameter = "?search_area=" + String.valueOf(data.get("code")).replaceAll(",", "-");
					}
				} else {
					parameter = Common.getUrlQueryString(request);
				}
			}

			JSONObject jsonObject = RequestUrl.get(TRAVEL_MONTH_SITE_URL + "/program/travel-list" + parameter);
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
			log.error("Travel List Exception : {}", exception.getMessage(), exception);
		}
		return null;
	}

}
