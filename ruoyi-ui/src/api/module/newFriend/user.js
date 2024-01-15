import request from '@/utils/request'

// 查询用户列表
export function listUser(query) {
  return request({
    url: '/project/nf/user/list',
    method: 'get',
    params: query
  })
}
