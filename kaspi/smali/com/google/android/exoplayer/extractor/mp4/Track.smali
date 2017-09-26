.class public final Lcom/google/android/exoplayer/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "Track.java"


# static fields
.field public static final TYPE_AUDIO:I

.field public static final TYPE_SUBTITLE:I

.field public static final TYPE_TEXT:I

.field public static final TYPE_VIDEO:I


# instance fields
.field public final durationUs:J

.field public final id:I

.field public final mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field public final nalUnitLengthFieldLength:I

.field public final sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

.field public final timescale:J

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "vide"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_VIDEO:I

    .line 34
    const-string v0, "soun"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_AUDIO:I

    .line 38
    const-string v0, "text"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_TEXT:I

    .line 42
    const-string v0, "sbtl"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_SUBTITLE:I

    return-void
.end method

.method public constructor <init>(IIJJLcom/google/android/exoplayer/MediaFormat;[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;I)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->id:I

    .line 83
    iput p2, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->type:I

    .line 84
    iput-wide p3, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    .line 85
    iput-wide p5, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->durationUs:J

    .line 86
    iput-object p7, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 87
    iput-object p8, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    .line 88
    iput p9, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 89
    return-void
.end method
