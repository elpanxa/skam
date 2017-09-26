.class Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$3;
.super Ljava/lang/Object;
.source "ImojiApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

.field final synthetic val$command:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;


# direct methods
.method constructor <init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$3;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    iput-object p2, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$3;->val$command:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 443
    .line 444
    const-class v1, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$3;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    iget-object v0, v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mPendingCommands:Ljava/util/Queue;

    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$3;->val$command:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;

    invoke-interface {v0, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 446
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$3;->val$command:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;

    iget-object v0, v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;->mErrCallback:Lcom/imojiapp/imoji/sdk/Callback;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$3;->val$command:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;

    iget-object v0, v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;->mErrCallback:Lcom/imojiapp/imoji/sdk/Callback;

    const-string v1, "TIMEOUT_FAILURE"

    invoke-interface {v0, v1}, Lcom/imojiapp/imoji/sdk/Callback;->onFailure(Ljava/lang/Object;)V

    .line 454
    :cond_0
    return-void

    .line 446
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
