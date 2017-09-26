.class public final Lcom/google/android/exoplayer/TrackInfo;
.super Ljava/lang/Object;
.source "TrackInfo.java"


# instance fields
.field public final durationUs:J

.field public final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer/TrackInfo;->mimeType:Ljava/lang/String;

    .line 43
    iput-wide p2, p0, Lcom/google/android/exoplayer/TrackInfo;->durationUs:J

    .line 44
    return-void
.end method
