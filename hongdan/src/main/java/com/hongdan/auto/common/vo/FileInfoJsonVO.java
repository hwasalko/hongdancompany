package com.hongdan.auto.common.vo;

/**
 * 파일정보 VO
 *  - 파일업로드 후 json 리턴용 VO 
 * @author hwasalko
 *
 */
public class FileInfoJsonVO {
	
	private String fileName;
    private String fileSize;
    private String fileType;
    
    public FileInfoJsonVO(String fileName, String fileSize, String fileType) {
		super();
		this.fileName = fileName;
		this.fileSize = fileSize;
		this.fileType = fileType;
	}
    
    public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileSize() {
		return fileSize;
	}

	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}
	
}
