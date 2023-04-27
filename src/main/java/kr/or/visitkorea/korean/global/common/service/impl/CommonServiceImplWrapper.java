package kr.or.visitkorea.korean.global.common.service.impl;

import egovframework.com.cmm.service.EgovProperties;

public class CommonServiceImplWrapper
{

	protected String TRAVEL_MONTH_SITE_URL =  EgovProperties.getProperty("Globals.TravelMonth.Site.Url");
	protected String INSTAGRAM_REQUEST_URL = EgovProperties.getProperty("Globals.Instagram.Request.Url");

}
