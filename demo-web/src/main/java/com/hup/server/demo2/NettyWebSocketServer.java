package com.hup.server.demo2;


import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.*;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.nio.NioServerSocketChannel;


/**
 * Created by Administrator on 2017/5/15.
 */
public class NettyWebSocketServer {

    private final EventLoopGroup boss = new NioEventLoopGroup(1);
    private final EventLoopGroup work = new NioEventLoopGroup();

    private int port = 2048;

    public void init(){
        EventLoopGroup bossGroup = new NioEventLoopGroup(); // (1)
        EventLoopGroup workerGroup = new NioEventLoopGroup();
        try {
            ServerBootstrap b = new ServerBootstrap(); // (2)
            b.group(bossGroup, workerGroup)
                    .channel(NioServerSocketChannel.class) // (3)
                    .childHandler(new WebsocketChatServerInitializer())  //(4)
                    .option(ChannelOption.SO_BACKLOG, 128)          // (5)
                    .childOption(ChannelOption.SO_KEEPALIVE, true); // (6)

            System.out.println(" WebsocketChatServer 启动了  端口："+port);

            // 绑定端口，开始接收进来的连接
            ChannelFuture f = b.bind(port).sync(); // (7)

            // 等待服务器  socket 关闭 。
            // 在这个例子中，这不会发生，但你可以优雅地关闭你的服务器。
//            f.channel().closeFuture().sync();

        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void destroy() {
        if (boss != null) {
            boss.shutdownGracefully();
        }
        if (work != null) {
            work.shutdownGracefully();
        }
    }

}
