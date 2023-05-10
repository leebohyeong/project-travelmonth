package kr.or.visitkorea.korean.benefits.service.impl;

import kr.or.visitkorea.korean.benefits.service.BenefitsService;
import kr.or.visitkorea.korean.global.common.service.impl.CommonServiceImplWrapper;
import kr.or.visitkorea.korean.global.util.RequestUrl;
import org.springframework.stereotype.Service;

@Service
public class BenefitsServiceImpl extends CommonServiceImplWrapper implements BenefitsService {

	/**
	 * GET TRAFFIC CONTENT HTML
	 * @return
	 */
	@Override
	public String getTrafficContentHtml() {
		try
		{
			String content = RequestUrl.readHtml(TRAVEL_MONTH_SITE_URL + "/html/traffic.html");
			if (content != null) {
				return content;
			}
		}
		catch (Exception exception)
		{
			exception.printStackTrace();
		}
		return null;
	}

	/**
	 * GET STAY CONTENT HTML
	 * @return
	 */
	@Override
	public String getStayContentHtml() {
		try
		{
			String content = RequestUrl.readHtml(TRAVEL_MONTH_SITE_URL + "/html/stay.html");
			if (content != null) {
				return content;
			}
		}
		catch (Exception exception)
		{
			exception.printStackTrace();
		}
		return null;
	}

}
