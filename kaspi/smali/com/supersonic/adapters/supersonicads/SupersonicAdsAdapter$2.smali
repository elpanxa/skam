.class Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;
.super Ljava/lang/Object;
.source "SupersonicAdsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    iput-object p2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->val$appKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 298
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supersonicads/sdk/SSAFactory;->getPublisherInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/SSAPublisher;

    move-result-object v1

    # setter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;
    invoke-static {v0, v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$002(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Lcom/supersonicads/sdk/SSAPublisher;)Lcom/supersonicads/sdk/SSAPublisher;

    .line 300
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # invokes: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getRewardedVideoExtraParams()Ljava/util/HashMap;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Ljava/util/HashMap;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-virtual {v4}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":initRewardedVideo(appKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->val$appKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->val$userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extraParams:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    # invokes: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$300(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 307
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;
    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$000(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonicads/sdk/SSAPublisher;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->val$appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->val$userId:Ljava/lang/String;

    new-instance v4, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;

    invoke-direct {v4, p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;-><init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/supersonicads/sdk/SSAPublisher;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V

    .line 390
    return-void
.end method
