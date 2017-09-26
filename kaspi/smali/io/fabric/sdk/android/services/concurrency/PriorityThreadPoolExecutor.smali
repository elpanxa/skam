.class public Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "PriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor$PriorityThreadFactory;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:J = 0x1L

.field private static final MAXIMUM_POOL_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->CPU_COUNT:I

    .line 20
    sget v0, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->CORE_POOL_SIZE:I

    .line 21
    sget v0, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Runnable;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/Dependency;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/PriorityProvider;",
            ">(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue",
            "<TT;>;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 33
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->prestartAllCoreThreads()I

    .line 34
    return-void
.end method

.method public static create()Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;
    .locals 2

    .prologue
    .line 64
    sget v0, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->CORE_POOL_SIZE:I

    sget v1, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->MAXIMUM_POOL_SIZE:I

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->create(II)Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p0}, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->create(II)Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static create(II)Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Runnable;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/Dependency;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/PriorityProvider;",
            ">(II)",
            "Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v1, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;

    invoke-direct {v7}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;-><init>()V

    new-instance v8, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor$PriorityThreadFactory;

    const/16 v0, 0xa

    invoke-direct {v8, v0}, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor$PriorityThreadFactory;-><init>(I)V

    move v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v8}, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 89
    move-object v0, p1

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Task;

    .line 90
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/concurrency/Task;->setFinished(Z)V

    .line 91
    invoke-interface {v0, p2}, Lio/fabric/sdk/android/services/concurrency/Task;->setError(Ljava/lang/Throwable;)V

    .line 93
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->getQueue()Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->recycleBlockedQueue()V

    .line 95
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Lio/fabric/sdk/android/services/concurrency/PriorityTask;->isProperDelegate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getQueue()Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;

    return-object v0
.end method

.method public bridge synthetic getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->getQueue()Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/PriorityFutureTask;

    invoke-direct {v0, p1, p2}, Lio/fabric/sdk/android/services/concurrency/PriorityFutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/PriorityFutureTask;

    invoke-direct {v0, p1}, Lio/fabric/sdk/android/services/concurrency/PriorityFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
