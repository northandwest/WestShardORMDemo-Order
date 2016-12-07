package org.swc.bestpratise.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.swc.bestpratise.order.entity.ActivityOrder;
import org.swc.bestpratise.order.repository.ActivityOrderDao;

import com.bucuoa.west.orm.app.common.Expression;
import com.bucuoa.west.orm.app.extend.IShardBaseDao;
import com.bucuoa.west.orm.app.extend.ShardBaseService;

@Service
public class ActivityOrderService extends ShardBaseService<ActivityOrder,Long> implements IShardBaseDao<ActivityOrder,Long>{
	@Autowired
	private ActivityOrderDao dao;

	public ActivityOrderDao getDao() {
		return dao;
	}



}
