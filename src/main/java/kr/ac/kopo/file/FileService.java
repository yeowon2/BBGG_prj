package kr.ac.kopo.file;

import java.util.List;

public interface FileService {

	//파일 목록 조회
    List<FileVO> selectFileList();

    //파일 상세 정보
//    FileVO selectFile(FileVO fileVO);

    //단일 파일 등록
//    String insertFile(FileVO fileVO);

    //다중 파일 등록
    String insertFileList(List<FileVO> fileVOList);

    //단일 파일 수정
//    void updateFile(FileVO fileVO);

    //다중 파일 수정
//    void updateFileList(List<FileVO> fileVOList);

    //다중 파일 삭제
//    void deleteFileList(List<FileVO> fileVOList);

    //단일 파일 삭제
//    void deleteFile(FileVO fileVO);

    //전체 파일 삭제
//    void deleteAllFile(FileVO fileVO);

}
