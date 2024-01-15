import request from '@/utils/request'

// 查询好友申请列表
export function listNewFriend(query) {
  return request({
    url: '/project/fm/friend/list/new',
    method: 'get',
    params: query
  })
}

// 查询好友列表
export function listFriend(query) {
  return request({
    url: '/project/fm/friend/list',
    method: 'get',
    params: query
  })
}

// 拒绝好友申请
export function refuseFriend(query) {
  return request({
    url: '/project/fm/friend/refuse',
    method: 'get',
    params: query
  })
}

// 删除好友关系
export function deleteFriend(query) {
  return request({
    url: '/project/fm/friend/delete',
    method: 'get',
    params: query
  })
}

// 新增好友关系
export function addFriend(data) {
  return request({
    url: '/project/fm/friend',
    method: 'post',
    data: data
  })
}

// 修改好友备注
export function changeNote(data) {
  return request({
    url: '/project/fm/friend/noteName',
    method: 'put',
    data: data
  })
}
