package tps6.tp_s6_p14_web_design_mai_2023;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
@Configuration
public class TpS6P14WebDesignMai2023Application {

    @Value("niavo jr")
    private String encryptorPassword;

    @Bean(name = "jasyptStringEncryptor")
    public StandardPBEStringEncryptor standardPBEStringEncryptor() {
        StandardPBEStringEncryptor encryptor = new StandardPBEStringEncryptor();
        encryptor.setPassword(encryptorPassword);
        return encryptor;
    }

    public static void main(String[] args) {
        SpringApplication.run(TpS6P14WebDesignMai2023Application.class, args);
    }

}
