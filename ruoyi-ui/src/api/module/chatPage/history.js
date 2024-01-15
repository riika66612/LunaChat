import request from '@/utils/request'

// 查询聊天记录列表
export function listHistory(query) {
  return request({
    url: '/project/cp/history/list',
    method: 'get',
    params: query
  })
}

// 新增聊天记录
export function addHistory(data) {
  return request({
    url: '/project/cp/history',
    method: 'post',
    data: data
  })
}
