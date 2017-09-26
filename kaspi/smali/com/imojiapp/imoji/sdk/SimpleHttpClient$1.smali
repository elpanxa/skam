.class Lcom/imojiapp/imoji/sdk/SimpleHttpClient$1;
.super Ljava/lang/Object;
.source "SimpleHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/SimpleHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;


# direct methods
.method constructor <init>(Lcom/imojiapp/imoji/sdk/SimpleHttpClient;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$1;->this$0:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$1;->this$0:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    # getter for: Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->access$000(Lcom/imojiapp/imoji/sdk/SimpleHttpClient;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 70
    return-void
.end method
