.class Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$8;
.super Ljava/lang/Object;
.source "ListenersWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdRewarded(Lcom/supersonic/mediationsdk/model/Placement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

.field final synthetic val$placement:Lcom/supersonic/mediationsdk/model/Placement;


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/model/Placement;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$8;->this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    iput-object p2, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$8;->val$placement:Lcom/supersonic/mediationsdk/model/Placement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$8;->this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    # getter for: Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;
    invoke-static {v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->access$100(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$8;->val$placement:Lcom/supersonic/mediationsdk/model/Placement;

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdRewarded(Lcom/supersonic/mediationsdk/model/Placement;)V

    .line 189
    return-void
.end method
