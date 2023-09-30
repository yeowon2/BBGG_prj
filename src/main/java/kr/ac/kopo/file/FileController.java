package kr.ac.kopo.file;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Controller
@RequestMapping("/file")
public class FileController {

    private final String path = "file/";

    @Autowired
    FileService service;

    @GetMapping("/add")
    public String add() {
        return path + "addFile";
    }

    @PostMapping("/add")
    public String add(FileVO fileVO, @RequestParam("imageFiles") List<MultipartFile> imageFiles) {
        service.add(imageFiles);
        return "redirect:/file";
    }

    @GetMapping("/detail/{fileNo}")
    public String detail(@PathVariable Long fileNo, Model model) {
        FileVO fileVO = service.detail(fileNo);
        model.addAttribute("fileVO", fileVO);
        return path + "detailFile";
    }
}
