.class Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;
.super Ljava/lang/Object;
.source "ImojiNetworkingClientImpl.java"

# interfaces
.implements Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiHttpClientCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse",
        "<TV;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/imojiapp/imoji/sdk/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<TV;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/imojiapp/imoji/sdk/Callback;Landroid/os/Handler;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<TV;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    .line 218
    iput-object p2, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;->mHandler:Landroid/os/Handler;

    .line 219
    iput-object p3, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;->mClazz:Ljava/lang/Class;

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;)Lcom/imojiapp/imoji/sdk/Callback;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback$1;-><init>(Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 224
    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;->mClazz:Ljava/lang/Class;

    invoke-direct {v0, p1, v1, v2}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;-><init>(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;Ljava/lang/Class;)V

    .line 225
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 226
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;

    invoke-virtual {v0, v1, v2}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    new-array v1, v3, [Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;

    invoke-virtual {v0, v1}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
