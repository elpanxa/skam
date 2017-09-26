.class Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$1;
.super Ljava/lang/Object;
.source "SupersonicAdsPublisherAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;-><init>(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$1;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    iput-object p2, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$1;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    new-instance v1, Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;
    invoke-static {}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->access$100()Landroid/content/MutableContextWrapper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->access$002(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .line 53
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$1;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    # getter for: Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;
    invoke-static {v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->access$000(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;)Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$1;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    # getter for: Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;
    invoke-static {v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->access$000(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;)Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-result-object v0

    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getDebugMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setDebugMode(I)V

    .line 55
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$1;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    # getter for: Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;
    invoke-static {v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->access$000(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;)Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadController()V

    .line 56
    return-void
.end method
