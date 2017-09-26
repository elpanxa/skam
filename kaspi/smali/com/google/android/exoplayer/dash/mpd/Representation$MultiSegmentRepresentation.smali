.class public Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;
.super Lcom/google/android/exoplayer/dash/mpd/Representation;
.source "Representation.java"

# interfaces
.implements Lcom/google/android/exoplayer/dash/DashSegmentIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/dash/mpd/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiSegmentRepresentation"
.end annotation


# instance fields
.field private final segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;


# direct methods
.method public constructor <init>(JJLjava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;)V
    .locals 15

    .prologue
    .line 245
    const/4 v13, 0x0

    move-object v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer/dash/mpd/Representation;-><init>(JJLjava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;Lcom/google/android/exoplayer/dash/mpd/Representation$1;)V

    .line 246
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    .line 247
    return-void
.end method


# virtual methods
.method public getDurationUs(I)J
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentDurationUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstSegmentNum()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()I

    move-result v0

    return v0
.end method

.method public getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;
    .locals 0

    .prologue
    .line 256
    return-object p0
.end method

.method public getIndexUri()Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastSegmentNum()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getLastSegmentNum()I

    move-result v0

    return v0
.end method

.method public getSegmentNum(J)I
    .locals 7

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->periodStartMs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentNum(J)I

    move-result v0

    return v0
.end method

.method public getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentUrl(Lcom/google/android/exoplayer/dash/mpd/Representation;I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method public getTimeUs(I)J
    .locals 6

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->periodStartMs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isExplicit()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->isExplicit()Z

    move-result v0

    return v0
.end method
