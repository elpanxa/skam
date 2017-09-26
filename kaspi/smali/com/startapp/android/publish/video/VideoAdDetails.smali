.class public Lcom/startapp/android/publish/video/VideoAdDetails;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private closeable:Z

.field private localVideoPath:Ljava/lang/String;

.field private postRoll:Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;

.field private skippable:Z

.field private skippableAfter:I

.field private videoClosedUrl:Ljava/lang/String;

.field private videoPausedUrl:Ljava/lang/String;

.field private videoPostRollClosedUrl:Ljava/lang/String;

.field private videoPostRollImpressionUrl:Ljava/lang/String;

.field private videoProgressUrl:Ljava/lang/String;

.field private videoResumedUrl:Ljava/lang/String;

.field private videoSkippedUrl:Ljava/lang/String;

.field private videoSoundUrl:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public getLocalVideoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->localVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPostRollType()Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->postRoll:Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;

    return-object v0
.end method

.method public getSkippableAfter()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->skippableAfter:I

    return v0
.end method

.method public getVideoClosedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoClosedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPausedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoPausedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPostRollClosedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoPostRollClosedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPostRollImpressionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoPostRollImpressionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoProgressUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoProgressUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoResumedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoResumedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSkippedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoSkippedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSoundUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoSoundUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCloseable()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->closeable:Z

    return v0
.end method

.method public isSkippable()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->skippable:Z

    return v0
.end method

.method public setLocalVideoPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->localVideoPath:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoAdDetails [videoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localVideoPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->localVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", postRoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->postRoll:Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", closeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->closeable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skippable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->skippable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skippableAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->skippableAfter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoProgressUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoProgressUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoClosedUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoClosedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoSkippedUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoSkippedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoSoundUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoSoundUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoPostRollImpressionUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoPostRollImpressionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoPostRollClosedUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoPostRollClosedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoPausedUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoPausedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoResumedUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/video/VideoAdDetails;->videoResumedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
