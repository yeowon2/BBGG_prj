package kr.ac.kopo.fake.web;

import java.util.List;

public class MultiUploadVO {
	private List<FakeFileVO> list;

	public List<FakeFileVO> getList() {
		return list;
	}

	public void setList(List<FakeFileVO> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "MultiUploadVO [list=" + list + "]";
	}
}
