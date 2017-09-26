.class final Lcom/mopub/mobileads/MoPubRewardedVideoManager$3;
.super Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$errorCode:Lcom/mopub/mobileads/MoPubErrorCode;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .prologue
    .line 401
    iput-object p3, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$3;->val$errorCode:Lcom/mopub/mobileads/MoPubErrorCode;

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
    .line 404
    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    # invokes: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->cancelTimeouts(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$300(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;)V

    .line 405
    # getter for: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$3;->val$errorCode:Lcom/mopub/mobileads/MoPubErrorCode;

    # invokes: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    invoke-static {v0, p1, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$500(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 406
    return-void
.end method
