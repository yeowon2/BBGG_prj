package kr.ac.kopo.file;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/file")
public class FileController {

    private final String path = "file/";
    private final String fileStorePath = "E:/upload";

    @Autowired
    FileService service;
    
    @Autowired
    FileMngUtil fileUtil;
    

    @GetMapping("/add")
    public String add() {
        return path + "addFile";
    }

    @PostMapping("/add")
    public String add(final MultipartHttpServletRequest multiRequest) throws Exception {
        List<FileVO> fileVOList = null;
        long fileNo = 0;
        
        final Map<String, MultipartFile> files = multiRequest.getFileMap();
        if(!files.isEmpty()) {
        	fileVOList = fileUtil.parseFileInfo(files, "TEST_", fileStorePath);
        	fileNo = service.insertFileList(fileVOList);
        	
        }
        
        return "redirect:.";
    }
    
    
    @GetMapping("/list")
    public String list(Model model) {
    	List<FileVO> FileVOList = service.selectFileList();
    	model.addAttribute("FileVOList", FileVOList);
    	return path + "listFile";
    }

   
}
