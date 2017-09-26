.class final Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;
.super Ljava/lang/Object;
.source "SubripSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/Subtitle;


# instance fields
.field private final cueTimesUs:[J

.field private final cues:[Lcom/google/android/exoplayer/text/Cue;

.field private final startTimeUs:J


# direct methods
.method public constructor <init>(J[Lcom/google/android/exoplayer/text/Cue;[J)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->startTimeUs:J

    .line 43
    iput-object p3, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cues:[Lcom/google/android/exoplayer/text/Cue;

    .line 44
    iput-object p4, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    .line 45
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v2, v1}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 81
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    rem-int/lit8 v1, v0, 0x2

    if-ne v1, v2, :cond_1

    .line 83
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cues:[Lcom/google/android/exoplayer/text/Cue;

    div-int/lit8 v0, v0, 0x2

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getEventTime(I)J
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length v0, v0

    if-ge p1, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    aget-wide v0, v0, p1

    return-wide v0

    :cond_0
    move v0, v2

    .line 65
    goto :goto_0

    :cond_1
    move v1, v2

    .line 66
    goto :goto_1
.end method

.method public getEventTimeCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method public getLastEventTime()J
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->getEventTimeCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-wide/16 v0, -0x1

    .line 75
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    iget-object v1, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    goto :goto_0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->startTimeUs:J

    return-wide v0
.end method
