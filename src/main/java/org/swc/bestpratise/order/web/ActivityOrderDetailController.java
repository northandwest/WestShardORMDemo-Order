package org.swc.bestpratise.order.web;

import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.swc.bestpratise.order.entity.Activity;
import org.swc.bestpratise.order.entity.ActivityOrder;
import org.swc.bestpratise.order.entity.ActivityOrderDetail;
import org.swc.bestpratise.order.entity.Users;
import org.swc.bestpratise.order.service.ActivityOrderDetailService;
import org.swc.bestpratise.order.service.ActivityOrderService;
import org.swc.bestpratise.order.service.ActivityService;
import org.swc.bestpratise.order.service.SequenceUtil;

/**
 * 活动订单明细
 * 
 * @author jake
 *
 */
@Controller
@RequestMapping(value = "/activity/orderdetail")
public class ActivityOrderDetailController {
	@Autowired
	private ActivityOrderDetailService activityOrderDetailService;

	@Autowired
	private ActivityService activityService;
	@Autowired
	private ActivityOrderService activityOrderService;

	@Autowired
	private SequenceUtil sequenceUtil;

	@RequestMapping(value = "/add")
	public String add(RedirectAttributes redirectAttributes, Activity entity) {

		return "/activity/add-food";
	}

	@RequestMapping(value = "/addNon")
	public String addNon(RedirectAttributes redirectAttributes, Activity entity) {

		return "/activity/add-food2";
	}

