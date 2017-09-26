.class Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;
.super Lcom/chartboost/sdk/ChartboostDelegate;
.source "ChartboostFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->createListener()Lcom/chartboost/sdk/ChartboostDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/ChartboostFullscreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    .line 54
    invoke-direct {p0}, Lcom/chartboost/sdk/ChartboostDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    # getter for: Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->shouldReportAvailability:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->access$2(Lcom/adsdk/sdk/customevents/ChartboostFullscreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->access$3(Lcom/adsdk/sdk/customevents/ChartboostFullscreen;Z)V

    .line 96
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 98
    :cond_0
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLeftApplication()V

    .line 90
    :cond_0
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenClosed()V

    .line 83
    :cond_0
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->reportImpression()V

    .line 64
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenOpened()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->access$1(Lcom/adsdk/sdk/customevents/ChartboostFullscreen;Z)V

    .line 68
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    # getter for: Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->shouldReportAvailability:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->access$2(Lcom/adsdk/sdk/customevents/ChartboostFullscreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->access$3(Lcom/adsdk/sdk/customevents/ChartboostFullscreen;Z)V

    .line 74
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    .line 76
    :cond_0
    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/ChartboostFullscreen;

    # getter for: Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->shouldDisplay:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->access$0(Lcom/adsdk/sdk/customevents/ChartboostFullscreen;)Z

    move-result v0

    return v0
.end method
