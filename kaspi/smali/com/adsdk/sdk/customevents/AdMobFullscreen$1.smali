.class Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/AdMobFullscreen;->createAdListener()Lcom/google/android/gms/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/AdMobFullscreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenClosed()V

    .line 47
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    .line 54
    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLeftApplication()V

    .line 61
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->reportImpression()V

    .line 73
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenOpened()V

    .line 76
    :cond_0
    return-void
.end method
