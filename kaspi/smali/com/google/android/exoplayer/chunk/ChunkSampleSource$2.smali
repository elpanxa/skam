.class Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCompleted(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

.field final synthetic val$bytesLoaded:J

.field final synthetic val$elapsedRealtimeMs:J

.field final synthetic val$format:Lcom/google/android/exoplayer/chunk/Format;

.field final synthetic val$loadDurationMs:J

.field final synthetic val$mediaEndTimeUs:J

.field final synthetic val$mediaStartTimeUs:J

.field final synthetic val$trigger:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .locals 1

    .prologue
    .line 593
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$bytesLoaded:J

    iput p4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$type:I

    iput p5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$trigger:I

    iput-object p6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$format:Lcom/google/android/exoplayer/chunk/Format;

    iput-wide p7, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$mediaStartTimeUs:J

    iput-wide p9, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$mediaEndTimeUs:J

    iput-wide p11, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$elapsedRealtimeMs:J

    iput-wide p13, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$loadDurationMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    # getter for: Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->access$100(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    # getter for: Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventSourceId:I
    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->access$000(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)I

    move-result v2

    iget-wide v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$bytesLoaded:J

    iget v5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$type:I

    iget v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$trigger:I

    iget-object v7, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-wide v8, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$mediaStartTimeUs:J

    invoke-virtual {v0, v8, v9}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->usToMs(J)I

    move-result v8

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-wide v10, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$mediaEndTimeUs:J

    invoke-virtual {v0, v10, v11}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->usToMs(J)I

    move-result v9

    iget-wide v10, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$elapsedRealtimeMs:J

    iget-wide v12, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->val$loadDurationMs:J

    invoke-interface/range {v1 .. v13}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;->onLoadCompleted(IJIILcom/google/android/exoplayer/chunk/Format;IIJJ)V

    .line 598
    return-void
.end method
