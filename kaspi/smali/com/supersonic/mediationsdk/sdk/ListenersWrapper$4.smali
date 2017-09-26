.class Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$4;
.super Ljava/lang/Object;
.source "ListenersWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$4;->this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$4;->this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    # getter for: Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;
    invoke-static {v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->access$100(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdClosed()V

    .line 124
    return-void
.end method
