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
	 * GET SIDO LIST
	 * @return
	 */
	@Override
	public Object getSidoList()
	{
		try {
			JSONObject jsonObject = RequestUrl.get(TRAVEL_MONTH_SITE_URL + "/area/list");
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
			log.error("Area List Exception : {}", exception.getMessage(), exception);
		}
		return null;
	}

	/**
	 * GET SIDO BY NAME_EN
	 * @param nameEn
	 * @return
	 */
	@Override
	public Object getSidoByNameEn(String nameEn)
	{
		try
		{
			JSONObject jsonObject = RequestUrl.get(TRAVEL_MONTH_SITE_URL + "/area/en/" + nameEn);
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
			log.error("Area Exception : {}", exception.getMessage(), exception);
		}
		return null;
	}

}
