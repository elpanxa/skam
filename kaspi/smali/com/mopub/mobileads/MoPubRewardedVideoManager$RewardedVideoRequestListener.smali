.class public Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Lcom/mopub/network/AdRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RewardedVideoRequestListener"
.end annotation


# instance fields
.field public final adUnitId:Ljava/lang/String;

.field private final mVideoManager:Lcom/mopub/mobileads/MoPubRewardedVideoManager;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;->adUnitId:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;->mVideoManager:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    .line 64
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;->mVideoManager:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;->adUnitId:Ljava/lang/String;

    # invokes: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onAdError(Lcom/mopub/volley/VolleyError;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$100(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/volley/VolleyError;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onSuccess(Lcom/mopub/network/AdResponse;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;->mVideoManager:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;->adUnitId:Ljava/lang/String;

    # invokes: Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onAdSuccess(Lcom/mopub/network/AdResponse;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/network/AdResponse;Ljava/lang/String;)V

    .line 69
    return-void
.end method
