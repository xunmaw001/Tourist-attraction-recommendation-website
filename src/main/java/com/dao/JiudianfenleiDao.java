package com.dao;

import com.entity.JiudianfenleiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiudianfenleiVO;
import com.entity.view.JiudianfenleiView;


/**
 * 酒店分类
 * 
 * @author 
 * @email 
 * @date 2021-01-04 11:13:10
 */
public interface JiudianfenleiDao extends BaseMapper<JiudianfenleiEntity> {
	
	List<JiudianfenleiVO> selectListVO(@Param("ew") Wrapper<JiudianfenleiEntity> wrapper);
	
	JiudianfenleiVO selectVO(@Param("ew") Wrapper<JiudianfenleiEntity> wrapper);
	
	List<JiudianfenleiView> selectListView(@Param("ew") Wrapper<JiudianfenleiEntity> wrapper);

	List<JiudianfenleiView> selectListView(Pagination page,@Param("ew") Wrapper<JiudianfenleiEntity> wrapper);
	
	JiudianfenleiView selectView(@Param("ew") Wrapper<JiudianfenleiEntity> wrapper);
	
}
