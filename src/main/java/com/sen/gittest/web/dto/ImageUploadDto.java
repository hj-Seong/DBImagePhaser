package com.sen.gittest.web.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.sen.gittest.domain.Image;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ImageUploadDto {
	@Size(min=1, max= 500)
	@NotBlank
	private String title;
	private String content;
	
	public Image toEntity() {
		Image board = new Image();
		board.setTitle(title); // 아이디
		board.setContent(content);
		
		return board;
	}
}
