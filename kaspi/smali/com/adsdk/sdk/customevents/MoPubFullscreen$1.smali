.class Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;
.super Ljava/lang/Object;
.source "MoPubFullscreen.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/MoPubFullscreen;->createListener()Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/MoPubFullscreen;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/MoPubFullscreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubFullscreen;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLeftApplication()V

    .line 72
    :cond_0
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenClosed()V

    .line 65
    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    .line 58
    :cond_0
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubFullscreen;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubFullscreen;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->reportImpression()V

    .line 41
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenOpened()V

    .line 44
    :cond_0
    return-void
.end method
