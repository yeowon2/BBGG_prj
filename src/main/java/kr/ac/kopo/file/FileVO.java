package kr.ac.kopo.file;

import java.util.Date;

public class FileVO {

	//첨부파일 아이디
	private Long fileNo;
	
	//첨부파일 순번
	private int fileSeq;
	
	//파일 사이즈
	private Long fileSize;
	
	//저장파일명
	private String savedName;
	
	//원파일명
	private String originalName;
	
	//파일 저장 경로
	private String filePath;
	
	//파일 확장자
	private String fileExt;
	
	//파일 생성일자
	private Date registDate;

	public Long getFileNo() {
		return fileNo;
	}

	public void setFileNo(Long fileNo) {
		this.fileNo = fileNo;
	}

	public int getFileSeq() {
		return fileSeq;
	}

	public void setFileSeq(int fileSeq) {
		this.fileSeq = fileSeq;
	}

	public Long getFileSize() {
		return fileSize;
	}

	public void setFileSize(Long fileSize) {
		this.fileSize = fileSize;
	}

	public String getSavedName() {
		return savedName;
	}

	public void setSavedName(String savedName) {
		this.savedName = savedName;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getFileExt() {
		return fileExt;
	}

	public void setFileExt(String fileExt) {
		this.fileExt = fileExt;
	}

	public Date getRegistDate() {
		return registDate;
	}

	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}
}
