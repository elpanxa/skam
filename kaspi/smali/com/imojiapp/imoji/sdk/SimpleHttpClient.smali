.class Lcom/imojiapp/imoji/sdk/SimpleHttpClient;
.super Ljava/lang/Object;
.source "SimpleHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imojiapp/imoji/sdk/SimpleHttpClient$PostTask;,
        Lcom/imojiapp/imoji/sdk/SimpleHttpClient$GetTask;,
        Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;,
        Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;
    }
.end annotation


# static fields
.field private static final EXECUTOR_SHUTDOWN_TIMEOUT:I = 0x7530

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_POOL_SIZE:I = 0x3

.field public static final NETWORK_ERROR:Ljava/lang/String; = "NETWORK_ERROR"


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mHandler:Landroid/os/Handler;

.field private mShutdownRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$1;

    invoke-direct {v0, p0}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$1;-><init>(Lcom/imojiapp/imoji/sdk/SimpleHttpClient;)V

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mShutdownRunnable:Ljava/lang/Runnable;

    .line 28
    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->createExecutorService()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/imojiapp/imoji/sdk/SimpleHttpClient;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private createExecutorService()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 33
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mShutdownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mShutdownRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    new-instance v0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$GetTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$GetTask;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    invoke-virtual {v0}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$GetTask;->execute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mShutdownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->createExecutorService()V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mShutdownRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$GetTask;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$GetTask;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mShutdownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 47
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mShutdownRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    new-instance v0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$PostTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$PostTask;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$PostTask;->execute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mShutdownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->createExecutorService()V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mShutdownRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$PostTask;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$PostTask;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method
