import request from '@/utils/request'

// 查询用户列表
export function updateIp() {
  return request({
    url: '/project/ip/user/updateIp',
    method: 'get'
  })
}

// 获取服务器IP
export function getIP() {
  return request({
    url: '/project/ip/user/ipAddress',
    method: 'get'
  })
}
