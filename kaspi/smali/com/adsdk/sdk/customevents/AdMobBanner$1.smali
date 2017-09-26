.class Lcom/adsdk/sdk/customevents/AdMobBanner$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/AdMobBanner;->createAdListener()Lcom/google/android/gms/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/AdMobBanner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerClosed()V

    .line 74
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    .line 52
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/AdMobBanner;->reportImpression()V

    .line 57
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    # getter for: Lcom/adsdk/sdk/customevents/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v1}, Lcom/adsdk/sdk/customevents/AdMobBanner;->access$0(Lcom/adsdk/sdk/customevents/AdMobBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 67
    :cond_0
    return-void
.end method
