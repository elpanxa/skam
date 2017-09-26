.class public Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "RetryThreadPoolExecutor.java"


# instance fields
.field private final backoff:Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

.field private final retryPolicy:Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;


# direct methods
.method public constructor <init>(ILio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;Lio/fabric/sdk/android/services/concurrency/internal/Backoff;)V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;Lio/fabric/sdk/android/services/concurrency/internal/Backoff;)V

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;Lio/fabric/sdk/android/services/concurrency/internal/Backoff;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 49
    if-nez p3, :cond_0

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "retry policy must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    if-nez p4, :cond_1

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "backoff must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    iput-object p3, p0, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->retryPolicy:Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;

    .line 58
    iput-object p4, p0, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->backoff:Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

    .line 59
    return-void
.end method

.method private scheduleWithRetryInternal(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 106
    :cond_0
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/internal/RetryState;

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->backoff:Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

    iget-object v2, p0, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->retryPolicy:Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/concurrency/internal/RetryState;-><init>(Lio/fabric/sdk/android/services/concurrency/internal/Backoff;Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;)V

    .line 107
    new-instance v1, Lio/fabric/sdk/android/services/concurrency/internal/RetryFuture;

    invoke-direct {v1, p1, v0, p0}, Lio/fabric/sdk/android/services/concurrency/internal/RetryFuture;-><init>(Ljava/util/concurrent/Callable;Lio/fabric/sdk/android/services/concurrency/internal/RetryState;Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;)V

    .line 109
    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-object v1
.end method


# virtual methods
.method public getBackoff()Lio/fabric/sdk/android/services/concurrency/internal/Backoff;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->backoff:Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

    return-object v0
.end method

.method public getRetryPolicy()Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->retryPolicy:Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;

    return-object v0
.end method

.method public scheduleWithRetry(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->scheduleWithRetryInternal(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithRetry(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->scheduleWithRetryInternal(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithRetry(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->scheduleWithRetryInternal(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
