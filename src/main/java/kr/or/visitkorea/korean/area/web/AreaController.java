package kr.or.visitkorea.korean.area.web;

import kr.or.visitkorea.korean.global.common.service.CommonService;
import kr.or.visitkorea.korean.global.common.web.CommonControllerWrapper;
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
@RequestMapping("/area")
public class AreaController<T> extends CommonControllerWrapper
{

	private final ProgramService PROGRAM_SERVICE;
	private final CommonService COMMON_SERVICE;

	/**
	 * 지역별 페이지
	 * @param area
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{area}.do", method = RequestMethod.GET)
	public String index(@PathVariable("area") String area, Model model)
	{
		try
		{
			JSONObject jsonObject = (JSONObject) COMMON_SERVICE.getSidoByNameEn(area);
			model.addAttribute("area", jsonObject);
			model.addAttribute("enjoy", PROGRAM_SERVICE.getEnjoyList(jsonObject));
			model.addAttribute("travel", PROGRAM_SERVICE.getTravelList(jsonObject));
		}
		catch (Exception exception)
		{
			log.error(area.substring(0, 1).toUpperCase() + area.substring(1) + " Page Exception : {}", exception.getMessage(), exception);
		}
		return "/area/index";
	}


}
