.class public final Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;
.super Ljava/lang/Object;
.source "SmoothFrameReleaseTimeHelper.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final CHOREOGRAPHER_SAMPLE_DELAY_MILLIS:J = 0x1f4L

.field private static final MAX_ALLOWED_DRIFT_NS:J = 0x1312d00L

.field private static final MIN_FRAMES_FOR_ADJUSTMENT:I = 0x6

.field private static final VSYNC_OFFSET_PERCENTAGE:J = 0x50L


# instance fields
.field private adjustedLastFrameTimeNs:J

.field private choreographer:Landroid/view/Choreographer;

.field private frameCount:I

.field private haveSync:Z

.field private lastUnadjustedFrameTimeUs:J

.field private pendingAdjustedFrameTimeNs:J

.field private sampledVsyncTimeNs:J

.field private syncFrameTimeNs:J

.field private syncReleaseTimeNs:J

.field private final usePrimaryDisplayVsync:Z

.field private final vsyncDurationNs:J

.field private final vsyncOffsetNs:J


# direct methods
.method public constructor <init>(FZ)V
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p2, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->usePrimaryDisplayVsync:Z

    .line 60
    if-eqz p2, :cond_0

    .line 61
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    float-to-double v2, p1

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->vsyncDurationNs:J

    .line 62
    iget-wide v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->vsyncDurationNs:J

    const-wide/16 v2, 0x50

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->vsyncOffsetNs:J

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    iput-wide v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->vsyncDurationNs:J

    .line 65
    iput-wide v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->vsyncOffsetNs:J

    goto :goto_0
.end method

.method private static closestVsync(JJJ)J
    .locals 10

    .prologue
    .line 164
    sub-long v0, p0, p2

    div-long/2addr v0, p4

    .line 165
    mul-long/2addr v0, p4

    add-long/2addr v0, p2

    .line 168
    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    .line 169
    sub-long v2, v0, p4

    .line 175
    :goto_0
    sub-long v4, v0, p0

    .line 176
    sub-long v6, p0, v2

    .line 177
    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    :goto_1
    return-wide v0

    .line 173
    :cond_0
    add-long v2, v0, p4

    move-wide v8, v2

    move-wide v2, v0

    move-wide v0, v8

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 177
    goto :goto_1
.end method

.method private isDriftTooLarge(JJ)Z
    .locals 5

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->syncFrameTimeNs:J

    sub-long v0, p1, v0

    .line 159
    iget-wide v2, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->syncReleaseTimeNs:J

    sub-long v2, p3, v2

    .line 160
    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1312d00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustReleaseTime(JJ)J
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 95
    const-wide/16 v0, 0x3e8

    mul-long v4, p1, v0

    .line 101
    iget-boolean v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->haveSync:Z

    if-eqz v0, :cond_4

    .line 103
    iget-wide v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->lastUnadjustedFrameTimeUs:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 104
    iget v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->frameCount:I

    .line 105
    iget-wide v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    .line 107
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->frameCount:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_3

    .line 112
    iget-wide v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->syncFrameTimeNs:J

    sub-long v0, v4, v0

    iget v2, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->frameCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 114
    iget-wide v2, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    add-long/2addr v2, v0

    .line 116
    invoke-direct {p0, v2, v3, p3, p4}, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iput-boolean v8, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->haveSync:Z

    move-wide v0, p3

    move-wide v2, v4

    .line 132
    :goto_0
    iget-boolean v6, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->haveSync:Z

    if-nez v6, :cond_1

    .line 133
    iput-wide v4, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->syncFrameTimeNs:J

    .line 134
    iput-wide p3, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->syncReleaseTimeNs:J

    .line 135
    iput v8, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->frameCount:I

    .line 136
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->haveSync:Z

    .line 137
    invoke-virtual {p0}, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->onSynced()V

    .line 140
    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->lastUnadjustedFrameTimeUs:J

    .line 141
    iput-wide v2, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    .line 143
    iget-wide v2, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->sampledVsyncTimeNs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 150
    :goto_1
    return-wide v0

    .line 120
    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->syncReleaseTimeNs:J

    add-long/2addr v0, v2

    iget-wide v6, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->syncFrameTimeNs:J

    sub-long/2addr v0, v6

    goto :goto_0

    .line 125
    :cond_3
    invoke-direct {p0, v4, v5, p3, p4}, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    iput-boolean v8, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->haveSync:Z

    :cond_4
    move-wide v0, p3

    move-wide v2, v4

    goto :goto_0

    .line 148
    :cond_5
    iget-wide v2, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->sampledVsyncTimeNs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->vsyncDurationNs:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->closestVsync(JJJ)J

    move-result-wide v0

    .line 150
    iget-wide v2, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->vsyncOffsetNs:J

    sub-long/2addr v0, v2

    goto :goto_1
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->usePrimaryDisplayVsync:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->choreographer:Landroid/view/Choreographer;

    .line 85
    :cond_0
    return-void
.end method

.method public doFrame(J)V
    .locals 5

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->sampledVsyncTimeNs:J

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->choreographer:Landroid/view/Choreographer;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 91
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->haveSync:Z

    .line 72
    iget-boolean v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->usePrimaryDisplayVsync:Z

    if-eqz v0, :cond_0

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->sampledVsyncTimeNs:J

    .line 74
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->choreographer:Landroid/view/Choreographer;

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer/SmoothFrameReleaseTimeHelper;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 77
    :cond_0
    return-void
.end method

.method protected onSynced()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method
