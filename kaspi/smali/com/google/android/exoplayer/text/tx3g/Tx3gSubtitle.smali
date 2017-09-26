.class final Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;
.super Ljava/lang/Object;
.source "Tx3gSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/Subtitle;


# instance fields
.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final startTimeUs:J


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer/text/Cue;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;->startTimeUs:J

    .line 35
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;->cues:Ljava/util/List;

    .line 36
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
    .line 66
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;->startTimeUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;->cues:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getEventTime(I)J
    .locals 2

    .prologue
    .line 55
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 56
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;->startTimeUs:J

    return-wide v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEventTimeCount()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public getLastEventTime()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;->startTimeUs:J

    return-wide v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 3

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;->startTimeUs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;->startTimeUs:J

    return-wide v0
.end method
