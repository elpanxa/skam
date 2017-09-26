.class Lcom/imojiapp/imoji/sdk/ImojiApiImpl$3;
.super Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;
.source "ImojiApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->search(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

.field final synthetic val$cb:Lcom/imojiapp/imoji/sdk/Callback;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$3;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    iput-object p4, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$3;->val$query:Ljava/lang/String;

    iput-object p5, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$3;->val$cb:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-direct {p0, p2, p3}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;-><init>(Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$3;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$3;->val$query:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x3c

    iget-object v4, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$3;->val$cb:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->search(Ljava/lang/String;IILcom/imojiapp/imoji/sdk/Callback;)V

    .line 66
    return-void
.end method
