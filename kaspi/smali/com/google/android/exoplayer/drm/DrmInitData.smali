.class public abstract Lcom/google/android/exoplayer/drm/DrmInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/drm/DrmInitData$Universal;,
        Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    }
.end annotation


# instance fields
.field public final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/DrmInitData;->mimeType:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public abstract get(Ljava/util/UUID;)[B
.end method
