package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiudianfenleiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiudianfenleiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiudianfenleiView;


/**
 * 酒店分类
 *
 * @author 
 * @email 
 * @date 2021-01-04 11:13:10
 */
public interface JiudianfenleiService extends IService<JiudianfenleiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiudianfenleiVO> selectListVO(Wrapper<JiudianfenleiEntity> wrapper);
   	
   	JiudianfenleiVO selectVO(@Param("ew") Wrapper<JiudianfenleiEntity> wrapper);
   	
   	List<JiudianfenleiView> selectListView(Wrapper<JiudianfenleiEntity> wrapper);
   	
   	JiudianfenleiView selectView(@Param("ew") Wrapper<JiudianfenleiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiudianfenleiEntity> wrapper);
   	
}

