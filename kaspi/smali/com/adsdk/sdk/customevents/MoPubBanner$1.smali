.class Lcom/adsdk/sdk/customevents/MoPubBanner$1;
.super Ljava/lang/Object;
.source "MoPubBanner.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/MoPubBanner;->createListener()Lcom/mopub/mobileads/MoPubView$BannerAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/MoPubBanner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubBanner;->reportedClick:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/MoPubBanner;->access$1(Lcom/adsdk/sdk/customevents/MoPubBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/MoPubBanner;->access$2(Lcom/adsdk/sdk/customevents/MoPubBanner;Z)V

    .line 76
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 78
    :cond_0
    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/MoPubBanner;->access$2(Lcom/adsdk/sdk/customevents/MoPubBanner;Z)V

    .line 68
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerClosed()V

    .line 70
    :cond_0
    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubBanner;->reportedClick:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/MoPubBanner;->access$1(Lcom/adsdk/sdk/customevents/MoPubBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/MoPubBanner;->access$2(Lcom/adsdk/sdk/customevents/MoPubBanner;Z)V

    .line 60
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 62
    :cond_0
    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    .line 54
    :cond_0
    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/MoPubBanner;->reportImpression()V

    .line 44
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubBanner;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;
    invoke-static {v1}, Lcom/adsdk/sdk/customevents/MoPubBanner;->access$0(Lcom/adsdk/sdk/customevents/MoPubBanner;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 47
    :cond_0
    return-void
.end method
