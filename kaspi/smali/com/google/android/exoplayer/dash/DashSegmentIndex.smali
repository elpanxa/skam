.class public interface abstract Lcom/google/android/exoplayer/dash/DashSegmentIndex;
.super Ljava/lang/Object;
.source "DashSegmentIndex.java"


# static fields
.field public static final INDEX_UNBOUNDED:I = -0x1


# virtual methods
.method public abstract getDurationUs(I)J
.end method

.method public abstract getFirstSegmentNum()I
.end method

.method public abstract getLastSegmentNum()I
.end method

.method public abstract getSegmentNum(J)I
.end method

.method public abstract getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
.end method

.method public abstract getTimeUs(I)J
.end method

.method public abstract isExplicit()Z
.end method
