.class Lcom/adsdk/sdk/customevents/AmazonFullscreen$1;
.super Ljava/lang/Object;
.source "AmazonFullscreen.java"

# interfaces
.implements Lcom/amazon/device/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/AmazonFullscreen;->createListener()Lcom/amazon/device/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/AmazonFullscreen;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/AmazonFullscreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonFullscreen;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenClosed()V

    .line 73
    :cond_0
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLeftApplication()V

    .line 66
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    .line 59
    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonFullscreen;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 52
    :cond_0
    return-void
.end method
