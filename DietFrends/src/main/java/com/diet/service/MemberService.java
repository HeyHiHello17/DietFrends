package com.diet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.diet.dao.MemberDAO;
import com.diet.dto.MemberDTO;

@Service
public class MemberService implements IMemberService {
	
	@Autowired
	private MemberDAO Mdao;

	//[�α��� ����]
	public int Login(MemberDTO Mdto) {	
		/*����ڰ� �Է��� ��*/
		String id = Mdto.getId();
		String pwd = Mdto.getPwd();
		
		/* �α��� üũ  1=�α��μ��� / 2=��й�ȣ Ʋ�� / 0=���� ���� */
		int loginCheck = 0;
		try {
			/*DB�� ����� ��*/
			MemberDTO Memdto = new MemberDTO();
			Memdto = Mdao.login(id);
			String DBpwd = Memdto.getPwd();
			
			/*�α��� Check*/
			if(pwd.equals(DBpwd)) {loginCheck = 1;}
			else { loginCheck = 2; }	
			
		} catch (NullPointerException e) { loginCheck = 0; }
		
		return loginCheck;
	}

	
	
	
	
	
	
	
	
	
}
