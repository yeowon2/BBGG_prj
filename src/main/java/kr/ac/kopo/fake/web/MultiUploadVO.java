package kr.ac.kopo.fake.web;

import java.util.List;

public class MultiUploadVO {
	private List<UploadVO> list;

	public List<UploadVO> getList() {
		return list;
	}

	public void setList(List<UploadVO> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "MultiUploadVO [list=" + list + "]";
	}
}
