.class Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;
.super Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;
.source "ImojiApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->createImoji(Landroid/graphics/Bitmap;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cb:Lcom/imojiapp/imoji/sdk/Callback;

.field final synthetic val$tags:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Landroid/graphics/Bitmap;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    iput-object p4, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;->val$tags:Ljava/util/List;

    iput-object p6, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;->val$cb:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-direct {p0, p2, p3}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;-><init>(Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 147
    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    # getter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mINetworking:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;
    invoke-static {v1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->access$100(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;)Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;->val$tags:Ljava/util/List;

    new-instance v4, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9$1;

    invoke-direct {v4, p0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9$1;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;-><init>(Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;Landroid/graphics/Bitmap;Ljava/util/List;Lcom/imojiapp/imoji/sdk/ImojiUploadTask$OnImojiUploadCompleteListener;)V

    .line 158
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 159
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
