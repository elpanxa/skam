.class Lcom/imojiapp/imoji/sdk/ImojiApiImpl$4;
.super Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;
.source "ImojiApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->search(Ljava/lang/String;IILcom/imojiapp/imoji/sdk/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

.field final synthetic val$cb:Lcom/imojiapp/imoji/sdk/Callback;

.field final synthetic val$numResults:I

.field final synthetic val$offset:I

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Ljava/lang/String;IILcom/imojiapp/imoji/sdk/Callback;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$4;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    iput-object p4, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$4;->val$query:Ljava/lang/String;

    iput p5, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$4;->val$offset:I

    iput p6, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$4;->val$numResults:I

    iput-object p7, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$4;->val$cb:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-direct {p0, p2, p3}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;-><init>(Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$4;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    # getter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mINetworking:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;
    invoke-static {v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->access$100(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;)Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$4;->val$query:Ljava/lang/String;

    iget v2, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$4;->val$offset:I

    iget v3, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$4;->val$numResults:I

    iget-object v4, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$4;->val$cb:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;->searchImojis(Ljava/lang/String;IILcom/imojiapp/imoji/sdk/Callback;)V

    .line 77
    return-void
.end method
