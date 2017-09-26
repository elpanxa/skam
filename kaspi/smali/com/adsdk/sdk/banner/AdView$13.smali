.class Lcom/adsdk/sdk/banner/AdView$13;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/banner/AdView;->createCustomAdListener()Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClosed()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->shouldNotifyClose:Z
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$27(Lcom/adsdk/sdk/banner/AdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->access$11(Lcom/adsdk/sdk/banner/AdView;Z)V

    .line 571
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->notifyAdClosed()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$28(Lcom/adsdk/sdk/banner/AdView;)V

    .line 573
    :cond_0
    return-void
.end method

.method public onBannerExpanded()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->access$11(Lcom/adsdk/sdk/banner/AdView;Z)V

    .line 563
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->notifyAdClicked()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$12(Lcom/adsdk/sdk/banner/AdView;)V

    .line 564
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->notifyAdShown()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$13(Lcom/adsdk/sdk/banner/AdView;)V

    .line 565
    return-void
.end method

.method public onBannerFailed()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->destroyCustomEventBanner()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$21(Lcom/adsdk/sdk/banner/AdView;)V

    .line 547
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->loadCustomEventBanner()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$22(Lcom/adsdk/sdk/banner/AdView;)V

    .line 548
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$16(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/customevents/CustomEventBanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$23(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/banner/BannerAdView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$23(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/banner/BannerAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/BannerAdView;->showContent()V

    .line 552
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;
    invoke-static {v1}, Lcom/adsdk/sdk/banner/AdView;->access$23(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/banner/BannerAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$24(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->addMRAIDBannerView()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$25(Lcom/adsdk/sdk/banner/AdView;)V

    goto :goto_0

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->notifyNoAd()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$26(Lcom/adsdk/sdk/banner/AdView;)V

    goto :goto_0
.end method

.method public onBannerLoaded(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->customEventBannerView:Landroid/view/View;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$19(Lcom/adsdk/sdk/banner/AdView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->customEventBannerView:Landroid/view/View;
    invoke-static {v1}, Lcom/adsdk/sdk/banner/AdView;->access$19(Lcom/adsdk/sdk/banner/AdView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->removeView(Landroid/view/View;)V

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    invoke-static {v0, p1}, Lcom/adsdk/sdk/banner/AdView;->access$20(Lcom/adsdk/sdk/banner/AdView;Landroid/view/View;)V

    .line 540
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/banner/AdView;->addView(Landroid/view/View;)V

    .line 541
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$13;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->notifyLoadAdSucceeded()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$10(Lcom/adsdk/sdk/banner/AdView;)V

    .line 542
    return-void
.end method
