.class public abstract Lcom/google/android/exoplayer/TrackRenderer;
.super Ljava/lang/Object;
.source "TrackRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;


# static fields
.field public static final END_OF_TRACK_US:J = -0x3L

.field public static final MATCH_LONGEST_US:J = -0x2L

.field protected static final STATE_ENABLED:I = 0x2

.field protected static final STATE_IGNORE:I = -0x1

.field protected static final STATE_PREPARED:I = 0x1

.field protected static final STATE_RELEASED:I = -0x2

.field protected static final STATE_STARTED:I = 0x3

.field protected static final STATE_UNPREPARED:I = 0x0

.field public static final UNKNOWN_TIME_US:J = -0x1L


# instance fields
.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final disable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 217
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 218
    iput v1, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 219
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onDisabled()V

    .line 220
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract doPrepare(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected abstract doSomeWork(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method final enable(JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 146
    iget v1, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 147
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 148
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer/TrackRenderer;->onEnabled(JZ)V

    .line 149
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getBufferedPositionUs()J
.end method

.method protected abstract getDurationUs()J
.end method

.method protected getMediaClock()Lcom/google/android/exoplayer/MediaClock;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getState()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 357
    return-void
.end method

.method protected abstract isEnded()Z
.end method

.method protected abstract isReady()Z
.end method

.method protected abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected onDisabled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 231
    return-void
.end method

.method protected onEnabled(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 164
    return-void
.end method

.method protected onReleased()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 255
    return-void
.end method

.method protected onStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 187
    return-void
.end method

.method protected onStopped()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 209
    return-void
.end method

.method final prepare(J)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 113
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/TrackRenderer;->doPrepare(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 115
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 118
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    return v0

    :cond_2
    move v0, v2

    .line 113
    goto :goto_0
.end method

.method final release()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    .line 239
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 242
    iput v2, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 243
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onReleased()V

    .line 244
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract seekTo(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 173
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 174
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 175
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onStarted()V

    .line 176
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 195
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 196
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 197
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onStopped()V

    .line 198
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
