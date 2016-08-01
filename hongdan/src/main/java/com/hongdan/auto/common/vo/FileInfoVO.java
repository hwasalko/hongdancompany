package com.hongdan.auto.common.vo;

/**
 * 파일정보 VO
 *  - 파일업로드 후 
 * @author hwasalko
 *
 */
public class FileInfoVO {
	 
	
	private String originalFileName;	// 원본파일명
	private String saveFileName;		// 업로드 파일명
	private String saveFileFullPath;	// 업로드 파일 풀패스
	private String fileContentsType;	// 파일 컨텐츠타입
	private long fileSize;					// 파일사이즈
	
	public FileInfoVO(String originalFileName, String saveFileName, String saveFileFullPath, String fileContentsType, long fileSize) {
		super();
		this.originalFileName = originalFileName;
		this.saveFileName = saveFileName;
		this.saveFileFullPath = saveFileFullPath;
		this.fileContentsType = fileContentsType;
		this.fileSize = fileSize;
	}
	
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public String getSaveFileName() {
		return saveFileName;
	}
	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}
	public String getSaveFileFullPath() {
		return saveFileFullPath;
	}
	public void setSaveFileFullPath(String saveFileFullPath) {
		this.saveFileFullPath = saveFileFullPath;
	}
	public String getFileContentsType() {
		return fileContentsType;
	}
	public void setFileContentsType(String fileContentsType) {
		this.fileContentsType = fileContentsType;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}

	@Override
	public String toString() {
		return "FileInfoVO [originalFileName=" + originalFileName + ", saveFileName=" + saveFileName
				+ ", saveFileFullPath=" + saveFileFullPath + ", fileContentsType=" + fileContentsType + ", fileSize="
				+ fileSize + "]";
	}
	
}
