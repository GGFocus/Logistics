/** 
 * @ClassName: CheckMapper 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 
 * @date 2018年1月22日 下午5:43:57  
 */
package com.numberONe.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.numberONe.entity.CheckTaskAssignmentFormMap;
import com.numberONe.entity.ResFormMap;
import com.numberONe.mapper.base.BaseMapper;

/** 
 * @ClassName: CheckMapper 
 * @Description: 考核系统 
 * @author: 
 * @email: 18516523981@163.com
 * @date: 2018年1月22日 下午5:43:57 
 */
public interface CheckMapper extends BaseMapper {
	
	public List<ResFormMap> findRes(ResFormMap map);
	
	//更新评论结果
	public void updateCheckResult(List list);
	//更新task任务分配表
	public void updateCheckTaskAssignment(Map map);
	
	//查询客户经理的分配的详情
	public List<CheckTaskAssignmentFormMap> findAssignTask(Map  map);
	
	//查询客户经理分配的人数
	public Integer findAssignTaskCount(Map  map);
	
	//查询所有task被评价的详情
	public List<CheckTaskAssignmentFormMap> findTaskList(Map  map);
	
	//查询所有评价的结果
	public List<String> getAllResult(Map  map);
	
	//客户经理可以看到自己评论的结果
	public List<String> getCheckHistoryList(Map  map);
	
	//客户经理可以看到自己评论的结果的数量
	public Integer getCheckHistoryListCount(Map  map);
	
}
