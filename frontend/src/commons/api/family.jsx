import { getApiInstance } from './http';

const api = getApiInstance();

// 가족(그룹) 생성
export async function apiCreateFamily(memberId, familyName) {
  if (memberId != null && familyName != null) {
    const response = await api.post(`/family/new`, {
      familyName: familyName,
      memberId: memberId,
    });
    return response;
  }
  throw Error('apiCreateFamily : memberId and familyName must be provided');
}

// 가족(그룹) 정보 조회 - familyName, 초대코드
export async function apiGetFamily(familyId) {
  if (familyId != null) {
    const response = await api.get(`/family/detail/${familyId}`);
    // console.log(response);
    return response;
  }
  throw Error('apiGetFamily : familyId and familyName must be provided');
}

// 가족 초대
export async function apiInviteFamily(familyId) {
  // ${query}&display={display}
  if (familyId != null) {
    const response = await api.post(`/family/join?InvitationCode=TY26SFbN0m&memberId=testid`);
    // console.log(response);
    return response;
  }
  throw Error('apiGetFamily : familyId and familyName must be provided');
}
