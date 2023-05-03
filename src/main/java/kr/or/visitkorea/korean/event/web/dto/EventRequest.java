package kr.or.visitkorea.korean.event.web.dto;

import lombok.*;

import java.io.Serializable;

public class EventRequest {

	@Data
	public static class Search implements Serializable {

		private String search_event_gb;

	}

}
