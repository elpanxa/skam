.class Lcom/adsdk/sdk/customevents/FacebookBanner$1;
.super Ljava/lang/Object;
.source "FacebookBanner.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/FacebookBanner;->createListener()Lcom/facebook/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/FacebookBanner;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/FacebookBanner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/FacebookBanner$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookBanner;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookBanner$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookBanner$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 63
    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookBanner$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookBanner;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/FacebookBanner;->reportImpression()V

    .line 53
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookBanner$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookBanner$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/FacebookBanner$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookBanner;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookBanner;->banner:Lcom/facebook/ads/AdView;
    invoke-static {v1}, Lcom/adsdk/sdk/customevents/FacebookBanner;->access$0(Lcom/adsdk/sdk/customevents/FacebookBanner;)Lcom/facebook/ads/AdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 56
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookBanner$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookBanner$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    .line 48
    :cond_0
    return-void
.end method
