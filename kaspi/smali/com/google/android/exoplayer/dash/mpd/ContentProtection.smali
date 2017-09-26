.class public Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
.super Ljava/lang/Object;
.source "ContentProtection.java"


# instance fields
.field public final data:[B

.field public final schemeUriId:Ljava/lang/String;

.field public final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;[B)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    .line 52
    iput-object p3, p0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->data:[B

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    instance-of v2, p1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    if-nez v2, :cond_1

    move v0, v1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    if-eq p1, p0, :cond_0

    .line 64
    check-cast p1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    .line 65
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    iget-object v3, p1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->data:[B

    iget-object v3, p1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->data:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 72
    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    .line 75
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    if-eqz v1, :cond_0

    .line 76
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->data:[B

    if-eqz v1, :cond_1

    .line 79
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_1
    return v0
.end method
