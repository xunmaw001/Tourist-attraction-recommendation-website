package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.JiudianfenleiDao;
import com.entity.JiudianfenleiEntity;
import com.service.JiudianfenleiService;
import com.entity.vo.JiudianfenleiVO;
import com.entity.view.JiudianfenleiView;

@Service("jiudianfenleiService")
public class JiudianfenleiServiceImpl extends ServiceImpl<JiudianfenleiDao, JiudianfenleiEntity> implements JiudianfenleiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiudianfenleiEntity> page = this.selectPage(
                new Query<JiudianfenleiEntity>(params).getPage(),
                new EntityWrapper<JiudianfenleiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiudianfenleiEntity> wrapper) {
		  Page<JiudianfenleiView> page =new Query<JiudianfenleiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiudianfenleiVO> selectListVO(Wrapper<JiudianfenleiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiudianfenleiVO selectVO(Wrapper<JiudianfenleiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiudianfenleiView> selectListView(Wrapper<JiudianfenleiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiudianfenleiView selectView(Wrapper<JiudianfenleiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
