.class final Lcom/mopub/mobileads/MoPubRewardedVideoManager$4;
.super Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected forEach(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 415
    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$400(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$400(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoStarted(Ljava/lang/String;)V

    .line 418
    :cond_0
    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$600(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/AdRequestStatusMapping;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdRequestStatusMapping;->getImpressionTrackerUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v1

    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$700(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 421
    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$600(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/AdRequestStatusMapping;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdRequestStatusMapping;->clearImpressionUrl(Ljava/lang/String;)V

    .line 422
    return-void
.end method
