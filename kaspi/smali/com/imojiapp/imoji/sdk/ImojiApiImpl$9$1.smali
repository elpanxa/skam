.class Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9$1;
.super Ljava/lang/Object;
.source "ImojiApiImpl.java"

# interfaces
.implements Lcom/imojiapp/imoji/sdk/ImojiUploadTask$OnImojiUploadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;


# direct methods
.method constructor <init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9$1;->this$1:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImojiUploadComplete(Lcom/imojiapp/imoji/sdk/Imoji;)V
    .locals 2

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9$1;->this$1:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;

    iget-object v0, v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;->val$cb:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-interface {v0, p1}, Lcom/imojiapp/imoji/sdk/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9$1;->this$1:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;

    iget-object v0, v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;->val$cb:Lcom/imojiapp/imoji/sdk/Callback;

    const-string v1, "IMOJI_CREATE_FAILED"

    invoke-interface {v0, v1}, Lcom/imojiapp/imoji/sdk/Callback;->onFailure(Ljava/lang/Object;)V

    goto :goto_0
.end method
