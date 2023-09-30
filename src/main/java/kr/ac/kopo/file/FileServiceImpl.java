package kr.ac.kopo.file;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileServiceImpl implements FileService {

	@Autowired
	FileDao dao;

//	@Override
//	public void add(FileVO fileVO, MultipartFile file) {
//		 if (!file.isEmpty()) {
//	            try {
//	                String originalFilename = StringUtils.cleanPath(file.getOriginalFilename());
//	                String fileExt = getFileExtension(originalFilename);
//	                String savedName = generateSavedName(fileExt);
//
//	                String uploadDir = "e:/upload"; // 파일 업로드 경로 설정
//
//	                // 업로드할 디렉토리가 없으면 생성
//	                File uploadPath = new File(uploadDir);
//	                if (!uploadPath.exists()) {
//	                    uploadPath.mkdirs();
//	                }
//
//	                String filePath = uploadDir + File.separator + savedName;
//
//	                // 파일 저장
//	                file.transferTo(new File(filePath));
//
//	                // FileVO에 업로드 정보 저장
//	                fileVO.setOriginalName(originalFilename);
//	                fileVO.setSavedName(savedName);
//	                fileVO.setFilePath(filePath);
//	                fileVO.setFileExt(fileExt);
//	                fileVO.setPrimaryAt("Y"); // 대표 이미지 여부 설정
//
//	                // 데이터베이스에 파일 정보 저장
//	                dao.add(fileVO);
//
//	            } catch (IOException e) {
//	                e.printStackTrace();
//	                // 예외 처리 필요
//	            }
//	        }
//	    }

	    private String getFileExtension(String fileName) {
	        int lastIndex = fileName.lastIndexOf(".");
	        if (lastIndex != -1 && lastIndex < fileName.length() - 1) {
	            return fileName.substring(lastIndex + 1);
	        }
	        return "";
	    }

	    private String generateSavedName(String fileExt) {
	        return UUID.randomUUID().toString() + "." + fileExt;
	    }

		@Override
		public FileVO detail(Long fileNo) {
			return dao.detail(fileNo);
		}


		@Override
	    public void add(List<MultipartFile> imageFileList) {
	        List<FileVO> fileVOList = new ArrayList<>();

	        for (MultipartFile file : imageFileList) {
	            if (!file.isEmpty()) {
	                try {
	                    String originalFilename = StringUtils.cleanPath(file.getOriginalFilename());
	                    String fileExt = getFileExtension(originalFilename);
	                    String savedName = generateSavedName(fileExt);

	                    String uploadDir = "e:/upload"; // 파일 업로드 경로 설정

	                    File uploadPath = new File(uploadDir);
	                    if (!uploadPath.exists()) {
	                        uploadPath.mkdirs();
	                    }

	                    String filePath = uploadDir + File.separator + savedName;

	                    file.transferTo(new File(filePath));

	                    FileVO fileVO = new FileVO();
	                    fileVO.setOriginalName(originalFilename);
	                    fileVO.setSavedName(savedName);
	                    fileVO.setFilePath(filePath);
	                    fileVO.setFileExt(fileExt);
	                    fileVO.setPrimaryAt("N"); // 대표 이미지 여부는 "N"으로 설정

	                    fileVOList.add(fileVO);

	                } catch (IOException e) {
	                    e.printStackTrace();
	                    // 예외 처리 필요
	                }
	            }
	        }

	        dao.addList(fileVOList);
	    }

	
}
