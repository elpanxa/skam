.class Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;
.super Ljava/lang/Object;
.source "InMobiFullscreen.java"

# interfaces
.implements Lcom/inmobi/monetization/IMInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/InMobiFullscreen;->createListener()Lcom/inmobi/monetization/IMInterstitialListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/InMobiFullscreen;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/InMobiFullscreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiFullscreen;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenClosed()V

    .line 83
    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    .line 76
    :cond_0
    return-void
.end method

.method public onInterstitialInteraction(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLeftApplication()V

    .line 69
    :cond_0
    return-void
.end method

.method public onInterstitialLoaded(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiFullscreen;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onShowInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiFullscreen;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->reportImpression()V

    .line 48
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenOpened()V

    .line 51
    :cond_0
    return-void
.end method
