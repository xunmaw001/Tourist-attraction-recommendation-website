package com.entity.view;

import com.entity.JiudianfenleiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 酒店分类
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-04 11:13:10
 */
@TableName("jiudianfenlei")
public class JiudianfenleiView  extends JiudianfenleiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JiudianfenleiView(){
	}
 
 	public JiudianfenleiView(JiudianfenleiEntity jiudianfenleiEntity){
 	try {
			BeanUtils.copyProperties(this, jiudianfenleiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
