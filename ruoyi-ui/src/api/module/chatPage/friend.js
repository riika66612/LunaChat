import request from '@/utils/request'

// 查询好友关系列表
export function listFriend(query) {
  return request({
    url: '/project/cp/friend/list',
    method: 'get',
    params: query
  })
}
