.class Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$1;
.super Ljava/lang/Object;
.source "SupersonicAdsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$1;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    iput-object p2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$1;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supersonicads/sdk/SSAFactory;->getPublisherInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/SSAPublisher;

    move-result-object v1

    # setter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;
    invoke-static {v0, v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$002(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Lcom/supersonicads/sdk/SSAPublisher;)Lcom/supersonicads/sdk/SSAPublisher;

    .line 264
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$1;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;
    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$100(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallInitSuccess()V

    .line 265
    return-void
.end method
