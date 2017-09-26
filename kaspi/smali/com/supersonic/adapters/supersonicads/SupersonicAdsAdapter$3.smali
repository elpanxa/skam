.class Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;
.super Ljava/lang/Object;
.source "SupersonicAdsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$supersonicConfig:Ljava/util/HashMap;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    iput-object p2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->val$appKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->val$userId:Ljava/lang/String;

    iput-object p5, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->val$supersonicConfig:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 510
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supersonicads/sdk/SSAFactory;->getPublisherInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/SSAPublisher;

    move-result-object v1

    # setter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;
    invoke-static {v0, v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$002(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Lcom/supersonicads/sdk/SSAPublisher;)Lcom/supersonicads/sdk/SSAPublisher;

    .line 512
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$000(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonicads/sdk/SSAPublisher;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->val$appKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->val$supersonicConfig:Ljava/util/HashMap;

    new-instance v4, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;

    invoke-direct {v4, p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;-><init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/supersonicads/sdk/SSAPublisher;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V

    .line 565
    return-void
.end method
