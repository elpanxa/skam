.class Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/audio/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioTrackUtil"
.end annotation


# instance fields
.field protected audioTrack:Landroid/media/AudioTrack;

.field private isPassthrough:Z

.field private lastRawPlaybackHeadPosition:J

.field private passthroughWorkaroundPauseOffset:J

.field private rawPlaybackHeadWrapCount:J

.field private sampleRate:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/audio/AudioTrack$1;)V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackHeadPosition()J
    .locals 6

    .prologue
    .line 835
    const-wide v0, 0xffffffffL

    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    .line 836
    sget v2, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v3, 0x16

    if-gt v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->isPassthrough:Z

    if-eqz v2, :cond_1

    .line 842
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 844
    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    .line 849
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v0, v2

    .line 851
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    .line 853
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    .line 855
    :cond_2
    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    .line 856
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    .line 845
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 847
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    goto :goto_0
.end method

.method public getPlaybackHeadPositionUs()J
    .locals 4

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimestampFramePosition()J
    .locals 1

    .prologue
    .line 903
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTimestampNanoTime()J
    .locals 1

    .prologue
    .line 887
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public overrideHasPendingData()Z
    .locals 2

    .prologue
    .line 820
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->isPassthrough:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 801
    iput-object p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    .line 802
    iput-boolean p2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->isPassthrough:Z

    .line 803
    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    .line 804
    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    .line 805
    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    .line 806
    if-eqz p1, :cond_0

    .line 807
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->sampleRate:I

    .line 809
    :cond_0
    return-void
.end method

.method public updateTimestamp()Z
    .locals 1

    .prologue
    .line 873
    const/4 v0, 0x0

    return v0
.end method
