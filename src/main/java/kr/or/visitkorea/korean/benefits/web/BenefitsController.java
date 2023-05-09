package kr.or.visitkorea.korean.benefits.web;

import kr.or.visitkorea.korean.benefits.service.BenefitsService;
import kr.or.visitkorea.korean.benefits.web.dto.PlayRequest;
import kr.or.visitkorea.korean.global.common.service.CommonService;
import kr.or.visitkorea.korean.global.common.web.CommonControllerWrapper;
import kr.or.visitkorea.korean.global.util.Common;
import kr.or.visitkorea.korean.program.service.ProgramService;
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
@RequestMapping("/benefits")
public class BenefitsController<T> extends CommonControllerWrapper
{

	private final BenefitsService BENEFITS_SERVICE;
	private final ProgramService PROGRAM_SERVICE;
	private final CommonService COMMON_SERVICE;

	/**
	 * 여행혜택 > 지역별 페이지
	 * @param local
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/local/{local}.do", method = RequestMethod.GET)
	public String local(@PathVariable("local") String local, Model model)
	{
		try
		{
			JSONObject jsonObject = (JSONObject) COMMON_SERVICE.getLocalByNameEn(local);
			model.addAttribute("local", jsonObject);
			model.addAttribute("enjoy", PROGRAM_SERVICE.getEnjoyList(jsonObject));
			model.addAttribute("travel", PROGRAM_SERVICE.getTravelList(jsonObject));
		}
		catch (Exception exception)
		{
			log.error("Benefits Local(" + local.substring(0, 1).toUpperCase() + local.substring(1) + ") Page Exception : {}", exception.getMessage(), exception);
		}
		return "benefits/local";
	}

	/**
	 * 여행혜택 > 교통혜택 페이지
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/traffic.do", method = RequestMethod.GET)
	public String traffic(Model model)
	{
		try
		{
			model.addAttribute("content", BENEFITS_SERVICE.getTraffic());
		}
		catch (Exception exception)
		{
			log.error("Benefits Traffic Page Exception : {}", exception.getMessage(), exception);
		}
		return "benefits/traffic";
	}

	/**
	 * 여행혜택 > 숙박혜택 페이지
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/stay.do", method = RequestMethod.GET)
	public String stay(Model model)
	{
		return "benefits/stay";
	}

	/**
	 * 여행혜택 > 놀거리혜택 페이지
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/play.do", method = RequestMethod.GET)
	public String play(PlayRequest.Search request, Model model)
	{
		try
		{
			model.addAttribute("search", searchParameter(request));
			model.addAttribute("enjoy", PROGRAM_SERVICE.getEnjoyList(request));
		}
		catch (Exception exception)
		{
			log.error("Play Page Exception : {}", exception.getMessage(), exception);
		}
		return "benefits/play";
	}

}
