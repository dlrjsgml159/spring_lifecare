package com.spring.lifecare.service;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import util.FcmUtil;

public interface CustomerService{
	//아이디 중복확인
	public int confirmId(String customer_id);
			
	//전화번호 중복확인
	public int confirmPhone(String customer_phone);
					
	//이메일 중복확인
	public int confirmEmail(String customer_email);
	
	//회원가입 이메일 인증
	public void emailCheck(HttpServletRequest req, Model model);
	
	//이메일 인증 후 로그인 처리
	public void approvalLogin(HttpServletRequest req, Model model);
					
	//회원가입 처리
	public void joinInPro(HttpServletRequest req, Model model);
		
	//아이디 찾기
	public String searchId(HttpServletResponse response, String customer_phone) throws IOException; 
		
	//회원이 직접 정보 수정
	public void modiPro(MultipartHttpServletRequest req, Model model);
	
	//회원 이름 불러오기 (예약페이지 불러올때 쓰는거)
	public void loadInfo(HttpServletRequest req, Model model);
	
	//예약 가능 시간 불러오기
	public void timeList(HttpServletRequest req, Model model);
	
	//예약 성공
	public void successReservation(HttpServletRequest req, Model model);
	
	//비밀번호 찾기
	public void findPwd(HttpServletRequest req, Model model); 

	//예약확정된 리스트 불러오기
	public void reservationList(HttpServletRequest req, Model model);
	
	//예약정보 뿌리기
	public void getReservationInfo(HttpServletRequest req, Model model);
	
	//예약 취소
	public void cancelAppointment(HttpServletRequest req, Model model);
	
	//결제내역리스트 출력
	public void paymentList(HttpServletRequest req, Model model);
	
	//결제내용 출력
	public void paymentInfo(HttpServletRequest req, Model model);
	
	//결제성공
	public void successPay(HttpServletRequest req, Model model);
	
	
}
