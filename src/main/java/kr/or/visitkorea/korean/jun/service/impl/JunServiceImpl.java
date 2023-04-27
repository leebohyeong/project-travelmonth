package kr.or.visitkorea.korean.jun.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import kr.or.visitkorea.korean.global.common.service.impl.CommonServiceImplWrapper;
import kr.or.visitkorea.korean.global.dto.CommonResponse;
import kr.or.visitkorea.korean.global.util.RequestUrl;
import kr.or.visitkorea.korean.jun.service.JunService;
import kr.or.visitkorea.korean.showcase.service.ShowcaseService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class JunServiceImpl extends CommonServiceImplWrapper implements JunService
{

	private final ObjectMapper MAPPER;

	/**
	 * GET LIST
	 * @return
	 */
	@Override
	public Object getList()
	{
		try
		{
			JSONObject jsonObject = RequestUrl.get(TRAVEL_MONTH_SITE_URL + "/main/jun-list");
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
			log.error("Showcase List Exception : {}", exception.getMessage(), exception);
		}
		return null;
	}
}
