package kr.or.visitkorea.korean.event.web.dto;

import lombok.*;

import java.io.Serializable;

public class EventRequest {

	@Data
	@Builder
	@NoArgsConstructor
	@AllArgsConstructor
	public static class Search implements Serializable {

		private String search_enabled_st;

	}

	@Data
	@EqualsAndHashCode(callSuper = true)
	public static class Progress extends Search
	{

		public Progress() {
			super("Y");
		}

	}

	@Data
	@EqualsAndHashCode(callSuper = true)
	public static class Ended extends Search
	{

		public Ended() {
			super("N");
		}

	}

}
