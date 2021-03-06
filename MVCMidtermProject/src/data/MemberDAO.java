package data;

import java.util.List;

import entities.Family;
import entities.Member;

public interface MemberDAO {

	public Family createMembersList(Member member, Family family);

	public Member createMember(Member member, Family family);

	public Member updateMember(Member member);

	public Member showMember(int id);

	public boolean deleteMember(int id);

	public Family getFamilyById(int id);

	List<Member> getFamilyMembers(int id);

	Family createAdminMembersList(Member member, Family family);

}
