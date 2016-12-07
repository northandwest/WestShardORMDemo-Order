package org.swc.bestpratise.order.repository;

import org.springframework.stereotype.Repository;
import org.swc.bestpratise.order.entity.Activity;

import com.bucuoa.west.orm.app.extend.ISingleBaseDao;
import com.bucuoa.west.orm.app.extend.spring.SpringSingleBaseDao;

@Repository
public class ActivityDao extends SpringSingleBaseDao<Activity, Long> implements ISingleBaseDao<Activity, Long> {

}
