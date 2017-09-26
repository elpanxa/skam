.class Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyUpstreamDiscarded(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

.field final synthetic val$mediaEndTimeUs:J

.field final synthetic val$mediaStartTimeUs:J


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JJ)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->val$mediaStartTimeUs:J

    iput-wide p4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->val$mediaEndTimeUs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    # getter for: Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->access$100(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    # getter for: Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventSourceId:I
    invoke-static {v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->access$000(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->val$mediaStartTimeUs:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->usToMs(J)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->val$mediaEndTimeUs:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->usToMs(J)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;->onUpstreamDiscarded(III)V

    .line 632
    return-void
.end method
