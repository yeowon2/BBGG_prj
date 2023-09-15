package kr.ac.kopo.user.web;

public class ProUsersVO {
	
	private long proUnumber;			//프로회원 고유번호
	private String proEmail;			//프로회원 이메일(로그인 이메일)
	private String proPasswd;			//프로회원 비밀번호
	private String proM;				//상호명(중개사명)
	private String proName;				//대표자 이름
	private String proAdres;			//중개사 주소
	private String proTell;				//중개사 전화번호
	private String proBnumber;			//중개등록번호
	private String proB;				//중개등록증
	private String proAnumber;			//사업자등록번호
	private String proA;				//사업자등록증
	private java.util.Date proSbscrbde;	//프로회원 가입일자
	private String proAdminYn;			//프로회원 권한설정
	
	public long getProUnumber() {
		return proUnumber;
	}
	public void setProUnumber(long proUnumber) {
		this.proUnumber = proUnumber;
	}
	public String getProEmail() {
		return proEmail;
	}
	public void setProEmail(String proEmail) {
		this.proEmail = proEmail;
	}
	public String getProPasswd() {
		return proPasswd;
	}
	public void setProPasswd(String proPasswd) {
		this.proPasswd = proPasswd;
	}
	public String getProM() {
		return proM;
	}
	public void setProM(String proM) {
		this.proM = proM;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getProAdres() {
		return proAdres;
	}
	public void setProAdres(String proAdres) {
		this.proAdres = proAdres;
	}
	public String getProTell() {
		return proTell;
	}
	public void setProTell(String proTell) {
		this.proTell = proTell;
	}
	public String getProBnumber() {
		return proBnumber;
	}
	public void setProBnumber(String proBnumber) {
		this.proBnumber = proBnumber;
	}
	public String getProB() {
		return proB;
	}
	public void setProB(String proB) {
		this.proB = proB;
	}
	public String getProAnumber() {
		return proAnumber;
	}
	public void setProAnumber(String proAnumber) {
		this.proAnumber = proAnumber;
	}
	public String getProA() {
		return proA;
	}
	public void setProA(String proA) {
		this.proA = proA;
	}
	public java.util.Date getProSbscrbde() {
		return proSbscrbde;
	}
	public void setProSbscrbde(java.util.Date proSbscrbde) {
		this.proSbscrbde = proSbscrbde;
	}
	public String getProAdminYn() {
		return proAdminYn;
	}
	public void setProAdminYn(String proAdminYn) {
		this.proAdminYn = proAdminYn;
	}
		
}
