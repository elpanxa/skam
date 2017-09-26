.class abstract Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ForEachMoPubIdRunnable"
.end annotation


# instance fields
.field private final mCustomEventClass:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;"
        }
    .end annotation
.end field

.field private final mThirdPartyId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 507
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 508
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mCustomEventClass:Ljava/lang/Class;

    .line 509
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mThirdPartyId:Ljava/lang/String;

    .line 510
    return-void
.end method


# virtual methods
.method protected abstract forEach(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public run()V
    .locals 3

    .prologue
    .line 516
    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$800(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedVideoData;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mCustomEventClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mThirdPartyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/RewardedVideoData;->getMoPubIdsForAdNetwork(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 518
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 519
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->forEach(Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :cond_0
    return-void
.end method
