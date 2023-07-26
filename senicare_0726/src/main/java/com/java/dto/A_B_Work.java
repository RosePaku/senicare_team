//지원정보 데이터
package com.java.dto;

public class A_B_Work {
    public Long getAuth_business_work_no() {
		return auth_business_work_no;
	}
	public void setAuth_business_work_no(Long auth_business_work_no) {
		this.auth_business_work_no = auth_business_work_no;
	}
	public String getAuth_bw_gu_1() {
		return auth_bw_gu_1;
	}
	public void setAuth_bw_gu_1(String auth_bw_gu1, String auth_bw_gu_1) {
		this.auth_bw_gu_1 = auth_bw_gu_1;
	}
	public String getAuth_bw_si() {
		return auth_bw_si;
	}
	public void setAuth_bw_si(String auth_bw_si) {
		this.auth_bw_si = auth_bw_si;
	}
	public String getAuth_bw_loc1() {
		return auth_bw_loc_1;
	}
	public void setAuth_bw_loc1(String auth_bw_loc1) {
		this.auth_bw_loc_1 = auth_bw_loc1;
	}
	private Long auth_business_work_no;
    private String auth_bw_gu_1;
    private String auth_bw_si;
    private String auth_bw_loc_1;

    // getter, setter 메서드들...
}
