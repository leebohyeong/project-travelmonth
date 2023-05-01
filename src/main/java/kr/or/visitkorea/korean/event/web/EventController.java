package kr.or.visitkorea.korean.event.web;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/event")
public class EventController {

	/**
	 * 이벤트 페이지
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String list(Model model)
	{
		try
		{

		}
		catch (Exception exception)
		{
			log.error("Event List Page Exception : {}", exception.getMessage(), exception);
		}
		return "/event/list";
	}

	/**
	 * 이벤트 > 준이 페이지
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/june.do", method = RequestMethod.GET)
	public String june(Model model)
	{
		try
		{

		}
		catch (Exception exception)
		{
			log.error("June Page Exception : {}", exception.getMessage(), exception);
		}
		return "/event/june";
	}

}
