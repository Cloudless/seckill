package org.seckill.config;

/**
 * Created by jiangcy on 2018/1/23.
 */

import com.mangofactory.swagger.configuration.SpringSwaggerConfig;
import com.mangofactory.swagger.models.dto.ApiInfo;
import com.mangofactory.swagger.plugin.EnableSwagger;
import com.mangofactory.swagger.plugin.SwaggerSpringMvcPlugin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@EnableSwagger
@EnableWebMvc
public class SwaggerConfig {
    private SpringSwaggerConfig springSwaggerConfig;
    /**
     * Required to autowire SpringSwaggerConfig
     */
    @Autowired
    public void setSpringSwaggerConfig(SpringSwaggerConfig springSwaggerConfig)
    {
        this.springSwaggerConfig = springSwaggerConfig;
    }
    /**
     * Every SwaggerSpringMvcPlugin bean is picked up by the swagger-mvc
     * framework - allowing for multiple swagger groups i.e. same code base
     * multiple swagger resource listings.
     */
    @Bean
    public SwaggerSpringMvcPlugin customImplementation()
    {
        return new SwaggerSpringMvcPlugin(this.springSwaggerConfig)
                .apiInfo(apiInfo())
                .includePatterns(".*?");

    }

    private ApiInfo apiInfo()
    {
        ApiInfo apiInfo = new ApiInfo(
                "Swagger测试",
                "测试查询用户",
                "开发者: Changxin L",
                "348686686@gmail.com",
                "MIT License",
                "/LICENSE");
        return apiInfo;
    }
}