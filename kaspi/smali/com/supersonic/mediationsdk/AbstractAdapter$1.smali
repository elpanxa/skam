.class Lcom/supersonic/mediationsdk/AbstractAdapter$1;
.super Ljava/util/TimerTask;
.source "AbstractAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/mediationsdk/AbstractAdapter;->startTimer(Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/AbstractAdapter;

.field final synthetic val$listener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/AbstractAdapter;Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter$1;->this$0:Lcom/supersonic/mediationsdk/AbstractAdapter;

    iput-object p2, p0, Lcom/supersonic/mediationsdk/AbstractAdapter$1;->val$listener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter$1;->val$listener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/supersonic/mediationsdk/AbstractAdapter$1;->this$0:Lcom/supersonic/mediationsdk/AbstractAdapter;

    invoke-interface {v0, v1, v2}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 362
    return-void
.end method
