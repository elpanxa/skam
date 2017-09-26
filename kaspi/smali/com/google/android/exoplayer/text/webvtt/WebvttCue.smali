.class final Lcom/google/android/exoplayer/text/webvtt/WebvttCue;
.super Lcom/google/android/exoplayer/text/Cue;
.source "WebvttCue.java"


# instance fields
.field public final endTime:J

.field public final startTime:J


# direct methods
.method public constructor <init>(JJLjava/lang/CharSequence;)V
    .locals 11

    .prologue
    .line 35
    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;-><init>(JJLjava/lang/CharSequence;IILandroid/text/Layout$Alignment;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(JJLjava/lang/CharSequence;IILandroid/text/Layout$Alignment;I)V
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p5

    move v2, p6

    move v3, p7

    move-object v4, p8

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;IILandroid/text/Layout$Alignment;I)V

    .line 41
    iput-wide p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->startTime:J

    .line 42
    iput-wide p3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->endTime:J

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7

    .prologue
    const-wide/16 v2, -0x1

    .line 31
    move-object v1, p0

    move-wide v4, v2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;-><init>(JJLjava/lang/CharSequence;)V

    .line 32
    return-void
.end method


# virtual methods
.method public isNormalCue()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 52
    iget v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->line:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->position:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