	@RequestMapping(value = "/delete")
	public String delete(RedirectAttributes redirectAttributes, @RequestParam("orderId") Long orderId) {

		try {
			ActivityOrder order = new ActivityOrder();
			order.setId(orderId);
			// activityOrderService.findEntityById(entity);
			activityOrderService.deleteEntityBy(order);
			// activityOrderService.deleteEntityBy(order);
			// activityOrderDetailService.deleteEntityByOrderId(orderId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		redirectAttributes.addAttribute("id", orderId);
		return "redirect:/activity/order/list";
	}

	@RequestMapping(value = "/testsave")
	@ResponseBody
	public String testsave(HttpServletRequest request, @RequestParam long activityId, @RequestParam String userName,
			RedirectAttributes red, HttpSession httpSession) {
		long start = System.currentTimeMillis();
		int max = 1000;
		for (int i = 0; i < max; i++) {
			int uid = new Random().nextInt(10000);// = user == null ?
													// 0:user.getId();
			long orderId = sequenceUtil.get("activity_order");

			ActivityOrder order = new ActivityOrder();
			order.setId(orderId);
			order.setActivityId(activityId + i);
			order.setContent("大汗行宫请客了");
			order.setCreateTime(new Date());
			order.setUserName(userName);

			order.setUserId(uid);
			try {
				activityOrderService.saveEntity(order);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		long end = System.currentTimeMillis();
		return "success use:" + (end - start) + "ms avg use:" + (end - start) / max + "ms";
	}

	@RequestMapping(value = "/testlist")
	@ResponseBody
	public String testlist(HttpServletRequest request, @RequestParam long activityId, RedirectAttributes red,
			HttpSession httpSession) {
		long start = System.currentTimeMillis();
		int max = 1000;

		ActivityOrder order = new ActivityOrder();
		order.setActivityId(activityId);

		try {
			List<ActivityOrder> lists = activityOrderService.findListBy(order);

			for (ActivityOrder orderx : lists) {
				System.out.println(orderx.getId() + "=>" + orderx.getContent());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		long end = System.currentTimeMillis();
		return "success use:" + (end - start) + "ms avg use:" + (end - start) / max + "ms";
	}
	
	@RequestMapping(value = "/testupdatein")
	@ResponseBody
	public String testupdatein(HttpServletRequest request, @RequestParam long activityId, long id,RedirectAttributes red,
			HttpSession httpSession) {
		long start = System.currentTimeMillis();
		int max = 1000;

		ActivityOrder order = new ActivityOrder();
		order.setActivityId(activityId);
		order.setContent("测试修改");
		
		Long[] ids = new Long[]{id,114700l,114705l};
		try {
			activityOrderService.updateEntityIn(order, ids);

		} catch (Exception e) {
			e.printStackTrace();
		}
		long end = System.currentTimeMillis();
		return "success use:" + (end - start) + "ms avg use:" + (end - start) / max + "ms";
	}

	@RequestMapping(value = "/testone")
	@ResponseBody
	public ActivityOrder testONE(HttpServletRequest request, @RequestParam long activityId,  @RequestParam long id,RedirectAttributes red,
			HttpSession httpSession) {

		ActivityOrder order = new ActivityOrder();
		order.setActivityId(activityId);
		order.setId(id);
		
		ActivityOrder entity = null;
		try {
			entity = activityOrderService.findEntityById(order);
//			System.out.println(entity.getId() + "=>" + entity.getContent());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return entity;
	}

	/**
	 * 注册用户保存
	 * 
	 * @param request
	 * @param activityId
	 * @param userName
	 * @param red
	 * @return
	 */
	@RequestMapping(value = "/save")
	public String save(HttpServletRequest request, @RequestParam long activityId, @RequestParam String userName,
			RedirectAttributes red, HttpSession httpSession) {
		int userId = 0;
		Users user = (Users) httpSession.getAttribute("user");

		String[] foods = request.getParameterValues("food");
		String[] nums = request.getParameterValues("num");

		int uid = new Random().nextInt(10000);// = user == null ?
												// 0:user.getId();
		long orderId = sequenceUtil.get("activity_order");

		if (foods != null && foods.length > 0) {

			ActivityOrder order = new ActivityOrder();
			order.setId(orderId);
			order.setActivityId(activityId);
			order.setContent("");
			order.setCreateTime(new Date());
			order.setUserName(userName);

			order.setUserId(uid);
			try {
				activityOrderService.saveEntity(order);
			} catch (Exception e) {
				e.printStackTrace();
			}

			String content = "";
			// Long orderid = Integer.parseInt(orderId+"");
			// long orderid = Long.parseLong(orderId.toString());

			for (int i = 0; i < foods.length; i++) {
				String nn = nums[i];
				if (nn == null || nn.length() == 0) {
					nn = "1";
				}
				ActivityOrderDetail entity = new ActivityOrderDetail();
				entity.setActivityId(activityId);
				entity.setProduct(foods[i]);
				;
				entity.setNums(Integer.parseInt(nn));
				entity.setPrice(0D);
				// entity.setUserId(userId);
				entity.setOrderId(orderId);
				entity.setUserName(userName);
				entity.setUserId(uid);

				try {
					if (foods[i] != null && !foods[i].equals("")) {
						activityOrderDetailService.saveEntity(entity);
						content += entity.getProduct() + "*" + entity.getNums();
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			order.setId(orderId);
			order.setContent(content);
			try {
				activityOrderService.updateEntity(order);
			} catch (Exception e) {
				e.printStackTrace();
			}
			;
		}
		red.addAttribute("id", activityId);
		return "redirect:/activity/order/list";
	}

	/**
	 * 匿名保存
	 * 
	 * @param request
	 * @param activityId
	 * @param userName
	 * @param red
	 * @return
	 */
	@RequestMapping(value = "/save2")
	public String save2(HttpServletRequest request, @RequestParam String uuid, @RequestParam String userName,
			RedirectAttributes red) {
		int userId = 0;

		String[] foods = request.getParameterValues("food");
		String[] nums = request.getParameterValues("num");

		Activity act = null;
		// try {
		// act = activityService.findEntityByUUID(uuid);
		// } catch (Exception e1) {
		// e1.printStackTrace();
		// }
		// if(act == null)
		// {
		// red.addAttribute("uuid", uuid);
		// return "redirect:list2";
		// }

		Object orderId = 0;
		if (foods != null && foods.length > 0 && userName != null && !userName.equals("")) {
			ActivityOrder order = new ActivityOrder();
			order.setActivityId(act.getId());
			order.setContent("");
			order.setCreateTime(new Date());
			order.setUserName(userName);
			if (userName == null || userName.equals("")) {
				red.addAttribute("uuid", uuid);
				return "redirect:list2";
			}

			try {
				orderId = activityOrderService.saveEntity(order);
			} catch (Exception e) {
				e.printStackTrace();
			}

			String content = "";
			long orderid = Long.parseLong(orderId.toString());
			for (int i = 0; i < foods.length; i++) {
				String nn = nums[i];
				if (nn == null || nn.length() == 0) {
					nn = "1";
				}
				ActivityOrderDetail entity = new ActivityOrderDetail();
				entity.setActivityId(act.getId());
				entity.setProduct(foods[i]);
				;
				entity.setNums(Integer.parseInt(nn));
				entity.setPrice(0D);
				entity.setUserId(userId);
				entity.setOrderId(orderid);
				entity.setUserName(userName);

				try {
					if (foods[i] != null && !foods[i].equals("")) {
						activityOrderDetailService.saveEntity(entity);
						content += entity.getProduct() + "*" + entity.getNums();
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			order.setId(orderid);
			order.setContent(content);
			try {
				activityOrderService.updateEntity(order);
			} catch (Exception e) {
				e.printStackTrace();
			}
			;
		}
		red.addAttribute("uuid", uuid);
		return "redirect:list2";
	}

	@RequestMapping(value = "/list2")
	public String list2(RedirectAttributes redirectAttributes, @RequestParam("uuid") String uuid, Model model) {

		try {
			// String[] keyName = new String[]{};
			// String[] operate= new String[]{};
			// Object[] keyValue= new Object[]{};

			// Activity activity = activityService.findEntityByUUID(uuid);
			//
			// model.addAttribute("activity", activity);
			//
			//// activityOrderDetailService.findEntityList(keyName, operate,
			// keyValue, 100, 1);
			//
			// String sql = "select product,sum(nums) numx,sum(price)
			// total_price from activity_order_detail where
			// activity_id="+activity.getId()+" group by product";
			//
			// List<Map<String, String>> queryListMap =
			// activityOrderDetailService.queryListMap(sql);
			//
			// model.addAttribute("orderDetailList",queryListMap);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/activity/order-detail-list2";
	}

	@RequestMapping(value = "/list")
	public String list(RedirectAttributes redirectAttributes, @RequestParam("id") Long id, Model model) {

		try {
			// String[] keyName = new String[]{};
			// String[] operate= new String[]{};
			// Object[] keyValue= new Object[]{};
			Activity query = new Activity();
			query.setId(1232l);
			query.setPlaceId(1232);

			Activity activity = activityService.findEntityById(query.getId());

			model.addAttribute("activity", activity);

			// activityOrderDetailService.findEntityList(keyName, operate,
			// keyValue, 100, 1);

			String sql = "select product,sum(nums) numx,sum(price) total_price from activity_order_detail where activity_id="
					+ id + " group by product";

			// List<Map<String, String>> queryListMap =
			// activityOrderDetailService.queryListMap(sql);
			//
			// model.addAttribute("orderDetailList",queryListMap);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/activity/order-detail-list";
	}
}
