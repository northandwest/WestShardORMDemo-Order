package org.swc.bestpratise.order.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.swc.bestpratise.order.entity.Activity;
import org.swc.bestpratise.order.entity.ActivityOrder;
import org.swc.bestpratise.order.service.ActivityOrderService;
import org.swc.bestpratise.order.service.ActivityService;

import com.bucuoa.west.orm.app.common.Expression;
import com.bucuoa.west.orm.app.common.WPage;

/**
 * 活动订单
 * 
 * @author jake
 *
 */
@Controller
@RequestMapping(value = "/activity/order")
public class ActivityOrderController {

	@Autowired
	private ActivityOrderService activityOrderService;

	@Autowired
	private ActivityService activityService;

	@RequestMapping(value = "/save")
	public String save(RedirectAttributes redirectAttributes, ActivityOrder entity) {

		try {
			activityOrderService.saveEntity(entity);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:list";
	}

	@RequestMapping(value = "/list")
	public String list(RedirectAttributes redirectAttributes, @RequestParam("id") Long id, Model model) {

		try {

			Expression ex = new Expression("activity_id", "=", id);
			List<Expression> tt = new ArrayList<Expression>();
			tt.add(ex);

			WPage page = new WPage();
			page.setPageNo(1);
			page.setPageSize(100);

			ActivityOrder order = new ActivityOrder();
//			order.setUserId(123);
//			order.setId(12l);
			order.setActivityId(id);
			List<ActivityOrder> findListBy = activityOrderService.findListBy(order);
//			ActivityOrder aorder = activityOrderService.findEntityById(order);
//			model.addAttribute("aorder", aorder);
//
//			Activity query = new Activity();
//			query.setId(1232l);
//			query.setPlaceId(1232);
//
//			Activity activity = activityService.findEntityById(query.getId());
			model.addAttribute("allorder", findListBy);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/activity/order-list";
	}

	@RequestMapping(value = "/list2")
	public String list2(RedirectAttributes redirectAttributes, @RequestParam("uuid") String uuid, Model model) {

		try {

			// Activity activity = activityService.findEntityByUUID(uuid);
			//
			// Expression ex = new Expression("activity_id", "=",
			// activity.getId(), ExpressionType.AND.getType());
			// List<Expression> tt = new ArrayList<Expression>();
			// tt.add(ex);
			//
			// WPage page = new WPage();
			// page.setPageNo(1);
			// page.setPageSize(100);
			//
			// List<ActivityOrder> findEntityList =
			// activityOrderService.findEntityList(tt, page);
			// model.addAttribute("allorder", findEntityList);
			//
			// model.addAttribute("activity", activity);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/activity/order-list2";
	}

}
