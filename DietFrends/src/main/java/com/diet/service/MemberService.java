package com.diet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.diet.dao.MemberDAO;
import com.diet.dto.MemberDTO;

@Service
public class MemberService implements IMemberService {
	
	@Autowired
	private MemberDAO Mdao;

	//[로그인 구현]
	public int Login(MemberDTO Mdto) {	
		/*사용자가 입력한 값*/
		String id = Mdto.getId();
		String pwd = Mdto.getPwd();
		
		/* 로그인 체크  1=로그인성공 / 2=비밀번호 틀림 / 0=계정 없음 */
		int loginCheck = 0;
		try {
			/*DB에 저장된 값*/
			MemberDTO Memdto = new MemberDTO();
			Memdto = Mdao.login(id);
			String DBpwd = Memdto.getPwd();
			
			/*로그인 Check*/
			if(pwd.equals(DBpwd)) {loginCheck = 1;}
			else { loginCheck = 2; }	
			
		} catch (NullPointerException e) { loginCheck = 0; }
		
		return loginCheck;
	}

	
	
	
	
	
	
	
	
	
}
