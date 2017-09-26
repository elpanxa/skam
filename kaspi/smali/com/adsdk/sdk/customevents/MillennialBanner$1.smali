.class Lcom/adsdk/sdk/customevents/MillennialBanner$1;
.super Ljava/lang/Object;
.source "MillennialBanner.java"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/MillennialBanner;->createAdListener()Lcom/millennialmedia/android/RequestListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/MillennialBanner;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/MillennialBanner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/MillennialBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialBanner;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerClosed()V

    .line 89
    :cond_0
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 82
    :cond_0
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialBanner;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/MillennialBanner;->reportImpression()V

    .line 64
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/MillennialBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialBanner;

    # getter for: Lcom/adsdk/sdk/customevents/MillennialBanner;->millenialAdView:Lcom/millennialmedia/android/MMAdView;
    invoke-static {v1}, Lcom/adsdk/sdk/customevents/MillennialBanner;->access$0(Lcom/adsdk/sdk/customevents/MillennialBanner;)Lcom/millennialmedia/android/MMAdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 67
    :cond_0
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    .line 59
    :cond_0
    return-void
.end method
