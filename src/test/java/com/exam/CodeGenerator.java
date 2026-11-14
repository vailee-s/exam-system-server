package com.exam;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.engine.VelocityTemplateEngine;

import java.util.Collections;

/**
 * MyBatis-Plus 自动代码生成器
 * 使用前请配置真实的数据库连接与表名
 *
 * @author exam
 */
public class CodeGenerator {

    /**
     * 数据库连接配置
     */
    private static final String DB_URL = "jdbc:mysql://localhost:3306/aiexam?useUnicode=true&characterEncoding=UTF-8&serverTimezone=Asia/Shanghai";
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "123456";

    /**
     * 需要生成的表名，逗号分隔，例如 "t_user,t_exam,t_question"
     */
    private static final String[] TABLES = {"sys_user"};

    public static void main(String[] args) {
        String projectPath = System.getProperty("user.dir");

        FastAutoGenerator.create(DB_URL, DB_USERNAME, DB_PASSWORD)
                .globalConfig(builder -> {
                    builder.author("exam") // 设置作者
                            .enableSwagger() // 开启 Swagger / OpenAPI 模式
                            .outputDir(projectPath + "/src/main/java") // 指定 Java 代码输出目录
                            .disableOpenDir(); // 禁止生成后自动打开目录
                })
                .packageConfig(builder -> {
                    builder.parent("com.exam") // 设置父包名
                            .entity("entity") // 实体类包名
                            .mapper("mapper") // Mapper 接口包名
                            .service("service") // Service 接口包名
                            .serviceImpl("service.impl") // Service 实现类包名
                            .controller("controller") // Controller 包名
                            .pathInfo(Collections.singletonMap(OutputFile.xml, projectPath + "/src/main/resources/mapper")); // XML 映射文件存放位置
                })
                .strategyConfig(builder -> {
                    builder.addInclude(TABLES) // 设置需要生成的表名
                            .addTablePrefix("t_", "sys_") // 过滤表前缀，如 t_user -> User
                            // 实体类策略
                            .entityBuilder()
                            .superClass("com.exam.entity.BaseEntity") // 继承 BaseEntity 基类
                            .addSuperEntityColumns("id", "create_time", "update_time", "is_deleted") // 基类中的公共字段
                            .enableLombok() // 启用 Lombok
                            .enableFileOverride() // 覆盖已有文件
                            // Controller 策略
                            .controllerBuilder()
                            .enableRestStyle() // 生成 @RestController 控制器
                            .enableFileOverride()
                            // Service 策略
                            .serviceBuilder()
                            .formatServiceFileName("%sService") // 接口命名例如 UserService
                            .enableFileOverride()
                            // Mapper 策略
                            .mapperBuilder()
                            .enableBaseResultMap()
                            .enableBaseColumnList()
                            .enableFileOverride();
                })
                .templateEngine(new VelocityTemplateEngine()) // 使用 Velocity 模板引擎
                .execute();
    }
}
