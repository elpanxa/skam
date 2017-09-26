.class public Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
.super Ljava/lang/Object;
.source "MediaPresentationDescription.java"

# interfaces
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;


# instance fields
.field public final availabilityStartTime:J

.field public final duration:J

.field public final dynamic:Z

.field public final location:Ljava/lang/String;

.field public final minBufferTime:J

.field public final minUpdatePeriod:J

.field public final periods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Period;",
            ">;"
        }
    .end annotation
.end field

.field public final timeShiftBufferDepth:J

.field public final utcTiming:Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;


# direct methods
.method public constructor <init>(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJ",
            "Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Period;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->availabilityStartTime:J

    .line 50
    iput-wide p3, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->duration:J

    .line 51
    iput-wide p5, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->minBufferTime:J

    .line 52
    iput-boolean p7, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    .line 53
    iput-wide p8, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->minUpdatePeriod:J

    .line 54
    iput-wide p10, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->timeShiftBufferDepth:J

    .line 55
    iput-object p12, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->utcTiming:Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    .line 56
    iput-object p13, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->location:Ljava/lang/String;

    .line 57
    invoke-static {p14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->periods:Ljava/util/List;

    .line 58
    return-void
.end method


# virtual methods
.method public getNextManifestUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->location:Ljava/lang/String;

    return-object v0
.end method
