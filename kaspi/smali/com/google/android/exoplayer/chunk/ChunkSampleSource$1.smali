.class Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadStarted(JIILcom/google/android/exoplayer/chunk/Format;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

.field final synthetic val$format:Lcom/google/android/exoplayer/chunk/Format;

.field final synthetic val$length:J

.field final synthetic val$mediaEndTimeUs:J

.field final synthetic val$mediaStartTimeUs:J

.field final synthetic val$trigger:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .locals 1

    .prologue
    .line 579
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->val$length:J

    iput p4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->val$type:I

    iput p5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->val$trigger:I

    iput-object p6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->val$format:Lcom/google/android/exoplayer/chunk/Format;

    iput-wide p7, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->val$mediaStartTimeUs:J

    iput-wide p9, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->val$mediaEndTimeUs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    # getter for: Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->access$100(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    # getter for: Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventSourceId:I
    invoke-static {v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->access$000(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)I

    move-result v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->val$length:J

    iget v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->val$type:I

    iget v5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->val$trigger:I

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->val$format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v7, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-wide v8, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->val$mediaStartTimeUs:J

    invoke-virtual {v7, v8, v9}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->usToMs(J)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-wide v10, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->val$mediaEndTimeUs:J

    invoke-virtual {v8, v10, v11}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->usToMs(J)I

    move-result v8

    invoke-interface/range {v0 .. v8}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;->onLoadStarted(IJIILcom/google/android/exoplayer/chunk/Format;II)V

    .line 584
    return-void
.end method
