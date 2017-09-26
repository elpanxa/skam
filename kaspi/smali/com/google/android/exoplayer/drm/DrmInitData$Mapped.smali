.class public final Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
.super Lcom/google/android/exoplayer/drm/DrmInitData;
.source "DrmInitData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/drm/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mapped"
.end annotation


# instance fields
.field private final schemeData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/DrmInitData;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->schemeData:Ljava/util/Map;

    .line 56
    return-void
.end method


# virtual methods
.method public get(Ljava/util/UUID;)[B
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->schemeData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public put(Ljava/util/UUID;[B)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->schemeData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method
