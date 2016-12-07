package org.swc.bestpratise.order.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.swc.bestpratise.order.entity.Shop;
import org.swc.bestpratise.order.repository.ShopDao;

import com.bucuoa.west.orm.app.common.Expression;
import com.bucuoa.west.orm.app.common.WPage;
import com.bucuoa.west.orm.app.extend.ISingleBaseDao;
import com.bucuoa.west.orm.app.extend.SingleBaseService;
import com.bucuoa.west.orm.app.utils.RequestConverter;

@Service
public class ShopService  extends SingleBaseService<Shop,String>{
	@Autowired
	private ShopDao dao;

	public ShopDao getDao() {
		return dao;
	}
	
	@Transactional(readOnly = true)
	public WPage getEntityPage(HttpServletRequest request) throws Exception {
		// filters_like_name filters_equals_categoryName
		int pageNO = 0;
		// Map request = beat.getRequest();
		Map map = request.getParameterMap();

		RequestConverter rq = new RequestConverter(map);

		List<Expression> wheres = rq.getWhereCondition();
		pageNO = rq.getPageNO();

		WPage page = new WPage();
		page.setPageSize(rq.getPageSize());
		page.setPageNo(pageNO);
//		
		int count = getDao().getEntityCount(new Shop());
		List<Shop> data = getDao().findEntityList(wheres,page);
//	
		page.setTotalCount(count);
		page.setData(data);

		return page;
	}


	protected String getReqValByParam(HttpServletRequest request, String param) {
		String value = request.getParameter(param);
		return (value == null) ? "" : value.trim();
	}

	

}
