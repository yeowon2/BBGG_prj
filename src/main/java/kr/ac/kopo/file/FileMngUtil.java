package kr.ac.kopo.file;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.Map.Entry;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileMngUtil {

	/*
	 * 파일 첨부를 하는 곳에서 공통으로 사용 가능
	 * keyString에는 저장파일명에 붙이고 싶은 prefix를 원하는데로 setting 가능
	 * */
	List<FileVO> parseFileInfo(Map<String, MultipartFile> files, String keyString, String storePath) throws Exception {
		
		//파일저장경로
		String storePathString = "";
		
		//폴더경로 설정
		File saveFolder = new File(storePathString);
		if(!saveFolder.exists() || saveFolder.isFile()) {
			saveFolder.mkdirs();
		}
		
		//파일변수
		MultipartFile file;
		String filePath = "";
		List<FileVO> fileList = new ArrayList<FileVO>();
		FileVO fileVO;
		
		for (Entry<String, MultipartFile> entry : files.entrySet()) {
			file = entry.getValue();
			String originalName = file.getOriginalFilename();
			
			//원 파일명이 없는 경우 (첨부가 되지 않은 file 타입의 input 처리)
			if("".equals(originalName)) {
		    	continue;
		    }
			
			int index = originalName.lastIndexOf(".");
			String fileExt = originalName.substring(index + 1);
			
			//저장 파일명
			
			String savedName = keyString + UUID.randomUUID().toString();
			
			//파일 사이즈
			long fileSize = file.getSize();
			
			//파일 저장
			if(!"".equals(originalName)) {
				filePath = storePathString + File.separator + savedName;
				file.transferTo(new File(filePath));
			}
			
			fileVO = new FileVO();
			fileVO.setFileExt(fileExt);
			fileVO.setFilePath(storePathString);
			fileVO.setFileSize(fileSize);
			fileVO.setOriginalName(originalName);
			fileVO.setSavedName(savedName);
			
			fileList.add(fileVO);
			
		}
		return fileList;
	}
}
