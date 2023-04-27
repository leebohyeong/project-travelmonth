package kr.or.visitkorea.korean.program.service;

import org.json.simple.JSONObject;

public interface ProgramService
{

	/**
	 * GET ENJOY LIST
	 * @param request
	 * @return
	 */
	Object getEnjoyList(JSONObject request);

	/**
	 * GET TRAVEL LIST
	 * @param request
	 * @return
	 */
	Object getTravelList(JSONObject request);

}
