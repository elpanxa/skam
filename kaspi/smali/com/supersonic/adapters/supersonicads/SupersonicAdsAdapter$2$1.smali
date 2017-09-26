.class Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;
.super Ljava/lang/Object;
.source "SupersonicAdsAdapter.java"

# interfaces
.implements Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;


# direct methods
.method constructor <init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRVAdClosed()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdClosed(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 376
    :cond_0
    return-void
.end method

.method public onRVAdCredited(I)V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mPlacementHolder:Lcom/supersonic/mediationsdk/model/PlacementsHolder;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1100(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;
    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$500(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v2, v2, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v1, v0, v2}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdRewarded(Lcom/supersonic/mediationsdk/model/Placement;Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 370
    :cond_0
    return-void
.end method

.method public onRVAdOpened()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdOpened(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 382
    :cond_0
    return-void
.end method

.method public onRVGeneric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public onRVInitFail(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    const/4 v1, 0x0

    # invokes: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->setRVInitStatus(Z)V
    invoke-static {v0, v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$900(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Z)V

    .line 348
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # invokes: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelTimer()V
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1000(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)V

    .line 349
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildAdapterInitFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v2, v2, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v1, v0, v2}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 354
    :cond_0
    return-void
.end method

.method public onRVInitSuccess(Lcom/supersonicads/sdk/data/AdUnitsReady;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 323
    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v2, v2, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # invokes: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelTimer()V
    invoke-static {v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$700(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)V

    .line 324
    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v2, v2, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # invokes: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->setRVInitStatus(Z)V
    invoke-static {v2, v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$800(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Z)V

    .line 329
    :try_start_0
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsReady;->getNumOfAdUnits()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 333
    :goto_0
    if-lez v2, :cond_1

    .line 335
    :goto_1
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;
    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$500(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->setVideoAvailability(Z)Z

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v2, v2, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v1, v2}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoInitSuccess(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 340
    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;
    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$500(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v1

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v2, v2, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v0, v1, v2}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 343
    :cond_0
    return-void

    .line 330
    :catch_0
    move-exception v2

    .line 331
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v5, "onRVInitSuccess:parseInt()"

    invoke-virtual {v3, v4, v5, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 333
    goto :goto_1
.end method

.method public onRVNoMoreOffers()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # invokes: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelTimer()V
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$400(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)V

    .line 313
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$500(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->setVideoAvailability(Z)Z

    move-result v0

    .line 315
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoInitSuccess(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 317
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;
    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$500(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v1

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v2, v2, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v0, v1, v2}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 319
    :cond_0
    return-void
.end method

.method public onRVShowFail(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildShowVideoFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v2, v2, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v1, v0, v2}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 362
    :cond_0
    return-void
.end method
