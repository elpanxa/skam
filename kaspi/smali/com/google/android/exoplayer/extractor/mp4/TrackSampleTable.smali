.class final Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;
.super Ljava/lang/Object;
.source "TrackSampleTable.java"


# static fields
.field public static final NO_SAMPLE:I = -0x1


# instance fields
.field public final flags:[I

.field public final offsets:[J

.field public final sampleCount:I

.field public final sizes:[I

.field public final timestampsUs:[J


# direct methods
.method constructor <init>([J[I[J[I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    array-length v0, p2

    array-length v3, p3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 42
    array-length v0, p1

    array-length v3, p3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 43
    array-length v0, p4

    array-length v3, p3

    if-ne v0, v3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->offsets:[J

    .line 46
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->sizes:[I

    .line 47
    iput-object p3, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    .line 48
    iput-object p4, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->flags:[I

    .line 49
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->sampleCount:I

    .line 50
    return-void

    :cond_0
    move v0, v2

    .line 41
    goto :goto_0

    :cond_1
    move v0, v2

    .line 42
    goto :goto_1

    :cond_2
    move v1, v2

    .line 43
    goto :goto_2
.end method


# virtual methods
.method public getIndexOfEarlierOrEqualSynchronizationSample(J)I
    .locals 5

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 61
    :goto_0
    if-ltz v0, :cond_1

    .line 62
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->flags:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 66
    :goto_1
    return v0

    .line 61
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getIndexOfLaterOrEqualSynchronizationSample(J)I
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->flags:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 83
    :goto_1
    return v0

    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
