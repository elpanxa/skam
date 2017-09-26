.class public final Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;
.super Ljava/lang/Object;
.source "WebvttSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/Subtitle;


# instance fields
.field private final cueTimesUs:[J

.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/webvtt/WebvttCue;",
            ">;"
        }
    .end annotation
.end field

.field private final numCues:I

.field private final sortedCueTimesUs:[J

.field private final startTimeUs:J


# direct methods
.method public constructor <init>(Ljava/util/List;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/webvtt/WebvttCue;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cues:Ljava/util/List;

    .line 47
    iput-wide p2, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->startTimeUs:J

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->numCues:I

    .line 50
    iget v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->numCues:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    .line 51
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->numCues:I

    if-ge v1, v0, :cond_0

    .line 52
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;

    .line 53
    mul-int/lit8 v2, v1, 0x2

    .line 54
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    iget-wide v4, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->startTime:J

    aput-wide v4, v3, v2

    .line 55
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->endTime:J

    aput-wide v4, v3, v2

    .line 51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    iget-object v1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 59
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 9
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
    const/4 v1, 0x0

    .line 95
    .line 99
    const/4 v0, 0x0

    move v4, v0

    move-object v2, v1

    move-object v0, v1

    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->numCues:I

    if-ge v4, v3, :cond_3

    .line 100
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    mul-int/lit8 v5, v4, 0x2

    aget-wide v6, v3, v5

    cmp-long v3, v6, p1

    if-gtz v3, :cond_8

    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v6, v3, v5

    cmp-long v3, p1, v6

    if-gez v3, :cond_8

    .line 101
    if-nez v0, :cond_7

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cues:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->isNormalCue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    if-nez v2, :cond_0

    move-object v2, v3

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 99
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v8, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_0

    .line 111
    :cond_0
    if-nez v1, :cond_1

    .line 112
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 113
    iget-object v5, v2, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 115
    :cond_1
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 118
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 122
    :cond_3
    if-eqz v1, :cond_5

    .line 124
    new-instance v2, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_4
    :goto_3
    if-eqz v0, :cond_6

    .line 133
    :goto_4
    return-object v0

    .line 125
    :cond_5
    if-eqz v2, :cond_4

    .line 127
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 133
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v3, v0

    goto :goto_1

    :cond_8
    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_2
.end method

.method public getEventTime(I)J
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v0, v0

    if-ge p1, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    aget-wide v0, v0, p1

    return-wide v0

    :cond_0
    move v0, v2

    .line 80
    goto :goto_0

    :cond_1
    move v1, v2

    .line 81
    goto :goto_1
.end method

.method public getEventTimeCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method public getLastEventTime()J
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->getEventTimeCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const-wide/16 v0, -0x1

    .line 90
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    iget-object v1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    goto :goto_0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 68
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->startTimeUs:J

    return-wide v0
.end method
