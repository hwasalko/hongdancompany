package com.hongdan.auto.sample.vo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
