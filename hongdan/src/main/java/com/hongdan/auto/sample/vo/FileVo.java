package com.hongdan.auto.sample.vo;

import org.springframework.web.multipart.MultipartFile;

public class FileVo {
	
    private MultipartFile file;
    
    public MultipartFile getFile() {
        return file;
    }
    
    public void setFile(MultipartFile file) {
        this.file = file;
    }
    
}
