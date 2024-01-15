import request from '@/utils/request'

// 查询内部消息列表
export function listInner(query) {
  return request({
    url: '/library/yyg/msg/list',
    method: 'get',
    params: query
  })
}

// 查询内部消息详细
export function getInner(id) {
  return request({
    url: '/library/yyg/msg/' + id,
    method: 'get'
  })
}

// 新增内部消息(没有用)
export function addInner(data) {
  return request({
    url: '/system/inner',
    method: 'post',
    data: data
  })
}

// 修改内部消息（没有用）
export function updateInner(data) {
  return request({
    url: '/system/inner',
    method: 'put',
    data: data
  })
}

// 删除内部消息
export function delInner(id) {
  return request({
    url: '/library/yyg/msg/' + id,
    method: 'delete'
  })
}
