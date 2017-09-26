.class Lcom/supersonicads/sdk/controller/SupersonicWebView$3;
.super Ljava/lang/Object;
.source "SupersonicWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$type:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2570
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->val$type:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2572
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->val$type:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_1

    .line 2574
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/supersonicads/sdk/data/AdUnitsState;->setRewardedVideoInitSuccess(Z)V

    .line 2578
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRVInitFail(message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVInitFail(Ljava/lang/String;)V

    .line 2599
    :cond_0
    :goto_0
    return-void

    .line 2583
    :cond_1
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->val$type:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_2

    .line 2585
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/supersonicads/sdk/data/AdUnitsState;->setInterstitialInitSuccess(Z)V

    .line 2588
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/AdUnitsState;->reportInitInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2589
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterstitialInitFail(message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/supersonicads/sdk/listeners/OnInterstitialListener;->onInterstitialInitFail(Ljava/lang/String;)V

    .line 2591
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/supersonicads/sdk/data/AdUnitsState;->setReportInitInterstitial(Z)V

    goto :goto_0

    .line 2594
    :cond_2
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->val$type:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_3

    .line 2595
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/supersonicads/sdk/listeners/OnOfferWallListener;->onOWShowFail(Ljava/lang/String;)V

    goto :goto_0

    .line 2596
    :cond_3
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->val$type:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_0

    .line 2597
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/supersonicads/sdk/listeners/OnOfferWallListener;->onGetOWCreditsFailed(Ljava/lang/String;)V

    goto :goto_0
.end method
