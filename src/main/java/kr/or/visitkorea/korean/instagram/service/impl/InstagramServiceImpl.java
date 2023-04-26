package kr.or.visitkorea.korean.instagram.service.impl;

import kr.or.visitkorea.korean.global.common.service.impl.CommonServiceImplWrapper;
import kr.or.visitkorea.korean.global.dto.CommonResponse;
import kr.or.visitkorea.korean.global.util.RequestUrl;
import kr.or.visitkorea.korean.instagram.service.InstagramService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
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
			log.error("Instagram List Exception : {}", exception.getMessage(), exception);
		}
		return null;
	}

}
