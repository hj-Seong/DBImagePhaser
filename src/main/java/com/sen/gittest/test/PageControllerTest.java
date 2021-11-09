package com.sen.gittest.test;

import java.util.Iterator;
import java.util.List;

import javax.validation.Valid;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.sen.gittest.domain.Image;
import com.sen.gittest.domain.ImageRepository;
import com.sen.gittest.web.dto.ImageUploadDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PageControllerTest {
	
	private final ImageRepository iamgeRepository;


	@GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/board/imageForm")
	public String imageForm() {
		return "board/imageForm";
	}
	

	@PostMapping("/board/imageUpload")
	public String imageUpload(@Valid ImageUploadDto dto) {
		
		dto.setContent(dto.getContent().replace("<p>", ""));
		dto.setContent(dto.getContent().replace("</p>", ""));

		iamgeRepository.save(dto.toEntity());
		
		return "redirect:/";
	}
	
	
	@GetMapping("/board/imagThumbnail")
	public String imageThumbnail(Model model) {
		List<Image> imagesEntity = iamgeRepository.findAll();
		Iterator<Image> it = imagesEntity.iterator();

		while(it.hasNext()) {
			Image imageEntity = it.next();
			System.out.println("dto title:"+imageEntity.getTitle());
			
			Document doc = Jsoup.parse(imageEntity.getContent());
			String src = doc.selectFirst("img").attr("src");
			imageEntity.setContent(src);
			
		}
		
		model.addAttribute("imagesEntity",imagesEntity);
		
		return "board/imageThumbnail";
	}
}
