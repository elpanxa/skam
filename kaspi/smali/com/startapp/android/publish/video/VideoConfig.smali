.class public Lcom/startapp/android/publish/video/VideoConfig;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private maxCachedVideos:I

.field private minAvailableStorageRequired:J

.field private videoErrorsThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x3

    iput v0, p0, Lcom/startapp/android/publish/video/VideoConfig;->maxCachedVideos:I

    .line 10
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/startapp/android/publish/video/VideoConfig;->minAvailableStorageRequired:J

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/startapp/android/publish/video/VideoConfig;->videoErrorsThreshold:I

    return-void
.end method


# virtual methods
.method public getMaxCachedVideos()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/startapp/android/publish/video/VideoConfig;->maxCachedVideos:I

    return v0
.end method

.method public getMinAvailableStorageRequired()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/startapp/android/publish/video/VideoConfig;->minAvailableStorageRequired:J

    return-wide v0
.end method

.method public getVideoErrorsThreshold()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/startapp/android/publish/video/VideoConfig;->videoErrorsThreshold:I

    return v0
.end method
