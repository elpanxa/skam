.class public Lio/casper/android/n/b/a;
.super Ljava/lang/Object;
.source "ChatSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/b/a$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChatSession"

.field private static final TYPE_AUTHENTICATION_ERROR:Ljava/lang/String; = "authentication_failure"

.field private static final TYPE_WRONG_SERVER:Ljava/lang/String; = "wrong_server"


# instance fields
.field private mConnectionState:Lio/casper/android/n/b/a$a;

.field private mConnectionStateHandler:Lio/casper/android/n/b/a/a;

.field private mConnectionStateListener:Lio/casper/android/n/b/c/a;

.field private mContext:Landroid/content/Context;

.field private mInboundThread:Ljava/lang/Thread;

.field private mInputStream:Lio/casper/android/n/b/b/a;

.field private mMessagingGatewayInfo:Lio/casper/android/n/a/c/b/s;

.field private mOutboundSCMessages:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lio/casper/android/n/b/d/n;",
            ">;"
        }
    .end annotation
.end field

.field private mOutboundThread:Ljava/lang/Thread;

.field private mOutputStream:Lio/casper/android/n/b/b/b;

.field private mPacketHandler:Lio/casper/android/n/b/a/b;

.field private mPacketListener:Lio/casper/android/n/b/c/b;

.field private mServerPort:I

.field private mServerUrl:Ljava/lang/String;

.field private mSnapchatAccount:Lio/casper/android/e/b/b;

.field private mSnapchatAccountManager:Lio/casper/android/l/s;

.field private mSnapchatManager:Lio/casper/android/l/t;

.field private mSocket:Ljavax/net/ssl/SSLSocket;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lio/casper/android/n/b/a$a;->DISCONNECTED:Lio/casper/android/n/b/a$a;

    iput-object v0, p0, Lio/casper/android/n/b/a;->mConnectionState:Lio/casper/android/n/b/a$a;

    .line 45
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lio/casper/android/n/b/a;->mOutboundSCMessages:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 47
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lio/casper/android/n/b/a;->mTimer:Ljava/util/Timer;

    .line 62
    iput-object p1, p0, Lio/casper/android/n/b/a;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/n/b/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/n/b/a;->mSnapchatManager:Lio/casper/android/l/t;

    .line 65
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/n/b/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/n/b/a;->mSnapchatAccountManager:Lio/casper/android/l/s;

    .line 67
    iget-object v0, p0, Lio/casper/android/n/b/a;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/n/b/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    .line 68
    iget-object v0, p0, Lio/casper/android/n/b/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v0}, Lio/casper/android/l/t;->s()Lio/casper/android/n/a/c/b/s;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/n/b/a;->mMessagingGatewayInfo:Lio/casper/android/n/a/c/b/s;

    .line 70
    iget-object v0, p0, Lio/casper/android/n/b/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/n/b/a;->mMessagingGatewayInfo:Lio/casper/android/n/a/c/b/s;

    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lio/casper/android/n/b/a;->mMessagingGatewayInfo:Lio/casper/android/n/a/c/b/s;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/s;->b()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lio/casper/android/n/b/a;->mServerUrl:Ljava/lang/String;

    .line 77
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/casper/android/n/b/a;->mServerPort:I

    goto :goto_0
.end method

.method static synthetic a(Lio/casper/android/n/b/a;Lio/casper/android/n/b/b/a;)Lio/casper/android/n/b/b/a;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lio/casper/android/n/b/a;->mInputStream:Lio/casper/android/n/b/b/a;

    return-object p1
.end method

.method static synthetic a(Lio/casper/android/n/b/a;Lio/casper/android/n/b/b/b;)Lio/casper/android/n/b/b/b;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lio/casper/android/n/b/a;->mOutputStream:Lio/casper/android/n/b/b/b;

    return-object p1
.end method

