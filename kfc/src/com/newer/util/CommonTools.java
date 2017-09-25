package com.newer.util;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;



/**
 * 通用工具类
 * @author CSU 朱敏
 * @time 创建时间：2016-12-8 修改时间 2016-12-8
 */
public class CommonTools {
	
	/**
	 * 将Map转换为JSON字符串
	 * @author CSU 朱敏
	 * @param map 传入的map数据
	 * @return 返回生成的String格式的json字符串
	 */
	public static String getJSON(Map<String,String> map){
		
		Set<String> keySet = map.keySet();
		Iterator<String> iterator = keySet.iterator();
		
		String json = "{";
		
		while(iterator.hasNext()){
			String key = iterator.next();
			String value = map.get(key);
			
			json += "\"" + key + "\"" + ":" + "\"" + value + "\"";
			if(iterator.hasNext()){
				json += ",";
			}
		}
		json += "}";
		
		return json;
	}

	
	/**
	 * 从列表中获取指定个数的元素
	 * @author CSU 朱敏
	 * @param list 传入的列表
	 * @param page 页码
	 * @param number 每页几个元素
	 * @return List<Object> 获取到的当前页面的元素列表
	 * @time 创建时间：2016-12-8 修改时间：2016-12-8
	 */
	public static <T> List<T> getElementsFromList(List<T> list,int page,int number){
		
		List<T> listReturn = new ArrayList<T>();
		
		//获取列表的大小
		int size = list.size();
		
		//获取起始下标
		int begin = (page-1)*number;
		
		//获取终止下标
		int end = page*number;
		
		//当起始下标小于列表大小时，才能够获取
		if(begin<size){
			
			//如果终止下标大于列表长度，则把剩下的所有列表元素全部作为返回值返回
			if(end>size){
				end = size;
			}
			
			//迭代获取制定区间的元素
			for(;begin<end;begin++){
				listReturn.add(list.get(begin));
			}
			
			return listReturn;
		}else{
			return null;
		}
	}
	
	/**
	 * 获取剩下的页码数（包含当前传入的页码）
	 * @author CSU 朱敏
	 * @param list 传入的列表
	 * @param page 页码
	 * @param number 每个几个元素
	 * @return int 获取到的当前还剩余的页码数
	 * @time 创建时间：2016-12-8 修改时间：2016-12-9
	 */
	public static <T> int getRemainPage(List<T> list,int page,int number){
		
		//获取列表的大小
		int size = list.size();
		
		//获取起始下标
		int begin = (page-1)*number;
		
		int remain = 1;
		
		if(begin<size){
			remain = 0;
			while(begin<size){
				remain++;
			
				begin += number;
			}
		}
		

		return remain;
	}
	
	/**
	 * 获取页码编号工具
	 * @author CSU 朱敏
	 * @param newPage 当前选择的页面
	 * @param pageNumber 剩余的页面数
	 * @return 创建好的页码编号列表（至多3个值）
	 * @time 创建时间：2016-12-09 修改时间：2016-12-09
	 */
	public static List<Integer> getPageNumberList(int newPage,int pageNumber){
		List<Integer> pageNumberList = new ArrayList<Integer>();
		
		//如果当前是第一页
		if(newPage==1){
			int count=0;
			
			//向前计算2个以内的数，作为页码
			while(count<=2&&count<pageNumber){
				
				pageNumberList.add(newPage+count);
				
				count += 1;
			}
			
		//如果当前传入的不是第一页，但是是最后一页
		}else if(newPage!=1&&pageNumber==1){
			
			//如果当前传入页是2的话，即代表整个页码只有2页的情况
			if(newPage==2){
				
				//向后退一个数字
				int count=-1;
				while(count<=0&&(count+2)<=newPage){
					pageNumberList.add(newPage+count);
					
					count += 1;
				}
			
			//如果当前传入页不是2，并且达到最后一个的话
			}else if(newPage!=2){
				
				//向前退2个数字
				int count=-2;
				while(count<=0&&(count+2)<newPage){
					pageNumberList.add(newPage+count);
					
					count += 1;
				}
			}
		
		//如果当前传入页不是第一页，并且剩余页面数大于1的话
		}else if(newPage!=1&&pageNumber!=1){
			
			//计算该页面的左右2个数
			int count=-1;
			
			while(count<=1&&count<pageNumber){
				
				pageNumberList.add(newPage+count);
				
				count += 1;
			}
		}
		
		return pageNumberList;
	}
}

