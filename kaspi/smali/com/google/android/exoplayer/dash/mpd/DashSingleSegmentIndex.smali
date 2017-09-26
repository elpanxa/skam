.class final Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;
.super Ljava/lang/Object;
.source "DashSingleSegmentIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer/dash/DashSegmentIndex;


# instance fields
.field private final durationUs:J

.field private final startTimeUs:J

.field private final uri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;


# direct methods
.method public constructor <init>(JJLcom/google/android/exoplayer/dash/mpd/RangedUri;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->startTimeUs:J

    .line 36
    iput-wide p3, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->durationUs:J

    .line 37
    iput-object p5, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->uri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .line 38
    return-void
.end method


# virtual methods
.method public getDurationUs(I)J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->durationUs:J

    return-wide v0
.end method

.method public getFirstSegmentNum()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getLastSegmentNum()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentNum(J)I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->uri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    return-object v0
.end method

.method public getTimeUs(I)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->startTimeUs:J

    return-wide v0
.end method

.method public isExplicit()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method
