.class Lcom/adsdk/sdk/customevents/AmazonBanner$1;
.super Ljava/lang/Object;
.source "AmazonBanner.java"

# interfaces
.implements Lcom/amazon/device/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/AmazonBanner;->createListener()Lcom/amazon/device/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/AmazonBanner;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/AmazonBanner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/AmazonBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonBanner;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerClosed()V

    .line 90
    :cond_0
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 79
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    .line 72
    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonBanner;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/AmazonBanner;->reportImpression()V

    .line 62
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AmazonBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/AmazonBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AmazonBanner;

    # getter for: Lcom/adsdk/sdk/customevents/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;
    invoke-static {v1}, Lcom/adsdk/sdk/customevents/AmazonBanner;->access$0(Lcom/adsdk/sdk/customevents/AmazonBanner;)Lcom/amazon/device/ads/AdLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 65
    :cond_0
    return-void
.end method
