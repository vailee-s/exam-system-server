package com.exam.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * MinIO 配置属性类
 *
 * @author exam
 */
@Data
@Component
@ConfigurationProperties(prefix = "minio")
public class MinioProperties {

    /**
     * MinIO 服务端地址，例如 http://localhost:9000
     */
    private String endpoint = "http://127.0.0.1:9000";

    /**
     * 访问凭证
     */
    private String accessKey = "minioadmin";

    /**
     * 凭证密钥
     */
    private String secretKey = "minioadmin";

    /**
     * 默认存储桶名称
     */
    private String bucketName = "exam-bucket";
}
