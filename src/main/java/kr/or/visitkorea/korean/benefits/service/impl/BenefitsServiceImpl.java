package kr.or.visitkorea.korean.benefits.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import kr.or.visitkorea.korean.benefits.service.BenefitsService;
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
public class BenefitsServiceImpl extends CommonServiceImplWrapper implements BenefitsService {

	private final ObjectMapper MAPPER;

	/**
	 * GET TRAFFIC CONTENT HTML
	 * @return
	 */
	@Override
	public Object getTrafficContentHtml() {
		try
		{
			JSONObject jsonObject = RequestUrl.get(TRAVEL_MONTH_SITE_URL + "/html/traffic");
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
			log.error("Read Html Exception : {}", exception.getMessage(), exception);
			exception.printStackTrace();
		}
		return null;
	}

	/**
	 * GET STAY CONTENT HTML
	 * @return
	 */
	@Override
	public Object getStayContentHtml() {
		try
		{
			JSONObject jsonObject = RequestUrl.get(TRAVEL_MONTH_SITE_URL + "/html/stay");
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
			log.error("Read Html Exception : {}", exception.getMessage(), exception);
			exception.printStackTrace();
		}
		return null;
	}

}
