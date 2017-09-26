.class final Lbolts/Task$14;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->completeAfterTask(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$ct:Lbolts/CancellationToken;

.field final synthetic val$task:Lbolts/Task;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/CancellationToken;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;)V
    .locals 0

    .prologue
    .line 787
    iput-object p1, p0, Lbolts/Task$14;->val$ct:Lbolts/CancellationToken;

    iput-object p2, p0, Lbolts/Task$14;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$14;->val$continuation:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$14;->val$task:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lbolts/Task$14;->val$ct:Lbolts/CancellationToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbolts/Task$14;->val$ct:Lbolts/CancellationToken;

    invoke-virtual {v0}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lbolts/Task$14;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    .line 824
    :goto_0
    return-void

    .line 796
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbolts/Task$14;->val$continuation:Lbolts/Continuation;

    iget-object v1, p0, Lbolts/Task$14;->val$task:Lbolts/Task;

    invoke-interface {v0, v1}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .line 797
    if-nez v0, :cond_1

    .line 798
    iget-object v0, p0, Lbolts/Task$14;->val$tcs:Lbolts/Task$TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 819
    :catch_0
    move-exception v0

    .line 820
    iget-object v0, p0, Lbolts/Task$14;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    goto :goto_0

    .line 800
    :cond_1
    :try_start_1
    new-instance v1, Lbolts/Task$14$1;

    invoke-direct {v1, p0}, Lbolts/Task$14$1;-><init>(Lbolts/Task$14;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 821
    :catch_1
    move-exception v0

    .line 822
    iget-object v1, p0, Lbolts/Task$14;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
