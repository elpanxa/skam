.class Lcom/imojiapp/imoji/sdk/ImojiApiImpl$11;
.super Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;
.source "ImojiApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->getImojisById(Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

.field final synthetic val$cb:Lcom/imojiapp/imoji/sdk/Callback;

.field final synthetic val$imojiIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$11;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    iput-object p4, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$11;->val$imojiIds:Ljava/util/List;

    iput-object p5, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$11;->val$cb:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-direct {p0, p2, p3}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;-><init>(Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$11;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    # getter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mINetworking:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;
    invoke-static {v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->access$100(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;)Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$11;->val$imojiIds:Ljava/util/List;

    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$11;->val$cb:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;->getImojisById(Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V

    .line 223
    return-void
.end method
