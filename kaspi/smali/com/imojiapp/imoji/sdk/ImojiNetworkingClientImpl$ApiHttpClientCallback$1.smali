.class Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback$1;
.super Ljava/lang/Object;
.source "ImojiNetworkingClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;->onFailure(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;

.field final synthetic val$failure:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback$1;->this$0:Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;

    iput-object p2, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback$1;->val$failure:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback$1;->this$0:Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;

    # getter for: Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;
    invoke-static {v0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;->access$000(Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;)Lcom/imojiapp/imoji/sdk/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback$1;->val$failure:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/imojiapp/imoji/sdk/Callback;->onFailure(Ljava/lang/Object;)V

    .line 238
    return-void
.end method
