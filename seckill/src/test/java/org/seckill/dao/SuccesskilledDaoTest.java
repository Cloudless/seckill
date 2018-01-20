package org.seckill.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.seckill.entity.Successkilled;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import static org.junit.Assert.*;

/**
 * Created by jiangcy on 2018/1/17.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:spring/spring-dao.xml" })
public class SuccesskilledDaoTest {
    @Resource
    private SuccesskilledDao Successkilleddao;
    @Test
    public void insertSuccessKilled() throws Exception {
        long seckillId = 1001L;
        long userPhone = 13502181181L;
        int insertCount = Successkilleddao.insertSuccessKilled(seckillId, userPhone);
        System.out.println("insertCount=" + insertCount);
    }

    @Test
    public void queryByIdWithSeckill() throws Exception {
        long seckillId = 1001L;
        long userPhone = 13502181181L;
        Successkilled successkilled = Successkilleddao.queryByIdWithSeckill(seckillId,userPhone);
        System.out.println(successkilled);
        System.out.println(successkilled.getSeckill());
    }

}