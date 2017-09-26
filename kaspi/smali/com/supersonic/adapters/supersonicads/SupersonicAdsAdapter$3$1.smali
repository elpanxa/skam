.class Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;
.super Ljava/lang/Object;
.source "SupersonicAdsAdapter.java"

# interfaces
.implements Lcom/supersonicads/sdk/listeners/OnInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;


# direct methods
.method constructor <init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialAdClicked()V

    .line 556
    :cond_0
    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialAdClosed()V

    .line 562
    :cond_0
    return-void
.end method

.method public onInterstitialAvailability(Z)V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialAvailability(Z)V

    .line 535
    :cond_0
    return-void
.end method

.method public onInterstitialInitFail(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildAdapterInitFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 528
    :cond_0
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialInitSuccess()V

    .line 519
    :cond_0
    return-void
.end method

.method public onInterstitialShowFail(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 544
    :cond_0
    return-void
.end method

.method public onInterstitialShowSuccess()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialShowSuccess()V

    .line 550
    :cond_0
    return-void
.end method
