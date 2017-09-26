.class Lcom/google/android/exoplayer/upstream/cache/SimpleCache$1;
.super Ljava/lang/Thread;
.source "SimpleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer/upstream/cache/CacheEvictor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/upstream/cache/SimpleCache;

.field final synthetic val$conditionVariable:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/upstream/cache/SimpleCache;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/cache/SimpleCache$1;->this$0:Lcom/google/android/exoplayer/upstream/cache/SimpleCache;

    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/cache/SimpleCache$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/cache/SimpleCache$1;->this$0:Lcom/google/android/exoplayer/upstream/cache/SimpleCache;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/SimpleCache$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/SimpleCache$1;->this$0:Lcom/google/android/exoplayer/upstream/cache/SimpleCache;

    # invokes: Lcom/google/android/exoplayer/upstream/cache/SimpleCache;->initialize()V
    invoke-static {v0}, Lcom/google/android/exoplayer/upstream/cache/SimpleCache;->access$000(Lcom/google/android/exoplayer/upstream/cache/SimpleCache;)V

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
