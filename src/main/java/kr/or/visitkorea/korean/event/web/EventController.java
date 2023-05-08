package kr.or.visitkorea.korean.event.web;

import kr.or.visitkorea.korean.event.service.EventService;
import kr.or.visitkorea.korean.event.web.dto.EventRequest;
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
public class EventController
{

	private final EventService SERVICE;

	/**
	 * 이벤트 페이지
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String list(EventRequest.Search request, Model model)
	{
		try
		{
			model.addAttribute("banner", SERVICE.getBannerList());
			model.addAttribute("ended", SERVICE.getList(new EventRequest.Ended()));
			model.addAttribute("progress", SERVICE.getList(new EventRequest.Progress()));
		}
		catch (Exception exception)
		{
			log.error("Event List Page Exception : {}", exception.getMessage(), exception);
		}
		return "event/list";
	}

	/**
	 * 이벤트 > 준이 페이지
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/june.do", method = RequestMethod.GET)
	public String june(Model model)
	{
		return "event/june";
	}

}
