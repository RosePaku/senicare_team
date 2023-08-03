package com.java.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.CommentDto;
import com.java.dto.MadangDto;
import com.java.dto.PageDto;
import com.java.mapper.WelMapper;

@Service
public class WelServiceImpl implements WelService {

	@Autowired
	WelMapper welMapper;

	// 게시글 전체 가져오기
	@Override
	public HashMap<String, Object> selectAll(PageDto pageDto, String rowPP) {
		HashMap<String, Object> map = new HashMap<>();
		// 페이지 메소드
		pageDto = pageMethod(pageDto, rowPP);

		// 일반회원 게시글 전체
		ArrayList<MadangDto> list = welMapper.selectAll(pageDto);
		
		map.put("list", list);
		map.put("pageDto", pageDto);
		map.put("s_opt", pageDto.getS_opt());
		map.put("s_word", pageDto.getS_word());
		map.put("s_loc", pageDto.getLocString2());

		return map;
	}

	public PageDto pageMethod(PageDto pageDto, String rowPP) {
		// 체크박스 배열값을 하나의 문자열로 변환( | 버티컬바 구분)
		if (pageDto.getS_loc() != null) { // 체크박스 배열에 값 들어오면
			pageDto.setLocString(String.join("|", pageDto.getS_loc())); // locString에 스트링 하나로 변환   
			// locString을 MyBatis 매개변수로 전달
		}
		
		// 체크박스 배열값을 하나의 문자열로 변환( , 쉼표 구분)
		if (pageDto.getS_loc() != null) { // 체크박스 배열에 값 들어오면
			pageDto.setLocString2(String.join(",", pageDto.getS_loc())); // locString에 스트링 하나로 변환   
			// locString을 MyBatis 매개변수로 전달
		}
		
		// 전체게시글 수 저장
		pageDto.setListCount(welMapper.selectListCount(pageDto));
		// 최대 넘버링페이지
		pageDto.setMaxPage((int) Math.ceil((double) pageDto.getListCount() / Integer.parseInt(rowPP)));
		// 시작 넘버링페이지
		pageDto.setStartPage((int) ((pageDto.getPage() - 1) / Integer.parseInt(rowPP)) * 10 + 1);
		// 끝 넘버링페이지
		pageDto.setEndPage(pageDto.getStartPage() + Integer.parseInt(rowPP) - 1);
		// 시작번호
		pageDto.setStartRow((pageDto.getPage() - 1) * Integer.parseInt(rowPP) + 1);
		// 끝나는번호
		pageDto.setEndRow(pageDto.getStartRow() + Integer.parseInt(rowPP) - 1);

		// ***검색 옵션과 검색어 + 지역도 pageDto에 추가함!!!
		
		return pageDto;
	}

	// 게시글 1개 가져오기
	@Override
	public HashMap<String, Object> selectOne(PageDto pageDto, int bno) {
		// 체크박스 배열값을 하나의 문자열로 변환( | 버티컬바 구분)
		if (pageDto.getS_loc() != null) { // 체크박스 배열에 값 들어오면
			pageDto.setLocString(String.join("|", pageDto.getS_loc())); // locString에 스트링 하나로 변환   
			// locString을 MyBatis 매개변수로 전달
		}
		
		HashMap<String, Object> map = new HashMap<>();

		MadangDto mdto = welMapper.selectOne(bno);
		MadangDto prevMdto = welMapper.selectPrevOne(pageDto, bno); // 이전글
		MadangDto nextMdto = welMapper.selectNextOne(pageDto, bno); // 다음글
		welMapper.updateBView(bno); // 조회수 1증가

		map.put("mdto", mdto);
		map.put("prevMdto", prevMdto);
		map.put("nextMdto", nextMdto);

		return map;
	}

	// 댓글 가져오기
	@Override
	public ArrayList<CommentDto> selectComAll(int bno) {
		ArrayList<CommentDto> list = welMapper.selectComAll(bno);

		return list;
	}

	// 게시글 저장하기
	@Override
	public void insertOne(MadangDto mdto, List<MultipartFile> files) {

		String bfile = "";
		String tempFile = "";
		String oriFile = "";
		String[] bfiles = new String[3];

		for (int i = 0; i < files.size(); i++) {
			tempFile = "";
			if (!files.get(i).isEmpty()) {
				oriFile = files.get(i).getOriginalFilename();
				UUID uuid = UUID.randomUUID();
				tempFile = uuid + "_" + oriFile;
				String uploadURL = "c:/upload/";
				File f = new File(uploadURL + tempFile);
				try {
					files.get(i).transferTo(f);
				} catch (Exception e) {
					e.printStackTrace();
				}
			} // if
			// 임시파일 이름 배열에 넣기
			bfiles[i] = tempFile; 
			mdto.setBoard_files(bfiles);

			// files 배열을 file 하나에 저장
			if (i == 0)
				bfile = tempFile;
			else
				bfile += "," + tempFile;
			mdto.setBoard_file(bfile);
		} // for
		
		welMapper.insertOne(mdto);
	}
	
	// 댓글 저장하기 + 작성한 댓글 1개 가져오기
	@Override
	public CommentDto insertComOne(CommentDto aCdto) {
		// 댓글 저장하기
		welMapper.insertComOne(aCdto);
		// 댓글 1개 가져오기
		CommentDto cdto = welMapper.selectComOne(aCdto);
		return cdto;
	}
	
	// 댓글 1개 삭제하기
	@Override
	public void deleteOne(int cno) {
		welMapper.deleteOne(cno);
	}
	
	// 댓글 수정 저장 + 수정한 댓글 1개 가져오기
	@Override
	public CommentDto updateComOne(CommentDto aCdto) {
		// 댓글 수정하기
		welMapper.updateComOne(aCdto);
		// 댓글 1개 가져오기
		CommentDto cdto = welMapper.selectComOne(aCdto);
		
		return cdto;
	}
	
	// 이미지를 배열로 가져오기
	@Override
	public String[] loadImage(int bno) {
		String imgNm = welMapper.loadImage(bno);
		String[] arrImg = imgNm.split(",");
		
		return arrImg;
	}

	// 게시글 1개 삭제하기
	@Override
	public void deleteBrdOne(int bno) {
		welMapper.deleteBrdOne(bno);
		
	}
	
	// 게시글 수정 후 저장하기
	@Override
	public void updateOne(MadangDto mdto, List<MultipartFile> files) {

		String bfile = "";
		String tempFile = "";
		String oriFile = "";
		String[] bfiles = new String[3];

		for (int i = 0; i < files.size(); i++) {
			tempFile = "";
			if (!files.get(i).isEmpty()) {
				oriFile = files.get(i).getOriginalFilename();
				UUID uuid = UUID.randomUUID();
				tempFile = uuid + "_" + oriFile;
				String uploadURL = "c:/upload/";
				File f = new File(uploadURL + tempFile);
				try {
					files.get(i).transferTo(f);
				} catch (Exception e) {
					e.printStackTrace();
				}
			// 임시파일 이름 배열에 넣기
			bfiles[i] = tempFile; 
			mdto.setBoard_files(bfiles);

			// files 배열을 file 하나에 저장
			if (i == 0)
				bfile = tempFile;
			else
				bfile += "," + tempFile;
			mdto.setBoard_file(bfile);
			} // if
		} // for
		
		welMapper.updateOne(mdto);
	}
		

}
