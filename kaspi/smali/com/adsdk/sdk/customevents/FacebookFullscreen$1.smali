.class Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;
.super Ljava/lang/Object;
.source "FacebookFullscreen.java"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/FacebookFullscreen;->createListener()Lcom/facebook/ads/InterstitialAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/FacebookFullscreen;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/FacebookFullscreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookFullscreen;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLeftApplication()V

    .line 61
    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookFullscreen;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    .line 47
    :cond_0
    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenClosed()V

    .line 76
    :cond_0
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookFullscreen;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->reportImpression()V

    .line 66
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenOpened()V

    .line 69
    :cond_0
    return-void
.end method