.method static synthetic a(Lio/casper/android/n/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/n/b/a;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lio/casper/android/n/b/a;Lio/casper/android/n/b/d/n;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lio/casper/android/n/b/a;->b(Lio/casper/android/n/b/d/n;)V

    return-void
.end method

.method static synthetic b(Lio/casper/android/n/b/a;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lio/casper/android/n/b/a;->mServerPort:I

    return v0
.end method

.method private b(Lio/casper/android/n/b/d/n;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 207
    if-eqz p1, :cond_0

    instance-of v0, p1, Lio/casper/android/n/b/d/f;

    if-eqz v0, :cond_2

    .line 208
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/n/b/a;->b()V

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 212
    :cond_2
    instance-of v0, p1, Lio/casper/android/n/b/d/c;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 214
    check-cast v0, Lio/casper/android/n/b/d/c;

    .line 215
    invoke-virtual {v0}, Lio/casper/android/n/b/d/c;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 217
    const-string v0, "ChatSession"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Connect Response: success"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    sget-object v0, Lio/casper/android/n/b/a$a;->CONNECTED:Lio/casper/android/n/b/a$a;

    invoke-virtual {p0, v0}, Lio/casper/android/n/b/a;->a(Lio/casper/android/n/b/a$a;)V

    .line 221
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lio/casper/android/n/b/a;->mTimer:Ljava/util/Timer;

    .line 222
    iget-object v0, p0, Lio/casper/android/n/b/a;->mTimer:Ljava/util/Timer;

    new-instance v1, Lio/casper/android/n/b/a$3;

    invoke-direct {v1, p0}, Lio/casper/android/n/b/a$3;-><init>(Lio/casper/android/n/b/a;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3a98

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 256
    :cond_3
    :goto_1
    iget-object v0, p0, Lio/casper/android/n/b/a;->mPacketHandler:Lio/casper/android/n/b/a/b;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lio/casper/android/n/b/a;->mPacketHandler:Lio/casper/android/n/b/a/b;

    invoke-virtual {v0, p1}, Lio/casper/android/n/b/a/b;->a(Lio/casper/android/n/b/d/n;)V

    goto :goto_0

    .line 231
    :cond_4
    invoke-virtual {v0}, Lio/casper/android/n/b/d/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wrong_server"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 233
    const-string v1, "ChatSession"

    const-string v2, "Connect Response: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "wrong_server"

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-direct {p0}, Lio/casper/android/n/b/a;->f()V

    .line 237
    invoke-virtual {v0}, Lio/casper/android/n/b/d/c;->a()Lio/casper/android/n/b/d/c$a;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lio/casper/android/n/b/d/c$a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/casper/android/n/b/a;->mServerUrl:Ljava/lang/String;

    .line 239
    invoke-virtual {v0}, Lio/casper/android/n/b/d/c$a;->b()I

    move-result v0

    iput v0, p0, Lio/casper/android/n/b/a;->mServerPort:I

    .line 241
    invoke-virtual {p0}, Lio/casper/android/n/b/a;->a()V

    goto :goto_1

    .line 243
    :cond_5
    invoke-virtual {v0}, Lio/casper/android/n/b/d/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "authentication_failure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    const-string v0, "ChatSession"

    const-string v1, "Connect Response: %s"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "authentication_failure"

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 249
    :cond_6
    instance-of v0, p1, Lio/casper/android/n/b/d/j;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 251
    check-cast v0, Lio/casper/android/n/b/d/j;

    .line 252
    const-string v1, "ChatSession"

    const-string v2, "Received Ping Response: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lio/casper/android/n/b/d/j;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic c(Lio/casper/android/n/b/a;)Ljavax/net/ssl/SSLSocket;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/n/b/a;->mSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/n/b/a;)Lio/casper/android/e/b/b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/n/b/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/n/b/a;)Lio/casper/android/n/a/c/b/s;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/n/b/a;->mMessagingGatewayInfo:Lio/casper/android/n/a/c/b/s;

    return-object v0
.end method

.method static synthetic f(Lio/casper/android/n/b/a;)Lio/casper/android/l/t;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/n/b/a;->mSnapchatManager:Lio/casper/android/l/t;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lio/casper/android/n/b/a$a;->DISCONNECTING:Lio/casper/android/n/b/a$a;

    invoke-virtual {p0, v0}, Lio/casper/android/n/b/a;->a(Lio/casper/android/n/b/a$a;)V

    .line 138
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/casper/android/n/b/a$2;

    invoke-direct {v1, p0}, Lio/casper/android/n/b/a$2;-><init>(Lio/casper/android/n/b/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    return-void
.end method

.method static synthetic g(Lio/casper/android/n/b/a;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/n/b/a;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic h(Lio/casper/android/n/b/a;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/n/b/a;->mOutboundSCMessages:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic i(Lio/casper/android/n/b/a;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/n/b/a;->mInboundThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic j(Lio/casper/android/n/b/a;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/n/b/a;->mOutboundThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic k(Lio/casper/android/n/b/a;)Lio/casper/android/n/b/b/a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/n/b/a;->mInputStream:Lio/casper/android/n/b/b/a;

    return-object v0
.end method

.method static synthetic l(Lio/casper/android/n/b/a;)Lio/casper/android/n/b/b/b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/n/b/a;->mOutputStream:Lio/casper/android/n/b/b/b;

    return-object v0
.end method

.method static synthetic m(Lio/casper/android/n/b/a;)Lio/casper/android/n/b/a/b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/n/b/a;->mPacketHandler:Lio/casper/android/n/b/a/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lio/casper/android/n/b/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/n/b/a;->mMessagingGatewayInfo:Lio/casper/android/n/a/c/b/s;

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    sget-object v0, Lio/casper/android/n/b/a$a;->CONNECTING:Lio/casper/android/n/b/a$a;

    invoke-virtual {p0, v0}, Lio/casper/android/n/b/a;->a(Lio/casper/android/n/b/a$a;)V

    .line 88
    iget-object v0, p0, Lio/casper/android/n/b/a;->mOutboundSCMessages:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 92
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Lio/casper/android/n/b/a;->mSocket:Ljavax/net/ssl/SSLSocket;

    .line 97
    iget-object v0, p0, Lio/casper/android/n/b/a;->mSocket:Ljavax/net/ssl/SSLSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/casper/android/n/b/a$1;

    invoke-direct {v1, p0}, Lio/casper/android/n/b/a$1;-><init>(Lio/casper/android/n/b/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lio/casper/android/n/b/a$a;)V
    .locals 5

    .prologue
    .line 177
    const-string v0, "ChatSession"

    const-string v1, "Changing State: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lio/casper/android/n/b/a$a;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iput-object p1, p0, Lio/casper/android/n/b/a;->mConnectionState:Lio/casper/android/n/b/a$a;

    .line 181
    iget-object v0, p0, Lio/casper/android/n/b/a;->mConnectionStateHandler:Lio/casper/android/n/b/a/a;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lio/casper/android/n/b/a;->mConnectionStateHandler:Lio/casper/android/n/b/a/a;

    invoke-virtual {v0, p1}, Lio/casper/android/n/b/a/a;->a(Lio/casper/android/n/b/a$a;)V

    .line 185
    :cond_0
    return-void
.end method

.method public a(Lio/casper/android/n/b/d/n;)V
    .locals 1

    .prologue
    .line 264
    :try_start_0
    iget-object v0, p0, Lio/casper/android/n/b/a;->mOutboundSCMessages:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lio/casper/android/n/b/a;->f()V

    .line 171
    sget-object v0, Lio/casper/android/n/b/a$a;->DISCONNECTED:Lio/casper/android/n/b/a$a;

    invoke-virtual {p0, v0}, Lio/casper/android/n/b/a;->a(Lio/casper/android/n/b/a$a;)V

    .line 173
    return-void
.end method

.method public c()Lio/casper/android/n/b/a$a;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lio/casper/android/n/b/a;->mConnectionState:Lio/casper/android/n/b/a$a;

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 272
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/casper/android/n/b/a$4;

    invoke-direct {v1, p0}, Lio/casper/android/n/b/a$4;-><init>(Lio/casper/android/n/b/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lio/casper/android/n/b/a;->mInboundThread:Ljava/lang/Thread;

    .line 294
    iget-object v0, p0, Lio/casper/android/n/b/a;->mInboundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 296
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 300
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/casper/android/n/b/a$5;

    invoke-direct {v1, p0}, Lio/casper/android/n/b/a$5;-><init>(Lio/casper/android/n/b/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lio/casper/android/n/b/a;->mOutboundThread:Ljava/lang/Thread;

    .line 326
    iget-object v0, p0, Lio/casper/android/n/b/a;->mOutboundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 328
    return-void
.end method
