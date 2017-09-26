.class public final Lcom/google/android/exoplayer/drm/DrmInitData$Universal;
.super Lcom/google/android/exoplayer/drm/DrmInitData;
.source "DrmInitData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/drm/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Universal"
.end annotation


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/DrmInitData;-><init>(Ljava/lang/String;)V

    .line 84
    iput-object p2, p0, Lcom/google/android/exoplayer/drm/DrmInitData$Universal;->data:[B

    .line 85
    return-void
.end method


# virtual methods
.method public get(Ljava/util/UUID;)[B
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/DrmInitData$Universal;->data:[B

    return-object v0
.end method
