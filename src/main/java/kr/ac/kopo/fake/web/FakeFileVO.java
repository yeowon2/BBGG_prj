package kr.ac.kopo.fake.web;

import org.springframework.web.multipart.MultipartFile;

public class FakeFileVO extends FakeVO {
	private String originalFileName;
	private String fileExtension;
	private String uniqueFileName;
	private String savedFileName;
	private Long fileSize;
	private String useAt;
	private MultipartFile saveFile;
	
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public String getFileExtension() {
		return fileExtension;
	}
	public void setFileExtension(String fileExtension) {
		this.fileExtension = fileExtension;
	}
	public String getUniqueFileName() {
		return uniqueFileName;
	}
	public void setUniqueFileName(String uniqueFileName) {
		this.uniqueFileName = uniqueFileName;
	}
	public String getSavedFileName() {
		return savedFileName;
	}
	public void setSavedFileName(String savedFileName) {
		this.savedFileName = savedFileName;
	}
	public Long getFileSize() {
		return fileSize;
	}
	public void setFileSize(Long fileSize) {
		this.fileSize = fileSize;
	}
	public String getUseAt() {
		return useAt;
	}
	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}
	public MultipartFile getSaveFile() {
		return saveFile;
	}
	public void setSaveFile(MultipartFile saveFile) {
		this.saveFile = saveFile;
	}
	
}
