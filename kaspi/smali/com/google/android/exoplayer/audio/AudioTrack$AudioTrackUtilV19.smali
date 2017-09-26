.class Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;
.super Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;
.source "AudioTrack.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/audio/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioTrackUtilV19"
.end annotation


# instance fields
.field private final audioTimestamp:Landroid/media/AudioTimestamp;

.field private lastRawTimestampFramePosition:J

.field private lastTimestampFramePosition:J

.field private rawTimestampFramePositionWrapCount:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack$1;)V

    .line 918
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    .line 919
    return-void
.end method


# virtual methods
.method public getTimestampFramePosition()J
    .locals 2

    .prologue
    .line 951
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastTimestampFramePosition:J

    return-wide v0
.end method

.method public getTimestampNanoTime()J
    .locals 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    return-wide v0
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 923
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 924
    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->rawTimestampFramePositionWrapCount:J

    .line 925
    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastRawTimestampFramePosition:J

    .line 926
    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastTimestampFramePosition:J

    .line 927
    return-void
.end method

.method public updateTimestamp()Z
    .locals 8

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    .line 932
    if-eqz v0, :cond_1

    .line 933
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v2, v1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 934
    iget-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastRawTimestampFramePosition:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 936
    iget-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->rawTimestampFramePositionWrapCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->rawTimestampFramePositionWrapCount:J

    .line 938
    :cond_0
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastRawTimestampFramePosition:J

    .line 939
    iget-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->rawTimestampFramePositionWrapCount:J

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastTimestampFramePosition:J

    .line 941
    :cond_1
    return v0
.end method
