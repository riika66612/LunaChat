import request from '@/utils/request'

// 新增好友关系
export function addFriend(data) {
  return request({
    url: '/project/nf/friend',
    method: 'post',
    data: data
  })
}

// 检查是否已添加该用户
export function checkFriend(id) {
  return request({
    url: '/project/nf/friend/check/' + id,
    method: 'get'
  })
}
