package org.swc.bestpratise.order.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.swc.bestpratise.order.entity.ActivityOrderDetail;
import org.swc.bestpratise.order.repository.ActivityOrderDetailDao;

import com.bucuoa.west.orm.app.common.Expression;
import com.bucuoa.west.orm.app.extend.SingleBaseService;

@Service
public class ActivityOrderDetailService extends SingleBaseService<ActivityOrderDetail, Long> {
	@Autowired
	private ActivityOrderDetailDao dao;

	public ActivityOrderDetailDao getDao() {
		return dao;
	}

	// public Object saveEntity(ActivityOrderDetail entity) throws Exception {
	// return dao.saveEntity(entity);
	// }
	//
	// @Transactional
	// public void update(ActivityOrderDetail entity) throws Exception {
	// dao.updateEntity(entity);
	// }
	//
	// public ActivityOrderDetail findEntityById(Long id) throws Exception {
	// return dao.findEntityById(id);
	// }
	//
	// public boolean deleteEntityById(Long id) throws Exception {
	// return dao.deleteEntityById(id);
	// }
	//
	public boolean deleteEntityByOrderId(Long id) throws Exception {
		Expression ex = new Expression("order_id", "=", id, "and");
		List<Expression> tt = new ArrayList<Expression>();
		tt.add(ex);
		return true;//dao.deleteEntityByCondition(ActivityOrderDetail.class, tt);
	}
	//
	// public int getEntityCount(List<Expression> exr) throws Exception {
	// return dao.getEntityCount(exr);
	// }
	//
	//// public List<ActivityOrderDetail> findEntityList(String[] keyName,
	//// String[] operate, Object[] keyValue, int pageSize, int pageNo)
	//// throws Exception {
	//// return dao.findEntityList(keyName, operate, keyValue, pageSize,
	// pageNo);
	//// }
	////
	//// public List<ActivityOrderDetail> myEntityList(String userId)
	//// throws Exception {
	//// return dao.findEntityList(new String[] { "creater_id" },
	//// new String[] { "=" }, new Object[] { "'" + userId + "' " });
	//// }
	//
	// @Transactional(readOnly = true)
	// public WPage getEntityPage(ServletRequest request) throws Exception {
	// int pageNO = 0;
	// // Map request = beat.getRequest();
	// Map map = request.getParameterMap();
	//
	// RequestConverter rq = new RequestConverter(map);
	//
	// List<Expression> wheres = rq.getWhereCondition();
	// pageNO = rq.getPageNO();
	//
	// WPage page = new WPage();
	// page.setPageSize(20);
	// page.setPageNo(pageNO);
	//
	// int count = getDao().getEntityCount(wheres);
	//
	// List<ActivityOrderDetail> data = getDao().findEntityList(wheres,page);
	//
	// page.setTotalCount(count);
	// page.setData(data);
	//
	// return page;
	// }

	// @Transactional(readOnly = true)
	// public Page getAllEntityPage(HttpServletRequest request) throws Exception
	// {
	// String pageNOStr = getReqValByParam(request, "pageNO");
	//
	// int pageNO = 0;
	// if (!"".equals(pageNOStr)) {
	// pageNO = Integer.parseInt(pageNOStr);
	// }
	// if (pageNO < 1) {
	// pageNO = 1;
	// }
	//
	// int count = dao.getEntityCount(new String[] {}, new String[] {},
	// new Object[] {}, null);
	// List<ActivityOrderDetail> data = dao.findEntityList(new String[] {},
	// new String[] {}, new Object[] {}, 10, pageNO);
	//
	// Page page = new Page();
	// page.setPageSize(10);
	// page.setPageNo(pageNO);
	// page.setTotalCount(count);
	// page.setData(data);
	//
	// return page;
	// }

	protected String getReqValByParam(HttpServletRequest request, String param) {
		String value = request.getParameter(param);
		return (value == null) ? "" : value.trim();
	}

//	public List<Map<String, String>> queryListMap(String sql) {
//		return dao.queryListMap(sql);
//	}

}
