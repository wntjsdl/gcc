package model.vo;

public class BoardVO {
	int idx; // index
	String comid; // 회사 ID dosang
	int gnum; // Group Number
	int gseq; // Group SEQ
	boolean comment; // Comment or Not Comment
	int com_gnum; // Comment Group Number
	int com_gseq; // Comment Group SEQ
	int lev; // 게시판 Level
	String title; // 제목
	String contents; // 게시물 내용
	int hit_cnt; // 조회수
	String crea_date; // 작성일
	String email; // 참조 email
	String url; // 참조 url
	String ip; // 게시자 ip 주소
	String reply_mail; // 답변시 email
	String gubun; // 구분 1
	String file_nm; // 첨부파일명

	public int getIdx() {
		return idx;
	}

	public String getCrea_date() {
		return crea_date;
	}

	public void setCrea_date(String crea_date) {
		this.crea_date = crea_date;
	}

	public boolean isComment() {
		return comment;
	}

	public void setComment(boolean comment) {
		this.comment = comment;
	}

	public int getCom_gnum() {
		return com_gnum;
	}

	public void setCom_gnum(int com_gnum) {
		this.com_gnum = com_gnum;
	}

	public int getCom_gseq() {
		return com_gseq;
	}

	public void setCom_gseq(int com_gseq) {
		this.com_gseq = com_gseq;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getComid() {
		return comid;
	}

	public void setComid(String comid) {
		this.comid = comid;
	}

	public int getGnum() {
		return gnum;
	}

	public void setGnum(int gnum) {
		this.gnum = gnum;
	}

	public int getGseq() {
		return gseq;
	}

	public void setGseq(int gseq) {
		this.gseq = gseq;
	}

	public int getLev() {
		return lev;
	}

	public void setLev(int lev) {
		this.lev = lev;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getHit_cnt() {
		return hit_cnt;
	}

	public void setHit_cnt(int hit_cnt) {
		this.hit_cnt = hit_cnt;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getReply_mail() {
		return reply_mail;
	}

	public void setReply_mail(String reply_mail) {
		this.reply_mail = reply_mail;
	}

	public String getGubun() {
		return gubun;
	}

	public void setGubun(String gubun) {
		this.gubun = gubun;
	}

	public String getFile_nm() {
		return file_nm;
	}

	public void setFile_nm(String file_nm) {
		this.file_nm = file_nm;
	}

	public BoardVO() {
		super();
	}

	public BoardVO(int idx, String comid, int gnum, int gseq, int lev, String title, String contents, int hit_cnt,
			String email, String url, String ip, String reply_mail, String gubun, String file_nm) {
		super();
		this.idx = idx;
		this.comid = comid;
		this.gnum = gnum;
		this.gseq = gseq;
		this.lev = lev;
		this.title = title;
		this.contents = contents;
		this.hit_cnt = hit_cnt;
		this.email = email;
		this.url = url;
		this.ip = ip;
		this.reply_mail = reply_mail;
		this.gubun = gubun;
		this.file_nm = file_nm;
	}

	@Override
	public String toString() {
		return "BoardVO [idx=" + idx + ", comid=" + comid + ", gnum=" + gnum + ", gseq=" + gseq + ", lev=" + lev
				+ ", title=" + title + ", contents=" + contents + ", hit_cnt=" + hit_cnt + ", email=" + email + ", url="
				+ url + ", ip=" + ip + ", reply_mail=" + reply_mail + ", gubun=" + gubun + ", file_nm=" + file_nm + "]";
	}

}
