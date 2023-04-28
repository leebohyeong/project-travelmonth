package kr.or.visitkorea.korean.global.common.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import kr.or.visitkorea.korean.global.common.service.CommonService;
import kr.or.visitkorea.korean.global.dto.CommonResponse;
import kr.or.visitkorea.korean.global.util.RequestUrl;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class CommonServiceImpl extends CommonServiceImplWrapper implements CommonService
{

	private final ObjectMapper MAPPER;

	/**
	 * GET LOCAL LIST
	 * @return
	 */
	@Override
	public Object getLocalList()
	{
		try {
			JSONObject jsonObject = RequestUrl.get(TRAVEL_MONTH_SITE_URL + "/local/list");
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
		catch (Exception exception) {
			log.error("local List Exception : {}", exception.getMessage(), exception);
		}
		return null;
	}

	/**
	 * GET LOCAL BY NAME_EN
	 * @param nameEn
	 * @return
	 */
	@Override
	public Object getLocalByNameEn(String nameEn)
	{
		try
		{
			JSONObject jsonObject = RequestUrl.get(TRAVEL_MONTH_SITE_URL + "/local/en/" + nameEn);
			if (jsonObject != null)
			{
				boolean result = (boolean) jsonObject.get("result");
				if (!result)
				{
					String message = String.valueOf(jsonObject.get("message"));
					throw new RuntimeException(message);
				}
				return jsonObject;
			}
		}
		catch (Exception exception)
		{
			log.error("Local Exception : {}", exception.getMessage(), exception);
		}
		return null;
	}

}
