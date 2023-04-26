package kr.or.visitkorea.korean.instagram.service.impl;

import egovframework.com.cmm.service.EgovProperties;
import kr.or.visitkorea.korean.global.common.service.impl.CommonServiceImplWrapper;
import kr.or.visitkorea.korean.global.dto.CommonResponse;
import kr.or.visitkorea.korean.global.util.RequestUrl;
import kr.or.visitkorea.korean.instagram.service.InstagramService;
import lombok.RequiredArgsConstructor;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class InstagramServiceImpl<T> extends CommonServiceImplWrapper implements InstagramService<T>
{

	/**
	 * GET LIST
	 * @return
	 */
	@Override
	@SuppressWarnings("unchecked")
	public Object getList()
	{
		try
		{
			JSONObject jsonObject = RequestUrl.get(INSTAGRAM_REQUEST_URL);
			if (jsonObject != null)
			{
				JSONObject header = (JSONObject) jsonObject.get("header");
				if ("success".equals(String.valueOf(header.get("process"))))
				{
					JSONObject body = (JSONObject) jsonObject.get("body");
					if (body != null)
					{
						JSONObject result = (JSONObject) body.get("result");
						return new CommonResponse.List<T>(new CommonResponse.List.Data<T>((List<T>) result.get("data")));
					}
				}
			}
		}
		catch (Exception exception)
		{
			LOGGER.error("Instagram List Exception : {}", exception.getMessage(), exception);
		}
		return null;
	}

}
