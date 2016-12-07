package org.swc.bestpratise.order.repository;

import org.springframework.stereotype.Repository;
import org.swc.bestpratise.order.entity.Users;

import com.bucuoa.west.orm.app.extend.ISingleBaseDao;
import com.bucuoa.west.orm.app.extend.spring.SpringSingleBaseDao;
@Repository
public class UsersDao extends SpringSingleBaseDao<Users, Long>  implements ISingleBaseDao<Users, Long>{


}						 
								 
									