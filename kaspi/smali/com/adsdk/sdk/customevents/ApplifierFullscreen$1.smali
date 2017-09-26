.class Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;
.super Ljava/lang/Object;
.source "ApplifierFullscreen.java"

# interfaces
.implements Lcom/unity3d/ads/android/IUnityAdsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->createListener()Lcom/unity3d/ads/android/IUnityAdsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/ApplifierFullscreen;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/ApplifierFullscreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ApplifierFullscreen;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchCompleted()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ApplifierFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ApplifierFullscreen;

    # getter for: Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->shouldReportAvailability:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->access$0(Lcom/adsdk/sdk/customevents/ApplifierFullscreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ApplifierFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ApplifierFullscreen;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onFetchFailed()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ApplifierFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ApplifierFullscreen;

    # getter for: Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->shouldReportAvailability:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->access$0(Lcom/adsdk/sdk/customevents/ApplifierFullscreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ApplifierFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    .line 78
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ApplifierFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ApplifierFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenClosed()V

    .line 71
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ApplifierFullscreen;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->reportImpression()V

    .line 61
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ApplifierFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ApplifierFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenOpened()V

    .line 64
    :cond_0
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onVideoStarted()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
