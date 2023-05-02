package kr.or.visitkorea.korean.trend.web;

import kr.or.visitkorea.korean.global.common.web.CommonControllerWrapper;
import kr.or.visitkorea.korean.program.service.ProgramService;
import kr.or.visitkorea.korean.trend.web.dto.TrendRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/trend")
public class TrendController extends CommonControllerWrapper
{

	private final ProgramService SERVICE;

	/**
	 * 여행트렌드관
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String list(TrendRequest.Search request, Model model)
	{
		return list("", request, model);
	}

	/**
	 * 여행트렌드관
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/trend-{trend:[a-j]}.do", method = RequestMethod.GET)
	public String list(@PathVariable(value = "trend", required = false) String trend, TrendRequest.Search request, Model model)
	{
		try
		{
			request.setSearch_trend_gb(trend);
			model.addAttribute("search", searchParameter(request));
			model.addAttribute("goods", SERVICE.getTravelList(new TrendRequest.Goods(request)));
			model.addAttribute("content", SERVICE.getTravelList(new TrendRequest.Content(request)));
		}
		catch (Exception exception)
		{
			log.error("Trend Page Exception : {}", exception.getMessage(), exception);
		}
		return "/trend/list";
	}

}
