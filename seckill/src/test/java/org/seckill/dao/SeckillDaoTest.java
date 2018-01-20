package org.seckill.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.seckill.entity.Seckill;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import java.util.Date;
import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by jiangcy on 2018/1/17.
 * 配置spring和junit整合，这样junit在启动时就会加载spring容器
 */
@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring的配置文件
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class SeckillDaoTest {

    //注入Dao实现类依赖
    @Resource
    private SeckillDao seckillDao;

    @Test
    public void testQueryById() throws Exception {
        long id = 1000;
        System.out.println("test1");
        Seckill seckill = seckillDao.queryById(id);
        System.out.println("***************开始TestQueryById****************");
        System.out.println(seckill.getName());
        System.out.println(seckill);
        System.out.println("***************结束TestQueryById****************");
    }

    @Test
    public void testQueryAll() throws Exception {
        List<Seckill> seckills = seckillDao.queryAll(0,100);
        for (Seckill seckill : seckills)
        {
            System.out.println(seckill);
        }
    }

    @Test
    public void testReduceNumber() throws Exception {
        Date killTime = new Date();
        int updateCount = seckillDao.reduceNumber(1000L, killTime);
        System.out.println("updateCount=" + updateCount);
    }





}