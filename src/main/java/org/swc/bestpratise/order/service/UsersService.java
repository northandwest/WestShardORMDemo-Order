package org.swc.bestpratise.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.swc.bestpratise.order.entity.Users;
import org.swc.bestpratise.order.repository.UsersDao;

import com.bucuoa.west.orm.app.extend.SingleBaseService;

@Service
public class UsersService extends SingleBaseService<Users, Long> {
	@Autowired
	private UsersDao dao;

	public UsersDao getDao() {
		return dao;
	}

	public Users findEntityBy(String username, String password) throws Exception {
		
		Users query = new Users();
		query.setUserName("'"+username+"'");
		query.setPassword("'"+password+"'");
		
		List<Users> findListBy = dao.findListBy(query);
		if(findListBy != null && findListBy.size() > 0)
		{
			return findListBy.get(0);
		}
		return null;
	}

}
