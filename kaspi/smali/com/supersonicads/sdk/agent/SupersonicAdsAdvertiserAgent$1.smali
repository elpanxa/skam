.class Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;
.super Ljava/lang/Object;
.source "SupersonicAdsAdvertiserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->reportAppStarted(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    iput-object p2, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    iget-object v1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->getRequestParameters(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->access$000(Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/campaigns/onLoad?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :try_start_0
    new-instance v1, Ljava/net/URL;

    # getter for: Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_PROTOCOL:Ljava/lang/String;
    invoke-static {}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->access$100()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_HOST_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->access$200()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_PORT:I
    invoke-static {}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->access$300()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    iget-object v2, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->performRequest(Ljava/net/URL;Landroid/content/Context;)Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setReportAppStarted(Z)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method
