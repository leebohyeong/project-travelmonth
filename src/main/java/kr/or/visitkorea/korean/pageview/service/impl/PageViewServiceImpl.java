package kr.or.visitkorea.korean.pageview.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import kr.or.visitkorea.korean.global.common.service.impl.CommonServiceImplWrapper;
import kr.or.visitkorea.korean.global.util.RequestUrl;
import kr.or.visitkorea.korean.pageview.service.PageViewService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Slf4j
@Service
@RequiredArgsConstructor
public class PageViewServiceImpl extends CommonServiceImplWrapper implements PageViewService
{

	/**
	 * WRITE
	 * @param request
	 */
	@Override
	@SuppressWarnings("unchecked")
	public void write(Object request)
	{
		HashMap<String, String> parameters = new HashMap<String, String>();
		if (request != null)
		{
			if (request instanceof Map) {
				parameters = new ObjectMapper().convertValue(request, HashMap.class);
			}
		}

		JSONObject jsonObject = RequestUrl.post(TRAVEL_MONTH_SITE_URL + "/log/page-view-write", parameters);
		try
		{
			if (jsonObject != null)
			{
				boolean result = (boolean) jsonObject.get("result");
				if (!result)
				{
					String message = String.valueOf(jsonObject.get("message"));
					throw new RuntimeException(message);
				}
			}
		}
		catch (Exception exception)
		{
			log.error("Showcase List Exception : {}", exception.getMessage(), exception);
		}
	}

}
