# my-exam-sys-server 在线考试系统服务端

基于 **Spring Boot 3.0.5** + **Java 17** + **MyBatis-Plus 3.5.17** 构建的高性能在线考试系统服务端工程。

---

## 一、技术选型与版本

| 技术组件 | 版本 | 说明 |
| :--- | :--- | :--- |
| **Java** | 17 | 长期支持版本 (LTS) |
| **Spring Boot** | 3.0.5 | 核心框架 (Jakarta EE 规范) |
| **MyBatis-Plus** | 3.5.17 | ORM 与持久层增强工具 |
| **MyBatis-Plus Generator** | 3.5.17 | 代码自动生成器 |
| **MySQL Connector** | 8.0.33 | 关系型数据库驱动 |
| **Redis / Lettuce** | Spring Boot 3 内置 | 高性能缓存中间件 |
| **Redisson** | 3.24.3 | 分布式锁与协调服务 |
| **JJWT** | 0.12.5 | 基于 Token 的无状态身份认证 |
| **MinIO** | 8.5.7 | 分布式对象存储客户端 |
| **Knife4j / OpenAPI 3** | 4.4.0 | 交互式 API 接口文档 |
| **Apache POI** | 5.2.4 | Excel 文件导入导出支持 |
| **Fastjson 2** | 2.0.25 | 高性能 JSON 序列化工具 |
| **Lombok** | 1.18.26+ | 简化 Java Bean 代码开发 |

---

## 二、项目工程目录结构

```
my-exam-sys-server
├── pom.xml                                      # Maven 依赖与构建配置 (groupId: com.exam)
├── .gitignore                                   # Git 忽略配置
├── README.md                                    # 工程说明文档
└── src
    ├── main
    │   ├── java
    │   │   └── com
    │   │       └── exam                         # 基础包路径 (com.exam)
    │   │           ├── ExamApplication.java     # Spring Boot 应用启动主类
    │   │           ├── common                   # 公共模块
    │   │           │   ├── exception            # 异常处理
    │   │           │   │   ├── BusinessException.java      # 自定义业务异常
    │   │           │   │   └── GlobalExceptionHandler.java # 全局异常处理器 (@RestControllerAdvice)
    │   │           │   ├── handler              # 处理器
    │   │           │   │   └── MybatisPlusMetaObjectHandler.java # 审计字段自动填充 (createTime, updateTime, isDeleted)
    │   │           │   └── result               # 统一响应封装
    │   │           │       ├── Result.java                 # 统一返回结果对象 Result<T>
    │   │           │       └── ResultCodeEnum.java         # 业务状态码枚举
    │   │           ├── config                   # 系统核心配置
    │   │           │   ├── Knife4jConfig.java   # Knife4j / OpenAPI 3 接口文档与 JWT 请求头配置
    │   │           │   ├── MybatisPlusConfig.java # MyBatis-Plus 分页插件与防全表更新插件
    │   │           │   ├── RedisConfig.java     # RedisTemplate 序列化配置 (Jackson)
    │   │           │   ├── WebMvcConfig.java    # 跨域配置 (CORS) 与静态资源映射
    │   │           │   ├── MinioConfig.java     # MinIO 客户端 Bean 配置
    │   │           │   ├── MinioProperties.java # MinIO 属性配置绑定
    │   │           │   └── RedissonConfig.java  # Redisson 分布式锁客户端配置
    │   │           ├── controller               # 控制层
    │   │           │   └── HealthController.java# 系统健康检查与 JWT 测试接口
    │   │           ├── entity                   # 实体类
    │   │           │   └── BaseEntity.java      # 基础实体类 (id, createTime, updateTime, isDeleted)
    │   │           ├── mapper                   # 数据持久层 Mapper 接口
    │   │           ├── service                  # 业务逻辑层 Service 接口
    │   │           │   └── impl                 # 业务逻辑实现类
    │   │           ├── dto                      # 数据传输对象 (Data Transfer Object)
    │   │           ├── vo                       # 视图层对象 (View Object)
    │   │           └── util                     # 工具类
    │   │               ├── JwtUtil.java         # JJWT 0.12.5 Token 生成、解析与校验工具
    │   │               └── MinioUtil.java       # MinIO 存储桶管理、文件上传、预签名下载与删除工具
    │   └── resources
    │       ├── application.yml                  # 核心应用配置 (数据源、端口、文件上传、Knife4j)
    │       ├── application-dev.yml              # 开发环境扩展配置 (Redis、MyBatis-Plus、MinIO)
    │       ├── application-prod.yml             # 生产环境配置模板
    │       └── mapper                           # MyBatis XML Mapper 文件目录
    └── test
        └── java
            └── com
                └── exam
                    ├── ExamApplicationTests.java # 启动测试
                    ├── CodeGenerator.java        # MyBatis-Plus 代码自动生成器
                    └── util
                        └── JwtUtilTest.java      # JWT 工具类单元测试
```

---

## 三、快速开始

### 1. 环境准备
- **JDK 17+**
- **Maven 3.8+**
- **MySQL 8.0+**
- **Redis 6.0+** (可选)
- **MinIO** (可选)

### 2. 数据库配置
在 MySQL 中创建数据库 `aiexam`：
```sql
CREATE DATABASE IF NOT EXISTS aiexam DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```
配置已在 `src/main/resources/application.yml` 中默认指定：
```yaml
spring:
  datasource:
    type: com.zaxxer.hikari.HikariDataSource
    url: jdbc:mysql://localhost:3306/aiexam?useUnicode=true&characterEncoding=utf-8&useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=GMT%2b8
    username: root
    password: 123456
```

### 3. 代码生成器使用
工程内置了基于 MyBatis-Plus 3.5.17 的自动代码生成器：
- 文件位置：`src/test/java/com/exam/CodeGenerator.java`
- 在该类中配置数据表名称（如 `sys_user`、`t_exam` 等）并直接运行 `main` 方法，即可一键生成对应的 Entity、Mapper、Mapper.xml、Service、ServiceImpl 及 Controller。

### 4. 启动与调试
运行 `com.exam.ExamApplication` 即可启动服务。

启动成功后，可在浏览器访问：
- **Knife4j API 交互文档**：[http://localhost:8080/doc.html](http://localhost:8080/doc.html)
- **Swagger UI 原生文档**：[http://localhost:8080/swagger-ui.html](http://localhost:8080/swagger-ui.html)
- **服务健康检查接口**：[http://localhost:8080/api/system/health](http://localhost:8080/api/system/health)
