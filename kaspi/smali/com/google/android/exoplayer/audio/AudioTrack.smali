.class public final Lcom/google/android/exoplayer/audio/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;,
        Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;,
        Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;,
        Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;,
        Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
    }
.end annotation


# static fields
.field private static final BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MIN_TIMESTAMP_SAMPLE_INTERVAL_US:I = 0x7a120

.field public static final RESULT_BUFFER_CONSUMED:I = 0x2

.field public static final RESULT_POSITION_DISCONTINUITY:I = 0x1

.field public static final SESSION_ID_NOT_SET:I = 0x0

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioTrack"

.field private static final UNKNOWN_AC3_BITRATE:I

.field public static enablePreV21AudioSessionWorkaround:Z

.field public static failOnSpuriousAudioTimestamp:Z


# instance fields
.field private ac3Bitrate:I

.field private audioTimestampSet:Z

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

.field private bufferSize:I

.field private channelConfig:I

.field private encoding:I

.field private frameSize:I

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private isAc3:Z

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private lastPlayheadSampleTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private latencyUs:J

.field private minBufferSize:I

.field private nextPlayheadOffsetIndex:I

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private resumeSystemTimeUs:J

.field private sampleRate:I

.field private smoothedPlayheadOffsetUs:J

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private submittedBytes:J

