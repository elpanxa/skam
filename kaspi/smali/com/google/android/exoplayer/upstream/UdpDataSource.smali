.class public final Lcom/google/android/exoplayer/upstream/UdpDataSource;
.super Ljava/lang/Object;
.source "UdpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/upstream/UdpDataSource$UdpDataSourceException;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_PACKET_SIZE:I = 0x7d0


# instance fields
.field private address:Ljava/net/InetAddress;

.field private dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

.field private final listener:Lcom/google/android/exoplayer/upstream/TransferListener;

.field private multicastSocket:Ljava/net/MulticastSocket;

.field private opened:Z

.field private final packet:Ljava/net/DatagramPacket;

.field private packetBuffer:[B

.field private packetRemaining:I

.field private socket:Ljava/net/DatagramSocket;

.field private socketAddress:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/TransferListener;)V
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/upstream/UdpDataSource;-><init>(Lcom/google/android/exoplayer/upstream/TransferListener;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/TransferListener;I)V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    .line 78
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetBuffer:[B

    .line 79
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetBuffer:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    .line 80
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 145
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    .line 147
    :cond_1
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 148
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    .line 149
    iput v3, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    .line 150
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 151
    iput-boolean v3, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->opened:Z

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    .line 156
    :cond_2
    return-void

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v0, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3a

    .line 84
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 85
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 90
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 91
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-direct {v1, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->opened:Z

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferStart()V

    .line 107
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    .line 97
    :cond_1
    :try_start_1
    new-instance v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Lcom/google/android/exoplayer/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    .prologue
    .line 112
    iget v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    if-nez v0, :cond_0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    iget v1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/TransferListener;->onBytesTransferred(I)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    sub-int/2addr v0, v1

    .line 127
    iget v1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 128
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetBuffer:[B

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    .line 130
    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Lcom/google/android/exoplayer/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
