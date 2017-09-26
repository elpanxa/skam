.class Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$5;
.super Ljava/lang/Object;
.source "ListenersWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onVideoAvailabilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

.field final synthetic val$available:Z


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Z)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$5;->this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    iput-boolean p2, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$5;->val$available:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$5;->this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    # getter for: Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;
    invoke-static {v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->access$100(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$5;->val$available:Z

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onVideoAvailabilityChanged(Z)V

    .line 140
    return-void
.end method
