.class Lcom/imojiapp/imoji/sdk/ImojiApiImpl$2;
.super Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;
.source "ImojiApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->getFeatured(Lcom/imojiapp/imoji/sdk/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

.field final synthetic val$cb:Lcom/imojiapp/imoji/sdk/Callback;


# direct methods
.method constructor <init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$2;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    iput-object p4, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$2;->val$cb:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-direct {p0, p2, p3}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;-><init>(Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$2;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    const/4 v1, 0x0

    const/16 v2, 0x3c

    iget-object v3, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$2;->val$cb:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->getFeatured(IILcom/imojiapp/imoji/sdk/Callback;)V

    .line 55
    return-void
.end method