.field private temporaryBuffer:[B

.field private temporaryBufferOffset:I

.field private temporaryBufferSize:I

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    sput-boolean v0, Lcom/google/android/exoplayer/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    .line 163
    sput-boolean v0, Lcom/google/android/exoplayer/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 206
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 208
    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 215
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;

    invoke-direct {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    .line 219
    :goto_1
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    .line 220
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 222
    return-void

    .line 217
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/audio/AudioTrack;)Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private bytesToFrames(J)J
    .locals 5

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    if-eqz v0, :cond_1

    .line 758
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->ac3Bitrate:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 761
    :goto_0
    return-wide v0

    .line 758
    :cond_0
    const-wide/16 v0, 0x8

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->ac3Bitrate:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    .line 761
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->frameSize:I

    int-to-long v0, v0

    div-long v0, p1, v0

    goto :goto_0
.end method

.method private checkAudioTrackInitialized()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 739
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    .line 740
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 741
    return-void

    .line 745
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 753
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;-><init>(IIII)V

    throw v1

    .line 746
    :catch_0
    move-exception v1

    .line 750
    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    throw v0
.end method

.method private durationUsToFrames(J)J
    .locals 5

    .prologue
    .line 770
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private framesToDurationUs(J)J
    .locals 5

    .prologue
    .line 766
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private hasCurrentPositionUs()Z
    .locals 1

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeSampleSyncParams()V
    .locals 12

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v2

    .line 656
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    .line 661
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    sub-long v0, v4, v0

    const-wide/16 v6, 0x7530

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    sub-long v6, v2, v4

    aput-wide v6, v0, v1

    .line 664
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 665
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 666
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    .line 668
    :cond_2
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 669
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 670
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    if-ge v0, v1, :cond_3

    .line 671
    iget-wide v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    aget-wide v8, v1, v0

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    int-to-long v10, v1

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 677
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    sub-long v0, v4, v0

    const-wide/32 v6, 0x7a120

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->updateTimestamp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 679
    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v0, :cond_4

    .line 681
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 682
    iget-object v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v6

    .line 683
    iget-wide v8, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->resumeSystemTimeUs:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_6

    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 709
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->bytesToFrames(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    .line 716
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    .line 718
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 719
    const-string v0, "AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring impossibly large audio latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :cond_5
    :goto_3
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    goto/16 :goto_0

    .line 686
    :cond_6
    sub-long v8, v0, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 688
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    sget-boolean v1, Lcom/google/android/exoplayer/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v1, :cond_7

    .line 692
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 694
    :cond_7
    const-string v1, "AudioTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 696
    :cond_8
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 699
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    sget-boolean v1, Lcom/google/android/exoplayer/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v1, :cond_9

    .line 703
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 705
    :cond_9
    const-string v1, "AudioTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 722
    :catch_0
    move-exception v0

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_3
.end method

.method private releaseKeepSessionIdAudioTrack()V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 637
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 638
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack$2;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer/audio/AudioTrack$2;->start()V

    goto :goto_0
.end method

.method private resetSyncParams()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 774
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 775
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    .line 776
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 777
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 778
    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 779
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    .line 780
    return-void
.end method

.method private static setVolumeV21(Landroid/media/AudioTrack;F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 574
    return-void
.end method

.method private static setVolumeV3(Landroid/media/AudioTrack;F)V
    .locals 0

    .prologue
    .line 578
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 579
    return-void
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 542
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCurrentPositionUs(Z)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 244
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->hasCurrentPositionUs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    const-wide/high16 v0, -0x8000000000000000L

    .line 276
    :cond_0
    :goto_0
    return-wide v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 249
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->maybeSampleSyncParams()V

    .line 252
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    .line 254
    iget-boolean v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v2, :cond_3

    .line 256
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 257
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v0

    .line 259
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 260
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    add-long/2addr v0, v2

    .line 261
    goto :goto_0

    .line 262
    :cond_3
    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    if-nez v2, :cond_4

    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    add-long/2addr v0, v2

    .line 271
    :goto_1
    if-nez p1, :cond_0

    .line 272
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 269
    :cond_4
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;IIJ)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 444
    if-nez p3, :cond_1

    .line 445
    const/4 v0, 0x2

    .line 536
    :cond_0
    :goto_0
    return v0

    .line 449
    :cond_1
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    if-eqz v0, :cond_3

    .line 452
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 453
    const/4 v0, 0x0

    goto :goto_0

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 461
    const/4 v0, 0x0

    goto :goto_0

    .line 465
    :cond_3
    const/4 v0, 0x0

    .line 466
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    if-nez v1, :cond_5

    .line 467
    iget-boolean v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->ac3Bitrate:I

    if-nez v1, :cond_4

    .line 468
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    invoke-static {p3, v1}, Lcom/google/android/exoplayer/util/Ac3Util;->getBitrate(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->ac3Bitrate:I

    .line 473
    :cond_4
    int-to-long v2, p3

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->bytesToFrames(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v2

    sub-long v2, p4, v2

    .line 474
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    if-nez v1, :cond_a

    .line 475
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    .line 476
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 497
    :cond_5
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    if-nez v1, :cond_8

    .line 498
    iput p3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    .line 499
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 500
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_8

    .line 502
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    array-length v1, v1

    if-ge v1, p3, :cond_7

    .line 503
    :cond_6
    new-array v1, p3, [B

    iput-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    .line 505
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 506
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    .line 510
    :cond_8
    const/4 v1, 0x0

    .line 511
    sget v2, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_c

    .line 513
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    iget-object v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v4

    iget v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->frameSize:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 515
    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    sub-int v2, v3, v2

    .line 516
    if-lez v2, :cond_9

    .line 517
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 518
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 519
    if-ltz v1, :cond_9

    .line 520
    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    .line 527
    :cond_9
    :goto_2
    if-gez v1, :cond_d

    .line 528
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;-><init>(I)V

    throw v0

    .line 479
    :cond_a
    iget-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer/audio/AudioTrack;->bytesToFrames(J)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 481
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_b

    sub-long v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x30d40

    cmp-long v1, v6, v8

    if-lez v1, :cond_b

    .line 483
    const-string v1, "AudioTrack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discontinuity detected [expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 487
    :cond_b
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_5

    .line 490
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    .line 491
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 492
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 524
    :cond_c
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    invoke-static {v1, p1, v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v1

    goto :goto_2

    .line 531
    :cond_d
    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    .line 532
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    .line 533
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    if-nez v1, :cond_0

    .line 534
    or-int/lit8 v0, v0, 0x2

    goto/16 :goto_0
.end method

.method public handleDiscontinuity()V
    .locals 2

    .prologue
    .line 422
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 423
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 425
    :cond_0
    return-void
.end method

.method public hasEnoughDataToBeginPlayback()Z
    .locals 4

    .prologue
    .line 556
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->minBufferSize:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPendingData()Z
    .locals 4

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->bytesToFrames(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->overrideHasPendingData()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->initialize(I)I

    move-result v0

    return v0
.end method

.method public initialize(I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x3

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 303
    if-nez p1, :cond_2

    .line 304
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    iget v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 311
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->checkAudioTrackInitialized()V

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v7

    .line 314
    sget-boolean v0, Lcom/google/android/exoplayer/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    if-eqz v0, :cond_1

    .line 315
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v7, v0, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 323
    const/16 v2, 0xfa0

    .line 324
    const/4 v3, 0x4

    .line 327
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v6, 0x0

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget-boolean v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 335
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->setVolume(F)V

    .line 337
    return v7

    .line 308
    :cond_2
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    iget v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->resetSyncParams()V

    .line 585
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 587
    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->resumeSystemTimeUs:J

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 417
    :cond_0
    return-void
.end method

.method public reconfigure(Landroid/media/MediaFormat;)V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->reconfigure(Landroid/media/MediaFormat;I)V

    .line 346
    return-void
.end method

.method public reconfigure(Landroid/media/MediaFormat;I)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 356
    const-string v0, "channel-count"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 358
    packed-switch v4, :pswitch_data_0

    .line 372
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported channel count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :pswitch_1
    const/4 v0, 0x4

    .line 375
    :goto_0
    const-string v1, "sample-rate"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 376
    const-string v1, "mime"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v1}, Lcom/google/android/exoplayer/util/MimeTypes;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v6

    .line 380
    const/4 v1, 0x5

    if-eq v6, v1, :cond_0

    const/4 v1, 0x6

    if-ne v6, v1, :cond_1

    :cond_0
    move v1, v3

    .line 381
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    if-ne v7, v5, :cond_2

    iget v7, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    if-ne v7, v0, :cond_2

    iget-boolean v7, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    if-nez v7, :cond_2

    if-nez v1, :cond_2

    .line 409
    :goto_2
    return-void

    .line 363
    :pswitch_2
    const/16 v0, 0xc

    .line 364
    goto :goto_0

    .line 366
    :pswitch_3
    const/16 v0, 0xfc

    .line 367
    goto :goto_0

    .line 369
    :pswitch_4
    const/16 v0, 0x3fc

    .line 370
    goto :goto_0

    :cond_1
    move v1, v2

    .line 380
    goto :goto_1

    .line 387
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->reset()V

    .line 389
    iput v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    .line 390
    iput v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    .line 391
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    .line 392
    iput-boolean v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    .line 393
    iput v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->ac3Bitrate:I

    .line 394
    mul-int/lit8 v1, v4, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->frameSize:I

    .line 395
    invoke-static {v5, v0, v6}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->minBufferSize:I

    .line 396
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->minBufferSize:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    :goto_3
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 398
    if-eqz p2, :cond_4

    .line 399
    iput p2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    goto :goto_2

    :cond_3
    move v3, v2

    .line 396
    goto :goto_3

    .line 401
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->minBufferSize:I

    mul-int/lit8 v2, v0, 0x4

    .line 402
    const-wide/32 v0, 0x3d090

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->frameSize:I

    mul-int/2addr v0, v1

    .line 403
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->minBufferSize:I

    int-to-long v4, v1

    const-wide/32 v6, 0xb71b0

    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v6

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->frameSize:I

    int-to-long v8, v1

    mul-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 405
    if-ge v2, v0, :cond_5

    :goto_4
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    goto :goto_2

    :cond_5
    if-le v2, v1, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_4

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->reset()V

    .line 626
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 627
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 595
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    .line 597
    iput v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    .line 598
    iput v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 599
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    .line 600
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->resetSyncParams()V

    .line 601
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 602
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 607
    iput-object v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 608
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 609
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 610
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack$1;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer/audio/AudioTrack$1;->start()V

    .line 621
    :cond_1
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .prologue
    .line 561
    iput p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    .line 562
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 564
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer/audio/AudioTrack;->setVolumeV21(Landroid/media/AudioTrack;F)V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer/audio/AudioTrack;->setVolumeV3(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method
