.class public Lbolts/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/Task$TaskCompletionSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private cancelled:Z

.field private complete:Z

.field private continuations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbolts/Continuation",
            "<TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Exception;

.field private final lock:Ljava/lang/Object;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lbolts/BoltsExecutors;->background()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 42
    invoke-static {}, Lbolts/BoltsExecutors;->immediate()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 47
    invoke-static {}, Lbolts/AndroidExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbolts/Task;->continuations:Ljava/util/List;

    .line 58
    return-void
.end method

.method static synthetic access$100(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lbolts/Task;->completeImmediately(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V

    return-void
.end method

.method static synthetic access$200(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lbolts/Task;->completeAfterTask(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V

    return-void
.end method

.method static synthetic access$300(Lbolts/Task;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lbolts/Task;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lbolts/Task;->complete:Z

    return v0
.end method

.method static synthetic access$402(Lbolts/Task;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lbolts/Task;->complete:Z

    return p1
.end method

.method static synthetic access$502(Lbolts/Task;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lbolts/Task;->cancelled:Z

    return p1
.end method

.method static synthetic access$600(Lbolts/Task;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lbolts/Task;->runContinuations()V

    return-void
.end method

.method static synthetic access$702(Lbolts/Task;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lbolts/Task;->result:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lbolts/Task;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lbolts/Task;->error:Ljava/lang/Exception;

    return-object p1
.end method

.method public static call(Ljava/util/concurrent/Callable;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 267
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static call(Ljava/util/concurrent/Callable;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 274
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0, p1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 240
    new-instance v1, Lbolts/Task$3;

    invoke-direct {v1, p2, v0, p0}, Lbolts/Task$3;-><init>(Lbolts/CancellationToken;Lbolts/Task$TaskCompletionSource;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 257
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 214
    sget-object v0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static callInBackground(Ljava/util/concurrent/Callable;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 221
    sget-object v0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, v0, p1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static cancelled()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    .line 152
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static completeAfterTask(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TTContinuationResult;>.TaskCompletionSource;",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Lbolts/Task",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationToken;",
            ")V"
        }
    .end annotation

    .prologue
    .line 787
    new-instance v0, Lbolts/Task$14;

    invoke-direct {v0, p4, p0, p1, p2}, Lbolts/Task$14;-><init>(Lbolts/CancellationToken;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 826
    return-void
.end method

.method private static completeImmediately(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TTContinuationResult;>.TaskCompletionSource;",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Lbolts/Task",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationToken;",
            ")V"
        }
    .end annotation

    .prologue
    .line 746
    new-instance v0, Lbolts/Task$13;

    invoke-direct {v0, p4, p0, p1, p2}, Lbolts/Task$13;-><init>(Lbolts/CancellationToken;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 764
    return-void
.end method

.method public static create()Lbolts/Task$TaskCompletionSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/Task",
            "<TTResult;>.TaskCompletionSource;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lbolts/Task;

    invoke-direct {v0}, Lbolts/Task;-><init>()V

    .line 68
    new-instance v1, Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lbolts/Task$TaskCompletionSource;-><init>(Lbolts/Task;Lbolts/Task$1;)V

    return-object v1
.end method

.method public static delay(J)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Lbolts/BoltsExecutors;->scheduled()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lbolts/Task;->delay(JLjava/util/concurrent/ScheduledExecutorService;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static delay(JLjava/util/concurrent/ScheduledExecutorService;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 169
    :cond_0
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 170
    new-instance v1, Lbolts/Task$1;

    invoke-direct {v1, v0}, Lbolts/Task$1;-><init>(Lbolts/Task$TaskCompletionSource;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v1, p0, p1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 176
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public static forError(Ljava/lang/Exception;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 143
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static forResult(Ljava/lang/Object;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p0}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private runContinuations()V
    .locals 3

    .prologue
    .line 829
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 830
    :try_start_0
    iget-object v0, p0, Lbolts/Task;->continuations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Continuation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    :try_start_1
    invoke-interface {v0, p0}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 833
    :catch_0
    move-exception v0

    .line 834
    :try_start_2
    throw v0

    .line 840
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 835
    :catch_1
    move-exception v0

    .line 836
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 839
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbolts/Task;->continuations:Ljava/util/List;

    .line 840
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 841
    return-void
.end method

.method public static whenAll(Ljava/util/Collection;)Lbolts/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lbolts/Task",
            "<*>;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 410
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 456
    :goto_0
    return-object v0

    .line 413
    :cond_0
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v5

    .line 414
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 415
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 416
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 417
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 419
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lbolts/Task;

    .line 422
    new-instance v0, Lbolts/Task$7;

    invoke-direct/range {v0 .. v5}, Lbolts/Task$7;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lbolts/Task$TaskCompletionSource;)V

    invoke-virtual {v6, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    goto :goto_1

    .line 456
    :cond_1
    invoke-virtual {v5}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public static whenAllResult(Ljava/util/Collection;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lbolts/Task",
            "<TTResult;>;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TTResult;>;>;"
        }
    .end annotation

    .prologue
    .line 372
    invoke-static {p0}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lbolts/Task$6;

    invoke-direct {v1, p0}, Lbolts/Task$6;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static whenAny(Ljava/util/Collection;)Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lbolts/Task",
            "<*>;>;)",
            "Lbolts/Task",
            "<",
            "Lbolts/Task",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 325
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    .line 329
    :cond_0
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v1

    .line 330
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 332
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .line 333
    new-instance v4, Lbolts/Task$5;

    invoke-direct {v4, v2, v1}, Lbolts/Task$5;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lbolts/Task$TaskCompletionSource;)V

    invoke-virtual {v0, v4}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    goto :goto_1

    .line 343
    :cond_1
    invoke-virtual {v1}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public static whenAnyResult(Ljava/util/Collection;)Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lbolts/Task",
            "<TTResult;>;>;)",
            "Lbolts/Task",
            "<",
            "Lbolts/Task",
            "<TTResult;>;>;"
        }
    .end annotation

    .prologue
    .line 290
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    .line 294
    :cond_0
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v1

    .line 295
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 297
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .line 298
    new-instance v4, Lbolts/Task$4;

    invoke-direct {v4, v2, v1}, Lbolts/Task$4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lbolts/Task$TaskCompletionSource;)V

    invoke-virtual {v0, v4}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    goto :goto_1

    .line 308
    :cond_1
    invoke-virtual {v1}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public cast()Lbolts/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOut:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/Task",
            "<TTOut;>;"
        }
    .end annotation

    .prologue
    .line 185
    .line 186
    return-object p0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lbolts/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lbolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lbolts/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2, v0, p3}, Lbolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lbolts/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lbolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lbolts/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    new-instance v6, Lbolts/Capture;

    invoke-direct {v6}, Lbolts/Capture;-><init>()V

    .line 495
    new-instance v0, Lbolts/Task$8;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lbolts/Task$8;-><init>(Lbolts/Task;Lbolts/CancellationToken;Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/Capture;)V

    invoke-virtual {v6, v0}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 509
    invoke-virtual {p0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    invoke-virtual {v6}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Continuation;

    invoke-virtual {v1, v0, p3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lbolts/Continuation;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 556
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lbolts/Continuation;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 565
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 519
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 531
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v2

    .line 532
    iget-object v6, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 533
    :try_start_0
    invoke-virtual {p0}, Lbolts/Task;->isCompleted()Z

    move-result v7

    .line 534
    if-nez v7, :cond_0

    .line 535
    iget-object v8, p0, Lbolts/Task;->continuations:Ljava/util/List;

    new-instance v0, Lbolts/Task$9;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbolts/Task$9;-><init>(Lbolts/Task;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    if-eqz v7, :cond_1

    .line 545
    invoke-static {v2, p1, p0, p2, p3}, Lbolts/Task;->completeImmediately(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V

    .line 547
    :cond_1
    invoke-virtual {v2}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0

    .line 543
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public continueWithTask(Lbolts/Continuation;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 610
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lbolts/Continuation;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 619
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v2

    .line 586
    iget-object v6, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 587
    :try_start_0
    invoke-virtual {p0}, Lbolts/Task;->isCompleted()Z

    move-result v7

    .line 588
    if-nez v7, :cond_0

    .line 589
    iget-object v8, p0, Lbolts/Task;->continuations:Ljava/util/List;

    new-instance v0, Lbolts/Task$10;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbolts/Task$10;-><init>(Lbolts/Task;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    if-eqz v7, :cond_1

    .line 599
    invoke-static {v2, p1, p0, p2, p3}, Lbolts/Task;->completeAfterTask(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V

    .line 601
    :cond_1
    invoke-virtual {v2}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0

    .line 597
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getError()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lbolts/Task;->error:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lbolts/Task;->result:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-boolean v0, p0, Lbolts/Task;->cancelled:Z

    monitor-exit v1

    return v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-boolean v0, p0, Lbolts/Task;->complete:Z

    monitor-exit v1

    return v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFaulted()Z
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lbolts/Task;->error:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public makeVoid()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lbolts/Task$2;

    invoke-direct {v0, p0}, Lbolts/Task$2;-><init>(Lbolts/Task;)V

    invoke-virtual {p0, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lbolts/Continuation;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 662
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lbolts/Continuation;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 671
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 638
    new-instance v0, Lbolts/Task$11;

    invoke-direct {v0, p0, p3, p1}, Lbolts/Task$11;-><init>(Lbolts/Task;Lbolts/CancellationToken;Lbolts/Continuation;)V

    invoke-virtual {p0, v0, p2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lbolts/Continuation;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 714
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lbolts/Continuation;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 724
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 690
    new-instance v0, Lbolts/Task$12;

    invoke-direct {v0, p0, p3, p1}, Lbolts/Task$12;-><init>(Lbolts/Task;Lbolts/CancellationToken;Lbolts/Continuation;)V

    invoke-virtual {p0, v0, p2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public waitForCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lbolts/Task;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 125
    :cond_0
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
