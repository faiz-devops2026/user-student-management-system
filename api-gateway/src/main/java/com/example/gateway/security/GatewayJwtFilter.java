package com.example.gateway.security;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import org.springframework.cloud.gateway.filter.GatewayFilter;
import org.springframework.cloud.gateway.filter.factory.AbstractGatewayFilterFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;

@Component
public class GatewayJwtFilter
        extends AbstractGatewayFilterFactory<GatewayJwtFilter.Config> {

    private static final String SECRET =
            "MyJwtSecretKeyForCompleteProject2026Secure";

    public GatewayJwtFilter() {
        super(Config.class);
    }

    @Override
    public GatewayFilter apply(Config config) {
        return (exchange, chain) -> {

            String path = exchange.getRequest().getURI().getPath();

            // 🔓 auth-service ko bypass karo
            if (path.startsWith("/auth")) {
                return chain.filter(exchange);
            }

            // ❌ Authorization header missing
            if (!exchange.getRequest().getHeaders()
                    .containsKey(HttpHeaders.AUTHORIZATION)) {

                exchange.getResponse()
                        .setStatusCode(HttpStatus.UNAUTHORIZED);
                return exchange.getResponse().setComplete();
            }

            String header = exchange.getRequest()
                    .getHeaders()
                    .getFirst(HttpHeaders.AUTHORIZATION);

            // ❌ Bearer missing
            if (header == null || !header.startsWith("Bearer ")) {
                exchange.getResponse()
                        .setStatusCode(HttpStatus.UNAUTHORIZED);
                return exchange.getResponse().setComplete();
            }

            String token = header.substring(7);

            try {
                Jwts.parser()
                        .verifyWith(
                            Keys.hmacShaKeyFor(SECRET.getBytes())
                        )
                        .build()
                        .parseSignedClaims(token);
            } catch (Exception e) {
                exchange.getResponse()
                        .setStatusCode(HttpStatus.UNAUTHORIZED);
                return exchange.getResponse().setComplete();
            }

            return chain.filter(exchange);
        };
    }

    public static class Config {
    }
}
