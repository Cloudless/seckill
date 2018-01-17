package org.seckill.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.seckill.entity.Seckill;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

//import javax.annotation.Resource;

import javax.annotation.Resource;

import java.util.Date;
import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by jiangcy on 2018/1/8. * 配置spring和junit整合，junit启动时加载springIOC容器
 * spring-test, junit
 */

@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring配置文件
@ContextConfiguration({ "classpath:spring/spring-dao.xml" })
public  class SeckillDaoTest {

    //注入Dao实现类依赖
     @Resource
    private SeckillDao seckillDao;
    @Test
    public void test1()
    {
        System.out.println(123);
    }

    @Test
    public void testQueryById() throws Exception
    {
        long id = 1000;
        System.out.println("test1");
        Seckill seckill = seckillDao.queryById(id);
        System.out.println("***************开始TestQueryById****************");
        System.out.println(seckill.getName());
        System.out.println(seckill);
        System.out.println("***************结束TestQueryById****************");
    }

    @Test
    public void reduceNumber() throws Exception {
        long seckillId=1000;
        Date date=new Date();
        int updateCount=seckillDao.reduceNumber(seckillId,date);
        System.out.println(updateCount);
    }

    @Test
    public void queryById() throws Exception {
        long id=1000;
        Seckill seckill = seckillDao.queryById(id);
       // Seckill seckill=seckillDao.queryById(seckillId);
       // System.out.println(seckill.getName());
        System.out.println(seckill);
    }

    @Test
    public void queryAll() throws Exception {
        List<Seckill> seckills=seckillDao.queryAll(0,100);
        for (Seckill seckill : seckills)
        {
            System.out.println(seckill);
        }
    }

}