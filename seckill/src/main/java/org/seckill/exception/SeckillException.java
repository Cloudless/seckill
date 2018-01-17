package org.seckill.exception;

/**
 * 秒杀相关的所有业务异常
 * Created by jiangcy on 2018/1/16.
 */
public class SeckillException extends RuntimeException {
    public SeckillException(String message) {
        super(message);
    }

    public SeckillException(String message, Throwable cause) {
        super(message, cause);
    }
}