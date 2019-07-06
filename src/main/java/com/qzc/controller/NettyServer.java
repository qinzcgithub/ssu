package com.qzc.controller;

import com.qzc.util.ServerChannelInitializer;
import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import org.springframework.stereotype.Component;

import java.net.InetSocketAddress;
import java.util.logging.Logger;

@Component
public class NettyServer {
  public void start(InetSocketAddress address){
              EventLoopGroup bossGroup = new NioEventLoopGroup(1);
       EventLoopGroup workerGroup = new NioEventLoopGroup();
 try {
                  ServerBootstrap bootstrap = new ServerBootstrap()
                           .group(bossGroup,workerGroup)
                          .channel(NioServerSocketChannel.class)
                                .localAddress(address)
                              .childHandler(new ServerChannelInitializer())
                               .option(ChannelOption.SO_BACKLOG, 128)
                              .childOption(ChannelOption.SO_KEEPALIVE, true);
                        // 绑定端口，开始接收进来的连接
                       ChannelFuture future = bootstrap.bind(address).sync();
                         System.out.println("Server start listen at " + address.getPort());
                        future.channel().closeFuture().sync();
 } catch (Exception e) {
     e.printStackTrace();
                        bossGroup.shutdownGracefully();
                        workerGroup.shutdownGracefully();
                     }
            }
}
