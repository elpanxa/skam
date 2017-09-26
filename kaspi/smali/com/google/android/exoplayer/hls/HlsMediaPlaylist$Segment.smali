.class public final Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final byterangeLength:I

.field public final byterangeOffset:I

.field public final discontinuity:Z

.field public final durationSecs:D

.field public final encryptionIV:Ljava/lang/String;

.field public final encryptionKeyUri:Ljava/lang/String;

.field public final isEncrypted:Z

.field public final startTimeUs:J

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DZJZLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    .line 46
    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    .line 47
    iput-boolean p4, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuity:Z

    .line 48
    iput-wide p5, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    .line 49
    iput-boolean p7, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->isEncrypted:Z

    .line 50
    iput-object p8, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    .line 51
    iput-object p9, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    .line 52
    iput p10, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeOffset:I

    .line 53
    iput p11, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeLength:I

    .line 54
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Long;)I
    .locals 4

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
