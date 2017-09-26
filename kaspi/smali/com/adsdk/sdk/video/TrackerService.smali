.class public Lcom/adsdk/sdk/video/TrackerService;
.super Ljava/lang/Object;
.source "TrackerService.java"


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static sRetryTrackEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/adsdk/sdk/video/TrackEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static sStopped:Z

.field private static sThread:Ljava/lang/Thread;

.field private static sThreadRunning:Z

.field private static sTrackEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/adsdk/sdk/video/TrackEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0

    .prologue
    .line 31
    sput-boolean p0, Lcom/adsdk/sdk/video/TrackerService;->sStopped:Z

    return-void
.end method

.method static synthetic access$1()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sStopped:Z

    return v0
.end method

.method static synthetic access$2()Z
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->hasMoreUpdates()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3()Lcom/adsdk/sdk/video/TrackEvent;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->getNextUpdate()Lcom/adsdk/sdk/video/TrackEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$5()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7(Z)V
    .locals 0

    .prologue
    .line 23
    sput-boolean p0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    return-void
.end method

.method static synthetic access$8(Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lcom/adsdk/sdk/video/TrackerService;->sThread:Ljava/lang/Thread;

    return-void
.end method

.method private static getNextUpdate()Lcom/adsdk/sdk/video/TrackEvent;
    .locals 2

    .prologue
    .line 80
    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/TrackEvent;

    .line 82
    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static hasMoreUpdates()Z
    .locals 4

    .prologue
    .line 72
    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 74
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "More updates:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 75
    monitor-exit v1

    return v0

    .line 73
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 163
    const-string v0, "release"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "release stopping Tracking events thread"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sStopped:Z

    .line 168
    :cond_0
    return-void
.end method

.method public static requestRetry(Lcom/adsdk/sdk/video/TrackEvent;)V
    .locals 3

    .prologue
    .line 60
    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget v0, p0, Lcom/adsdk/sdk/video/TrackEvent;->retries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adsdk/sdk/video/TrackEvent;->retries:I

    .line 63
    iget v0, p0, Lcom/adsdk/sdk/video/TrackEvent;->retries:I

    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    .line 64
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Added retry track event:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 60
    monitor-exit v1

    .line 69
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static requestTrack(Lcom/adsdk/sdk/video/TrackEvent;)V
    .locals 3

    .prologue
    .line 48
    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Added track event:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    sget-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    if-nez v0, :cond_1

    .line 55
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->startTracking()V

    .line 57
    :cond_1
    return-void

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static requestTrack([Lcom/adsdk/sdk/video/TrackEvent;)V
    .locals 5

    .prologue
    .line 34
    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Added track event:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->startTracking()V

    .line 45
    :cond_0
    return-void

    .line 35
    :cond_1
    :try_start_1
    aget-object v3, p0, v0

    .line 36
    sget-object v4, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 37
    sget-object v4, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static startTracking()V
    .locals 3

    .prologue
    .line 88
    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/adsdk/sdk/video/TrackerService$1;

    invoke-direct {v2}, Lcom/adsdk/sdk/video/TrackerService$1;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/adsdk/sdk/video/TrackerService;->sThread:Ljava/lang/Thread;

    .line 148
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sThread:Ljava/lang/Thread;

    new-instance v2, Lcom/adsdk/sdk/video/TrackerService$2;

    invoke-direct {v2}, Lcom/adsdk/sdk/video/TrackerService$2;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 157
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    :cond_0
    monitor-exit v1

    .line 160
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
