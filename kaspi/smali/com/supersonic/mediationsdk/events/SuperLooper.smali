.class Lcom/supersonic/mediationsdk/events/SuperLooper;
.super Ljava/lang/Thread;
.source "SuperLooper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/supersonic/mediationsdk/events/SuperLooper;


# instance fields
.field private mSdkThread:Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    new-instance v0, Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;-><init>(Lcom/supersonic/mediationsdk/events/SuperLooper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mSdkThread:Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;

    .line 21
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mSdkThread:Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;->start()V

    .line 22
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mSdkThread:Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;->prepareHandler()V

    .line 23
    return-void
.end method

.method public static declared-synchronized getLooper()Lcom/supersonic/mediationsdk/events/SuperLooper;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/supersonic/mediationsdk/events/SuperLooper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mInstance:Lcom/supersonic/mediationsdk/events/SuperLooper;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/supersonic/mediationsdk/events/SuperLooper;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/events/SuperLooper;-><init>()V

    sput-object v0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mInstance:Lcom/supersonic/mediationsdk/events/SuperLooper;

    .line 31
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mInstance:Lcom/supersonic/mediationsdk/events/SuperLooper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized post(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mSdkThread:Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 40
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mSdkThread:Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
