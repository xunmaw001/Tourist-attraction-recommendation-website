package com.entity.vo;

import com.entity.JiudianxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 酒店信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-01-04 11:13:10
 */
public class JiudianxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 酒店名称
	 */
	
	private String jiudianmingcheng;
		
	/**
	 * 酒店类型
	 */
	
	private String jiudianleixing;
		
	/**
	 * 房型
	 */
	
	private String fangxing;
		
	/**
	 * 价格
	 */
	
	private String jiage;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 酒店介绍
	 */
	
	private String jiudianjieshao;
				
	
	/**
	 * 设置：酒店名称
	 */
	 
	public void setJiudianmingcheng(String jiudianmingcheng) {
		this.jiudianmingcheng = jiudianmingcheng;
	}
	
	/**
	 * 获取：酒店名称
	 */
	public String getJiudianmingcheng() {
		return jiudianmingcheng;
	}
				
	
	/**
	 * 设置：酒店类型
	 */
	 
	public void setJiudianleixing(String jiudianleixing) {
		this.jiudianleixing = jiudianleixing;
	}
	
	/**
	 * 获取：酒店类型
	 */
	public String getJiudianleixing() {
		return jiudianleixing;
	}
				
	
	/**
	 * 设置：房型
	 */
	 
	public void setFangxing(String fangxing) {
		this.fangxing = fangxing;
	}
	
	/**
	 * 获取：房型
	 */
	public String getFangxing() {
		return fangxing;
	}
				
	
	/**
	 * 设置：价格
	 */
	 
	public void setJiage(String jiage) {
		this.jiage = jiage;
	}
	
	/**
	 * 获取：价格
	 */
	public String getJiage() {
		return jiage;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：酒店介绍
	 */
	 
	public void setJiudianjieshao(String jiudianjieshao) {
		this.jiudianjieshao = jiudianjieshao;
	}
	
	/**
	 * 获取：酒店介绍
	 */
	public String getJiudianjieshao() {
		return jiudianjieshao;
	}
			
}
