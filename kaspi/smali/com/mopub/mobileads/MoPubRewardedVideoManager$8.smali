.class final Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$customEventClass:Ljava/lang/Class;

.field final synthetic val$moPubReward:Lcom/mopub/common/MoPubReward;

.field final synthetic val$thirdPartyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;->val$customEventClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;->val$thirdPartyId:Ljava/lang/String;

    iput-object p3, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;->val$moPubReward:Lcom/mopub/common/MoPubReward;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 470
    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$800(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedVideoData;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;->val$customEventClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;->val$thirdPartyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/RewardedVideoData;->getMoPubIdsForAdNetwork(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 471
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 472
    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$400(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$400(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;->val$moPubReward:Lcom/mopub/common/MoPubReward;

    invoke-interface {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V

    .line 475
    :cond_0
    return-void
.end method
