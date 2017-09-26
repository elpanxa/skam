.class Lcom/adsdk/sdk/customevents/InMobiBanner$1;
.super Ljava/lang/Object;
.source "InMobiBanner.java"

# interfaces
.implements Lcom/inmobi/monetization/IMBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/InMobiBanner;->createListener()Lcom/inmobi/monetization/IMBannerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/InMobiBanner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerInteraction(Lcom/inmobi/monetization/IMBanner;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    return-void
.end method

.method public onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    .line 111
    :cond_0
    return-void
.end method

.method public onBannerRequestSucceeded(Lcom/inmobi/monetization/IMBanner;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/InMobiBanner;->reportImpression()V

    .line 101
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiBanner;->bannerLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/adsdk/sdk/customevents/InMobiBanner;->access$2(Lcom/adsdk/sdk/customevents/InMobiBanner;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onDismissBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/InMobiBanner;->access$1(Lcom/adsdk/sdk/customevents/InMobiBanner;Z)V

    .line 93
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerClosed()V

    .line 96
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/monetization/IMBanner;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiBanner;->reportedClick:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/InMobiBanner;->access$0(Lcom/adsdk/sdk/customevents/InMobiBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/InMobiBanner;->access$1(Lcom/adsdk/sdk/customevents/InMobiBanner;Z)V

    .line 86
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 88
    :cond_0
    return-void
.end method

.method public onShowBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiBanner;->reportedClick:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/InMobiBanner;->access$0(Lcom/adsdk/sdk/customevents/InMobiBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/InMobiBanner;->access$1(Lcom/adsdk/sdk/customevents/InMobiBanner;Z)V

    .line 78
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 80
    :cond_0
    return-void
.end method
