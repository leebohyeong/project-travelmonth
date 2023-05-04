package kr.or.visitkorea.korean.global.util;

import kr.or.visitkorea.korean.pageview.service.PageViewService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

@Slf4j
@Component
public class PageView {

	private static PageViewService SERVICE;
	private final PageViewService FINAL_SERVICE;

	public PageView(PageViewService SERVICE) { this.FINAL_SERVICE = SERVICE; }

	@PostConstruct
	private void init() { SERVICE = FINAL_SERVICE; }

	/**
	 * SEND PAGE VIEW
	 */
	public static void sendPageView()
	{
		try
		{
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
			Device device = DeviceUtils.getCurrentDevice(request);
			SERVICE.write(
				new HashMap<String, String>(){{
					put("user_ip", getRemoteAddr());
					put("deviceType", device.isMobile() ? "M" : "W");
					put("reffer_url", request.getHeader("Referer"));
					put("current_url", String.valueOf(request.getAttribute("javax.servlet.forward.request_uri")));
				}}
			);
		}
		catch (Exception exception)
		{
			exception.printStackTrace();
		}
	}

	/**
	 * GET REMOTE ADDR
	 * @return
	 */
	public static String getRemoteAddr()
	{
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		String ip = request.getHeader("X-FORWARDED-FOR");

		if (ip == null || ip.length() == 0)
		{
			ip = request.getHeader("Proxy-Client-IP");
		}

		if (ip == null || ip.length() == 0)
		{
			ip = request.getHeader("WL-Proxy-Client-IP");
		}

		if (ip == null || ip.length() == 0)
		{
			ip = request.getRemoteAddr() ;
		}

		return ip;
	}

}
