package kr.or.visitkorea.korean.benefits.web.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.codehaus.jackson.annotate.JsonProperty;

import java.io.Serializable;

public class PlayRequest {

	@Data
	@Builder
	@NoArgsConstructor
	@AllArgsConstructor
	public static class Search implements Serializable {

		private String search_play_gb;

	}

}
