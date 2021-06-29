package application.config;

import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class MvcConfig implements WebMvcConfigurer {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry)
    {
        registry.addResourceHandler("/jquery/**")
                .addResourceLocations("classpath:/META-INF/resources/webjars/jquery/3.5.1/");

        registry.addResourceHandler("/popper/**")
                .addResourceLocations("classpath:/META-INF/resources/webjars/popper.js/1.16.0/umd/");

        registry.addResourceHandler("/bootstrap/**")
                .addResourceLocations("classpath:/META-INF/resources/webjars/bootstrap/5.0.0-beta2/");

    }
}
