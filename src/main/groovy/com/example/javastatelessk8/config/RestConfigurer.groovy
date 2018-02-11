package com.example.javastatelessk8.config

import com.example.javastatelessk8.service.ShipNoticeService
import org.glassfish.jersey.server.ResourceConfig
import org.springframework.stereotype.Component

import javax.ws.rs.ApplicationPath

/**
 * Created by ravipalakodeti on 11/16/17.
 */
@Component
@ApplicationPath('ship-notices')
class RestConfigurer extends ResourceConfig {

    RestConfigurer() {
        register(ShipNoticeService.class)
    }
}
