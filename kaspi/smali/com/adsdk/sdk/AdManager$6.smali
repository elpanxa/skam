.class Lcom/adsdk/sdk/AdManager$6;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/AdManager;->createCustomFullscreenListener()Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/AdManager;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullscreenClosed()V
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->finishCustomEventFullscreen()V
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$23(Lcom/adsdk/sdk/AdManager;)V

    .line 444
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v1}, Lcom/adsdk/sdk/AdManager;->access$14(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/adsdk/sdk/AdManager;->notifyAdClose(Lcom/adsdk/sdk/AdResponse;Z)V
    invoke-static {v0, v1, v2}, Lcom/adsdk/sdk/AdManager;->access$24(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;Z)V

    .line 445
    return-void
.end method

.method public onFullscreenFailed()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->finishCustomEventFullscreen()V
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$23(Lcom/adsdk/sdk/AdManager;)V

    .line 427
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->loadCustomEventFullscreen()V
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$16(Lcom/adsdk/sdk/AdManager;)V

    .line 428
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->customEventFullscreen:Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$17(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$14(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$14(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 431
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v1}, Lcom/adsdk/sdk/AdManager;->access$14(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v1

    # invokes: Lcom/adsdk/sdk/AdManager;->notifyAdLoaded(Lcom/adsdk/sdk/AdResponse;)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->access$15(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;)V

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->isVideoAdsEnabled:Z
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$6(Lcom/adsdk/sdk/AdManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->alreadyRequestedVideo:Z
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$7(Lcom/adsdk/sdk/AdManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->isInterstitialAdsEnabled:Z
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$0(Lcom/adsdk/sdk/AdManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->alreadyRequestedInterstitial:Z
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$2(Lcom/adsdk/sdk/AdManager;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 434
    :cond_3
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    const/4 v1, 0x1

    # invokes: Lcom/adsdk/sdk/AdManager;->requestAdInternal(Z)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->access$18(Lcom/adsdk/sdk/AdManager;Z)V

    goto :goto_0

    .line 436
    :cond_4
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->notifyNoAdFound()V
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$10(Lcom/adsdk/sdk/AdManager;)V

    goto :goto_0
.end method

.method public onFullscreenLeftApplication()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->notifyAdClicked()V
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$22(Lcom/adsdk/sdk/AdManager;)V

    .line 422
    return-void
.end method

.method public onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    invoke-static {v0, p1}, Lcom/adsdk/sdk/AdManager;->access$21(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 416
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v1}, Lcom/adsdk/sdk/AdManager;->access$14(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v1

    # invokes: Lcom/adsdk/sdk/AdManager;->notifyAdLoaded(Lcom/adsdk/sdk/AdResponse;)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->access$15(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;)V

    .line 417
    return-void
.end method

.method public onFullscreenOpened()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method
