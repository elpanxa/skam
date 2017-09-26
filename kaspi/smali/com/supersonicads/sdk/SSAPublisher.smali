.class public interface abstract Lcom/supersonicads/sdk/SSAPublisher;
.super Ljava/lang/Object;
.source "SSAPublisher.java"


# virtual methods
.method public abstract forceShowInterstitial()V
.end method

.method public abstract getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V
.end method

.method public abstract initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnInterstitialListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract isInterstitialAdAvailable()Z
.end method

.method public abstract onPause(Landroid/app/Activity;)V
.end method

.method public abstract onResume(Landroid/app/Activity;)V
.end method

.method public abstract release(Landroid/app/Activity;)V
.end method

.method public abstract runGenericFunction(Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showInterstitial()V
.end method

.method public abstract showOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showRewardedVideo()V
.end method
