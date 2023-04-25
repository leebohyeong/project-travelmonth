package kr.or.visitkorea.korean.area.service;

import org.json.simple.JSONObject;

import javax.json.Json;

public interface AreaService {

	/**
	 * GET LIST
	 * @param area
	 * @return
	 */
	Object getList(JSONObject request);

}
