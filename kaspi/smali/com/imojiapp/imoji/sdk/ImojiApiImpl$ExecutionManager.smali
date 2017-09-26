.class Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;
.super Ljava/lang/Object;
.source "ImojiApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/ImojiApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExecutionManager"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mExpirationTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mINetworking:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

.field private volatile mIsAcquiringAuthToken:Z

.field private volatile mIsAcquiringExternalToken:Z

.field private volatile mOauthToken:Ljava/lang/String;

.field protected mPendingCommands:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRefreshToken:Ljava/lang/String;

.field private final mTimeoutMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;)V
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mHandler:Landroid/os/Handler;

    .line 273
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mContext:Landroid/content/Context;

    .line 274
    iput-object p2, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mINetworking:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

    .line 275
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mTimeoutMillis:J

    .line 276
    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->init()V

    .line 277
    return-void
.end method

.method static synthetic access$1002(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Z)Z
    .locals 0

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mIsAcquiringExternalToken:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->acquireOauthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->startExternalOauth()V

    return-void
.end method

.method static synthetic access$200(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V

    return-void
.end method

.method static synthetic access$400(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mINetworking:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

    return-object v0
.end method

.method static synthetic access$502(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mOauthToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mRefreshToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;J)J
    .locals 1

    .prologue
    .line 259
    iput-wide p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mExpirationTime:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Z)Z
    .locals 0

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mIsAcquiringAuthToken:Z

    return p1
.end method

.method static synthetic access$900(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized acquireOauthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 303
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 364
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 307
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mIsAcquiringAuthToken:Z

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mIsAcquiringAuthToken:Z

    .line 311
    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$1;

    invoke-direct {v0, p0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$1;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)V

    .line 357
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 358
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 360
    :cond_2
    const/4 v1, 0x3

    :try_start_1
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
    .locals 4

    .prologue
    .line 433
    invoke-virtual {p1, p0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;->isDependencySatisfied(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;->run()V

    .line 464
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$3;

    invoke-direct {v1, p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$3;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V

    iget-wide v2, p1, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;->mExpiration:J

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 458
    const-class v1, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    monitor-enter v1

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mPendingCommands:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {p1, p0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;->satisfyDependencies(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)V

    .line 462
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 280
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mPendingCommands:Ljava/util/Queue;

    .line 283
    const-string v0, "t"

    invoke-static {v0, v4}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mOauthToken:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mOauthToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 286
    const-string v0, "e"

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mExpirationTime:J

    .line 287
    const-string v0, "r"

    invoke-static {v0, v4}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mRefreshToken:Ljava/lang/String;

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mExpirationTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 290
    const-string v0, "c"

    invoke-static {v0, v4}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s"

    invoke-static {v1, v4}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mRefreshToken:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->acquireOauthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const-string v0, "c"

    invoke-static {v0, v4}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s"

    invoke-static {v1, v4}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->acquireOauthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized startExternalOauth()V
    .locals 3

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mIsAcquiringExternalToken:Z

    if-nez v0, :cond_0

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mIsAcquiringExternalToken:Z

    .line 370
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mINetworking:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

    const-string v1, "c"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$2;

    invoke-direct {v2, p0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$2;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;->requestExternalOauth(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :cond_0
    monitor-exit p0

    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method executePendingCommands()V
    .locals 4

    .prologue
    .line 473
    const-class v1, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    monitor-enter v1

    .line 475
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 476
    :goto_0
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mPendingCommands:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;

    if-eqz v0, :cond_0

    .line 477
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 480
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;

    .line 483
    iget-object v3, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 484
    invoke-direct {p0, v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V

    goto :goto_1

    .line 488
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    return-void
.end method

.method getExpirationTime()J
    .locals 2

    .prologue
    .line 501
    iget-wide v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mExpirationTime:J

    return-wide v0
.end method

.method getOauthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mOauthToken:Ljava/lang/String;

    return-object v0
.end method

.method getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mRefreshToken:Ljava/lang/String;

    return-object v0
.end method
