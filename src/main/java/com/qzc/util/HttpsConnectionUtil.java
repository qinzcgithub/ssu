package com.qzc.util;

import java.io.File;
import java.io.IOException;

import org.apache.catalina.connector.Connector;
import org.apache.coyote.http11.Http11NioProtocol;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.ClassPathResource;

public class HttpsConnectionUtil {
	
//	@Value("${https.port}")
//	private int port;
//
//	@Value("${server.ssl.key_store_password}")
//	private String key_store_password;
//
//	@Value("${server.ssl.key_password}")
//	private String key_password;
//
//    private Connector createSslConnector() {
//        Connector connector = new Connector("org.apache.coyote.http11.Http11NioProtocol");
//        Http11NioProtocol protocol = (Http11NioProtocol) connector.getProtocolHandler();
//        try {
//            File keystore = new ClassPathResource("server.keystore").getFile();
//            connector.setScheme("https");
//            connector.setSecure(true);
//            connector.setPort(port);
//            protocol.setSSLEnabled(true);
//            protocol.setKeystoreFile(keystore.getAbsolutePath());
//            protocol.setKeystorePass(key_store_password);
//            protocol.setKeyPass(key_password);
//            return connector;
//        }
//        catch (IOException ex) {
//            throw new IllegalStateException("can't access keystore: [" + "keystore"
//                    + "] or truststore: [" + "keystore" + "]", ex);
//        }
//    }
//
//    @Bean
//    public TomcatServletWebServerFactory tomcatServletWebServerFactory(Connector connector){
//        TomcatServletWebServerFactory tomcat=new TomcatServletWebServerFactory();
//        tomcat.addAdditionalTomcatConnectors(createSslConnector());
//        return tomcat;
//    }
}
