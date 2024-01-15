import request from '@/utils/request'

export function listMenu(query) {
  return request({
    url: '/system/zxm/application/list',
    method: 'get',
    params: query
  })
}

export function listMenu1(parentId) {
  return request({
    url: '/system/zxm/application/'+parentId,
    method: 'get',
  })
}

//查询常规应用
export function listNormal(query) {
  return request({
    url: '/system/zxm/application/normal',
    method: 'get',
    params: query
  })
}

// 查询菜单详细
export function getMenu(menuId) {
  return request({
    url: '/system/zxm/application/' + menuId,
    method: 'get'
  })
}


export function getRouter(menuId) {
  return request({
    url: '/system/zxm/application/router/' + menuId,
    method: 'get'
  })
}

//根据menuID查找这条list的信息
export function getNumber(menuId) {
  return request({
    url: '/system/zxm/application/number/' + menuId,
    method: 'get'
  })
}
