package org.swc.bestpratise.order.repository;

import org.springframework.stereotype.Repository;
import org.swc.bestpratise.order.entity.Product;

import com.bucuoa.west.orm.app.extend.ISingleBaseDao;
import com.bucuoa.west.orm.app.extend.spring.SpringSingleBaseDao;
@Repository
public class ProductDao extends SpringSingleBaseDao<Product, Long> implements ISingleBaseDao<Product, Long>{


}						 
								 
									