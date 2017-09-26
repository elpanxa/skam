.class Lcom/supersonic/mediationsdk/OfferwallManager$1;
.super Ljava/lang/Object;
.source "OfferwallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/mediationsdk/OfferwallManager;->initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/OfferwallManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/OfferwallManager;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/supersonic/mediationsdk/OfferwallManager$1;->this$0:Lcom/supersonic/mediationsdk/OfferwallManager;

    iput-object p2, p0, Lcom/supersonic/mediationsdk/OfferwallManager$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/supersonic/mediationsdk/OfferwallManager$1;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 59
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/SupersonicObject;

    .line 72
    iget-object v1, p0, Lcom/supersonic/mediationsdk/OfferwallManager$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager$1;->this$0:Lcom/supersonic/mediationsdk/OfferwallManager;

    const-string v1, "No Internet Connection"

    invoke-static {v1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    # invokes: Lcom/supersonic/mediationsdk/OfferwallManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/OfferwallManager;->access$000(Lcom/supersonic/mediationsdk/OfferwallManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 108
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/OfferwallManager$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/supersonic/mediationsdk/OfferwallManager$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/SupersonicObject;->getServerResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_5

    .line 81
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    iget-object v2, p0, Lcom/supersonic/mediationsdk/OfferwallManager$1;->this$0:Lcom/supersonic/mediationsdk/OfferwallManager;

    iget-object v3, p0, Lcom/supersonic/mediationsdk/OfferwallManager$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/supersonic/mediationsdk/OfferwallManager$1;->val$userId:Ljava/lang/String;

    # invokes: Lcom/supersonic/mediationsdk/OfferwallManager;->startAdapters(Landroid/app/Activity;Ljava/lang/String;Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Ljava/util/ArrayList;
    invoke-static {v2, v3, v4, v1}, Lcom/supersonic/mediationsdk/OfferwallManager;->access$100(Lcom/supersonic/mediationsdk/OfferwallManager;Landroid/app/Activity;Ljava/lang/String;Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Ljava/util/ArrayList;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    :cond_1
    const-string v0, "Please check configurations for Offerwall adapters"

    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildAdapterInitFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/supersonic/mediationsdk/OfferwallManager$1;->this$0:Lcom/supersonic/mediationsdk/OfferwallManager;

    # invokes: Lcom/supersonic/mediationsdk/OfferwallManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    invoke-static {v1, v0}, Lcom/supersonic/mediationsdk/OfferwallManager;->access$000(Lcom/supersonic/mediationsdk/OfferwallManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/SupersonicObject;->addAll(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getReponseError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 95
    if-nez v0, :cond_4

    .line 96
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildNoConfigurationAvailableError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 98
    :cond_4
    iget-object v1, p0, Lcom/supersonic/mediationsdk/OfferwallManager$1;->this$0:Lcom/supersonic/mediationsdk/OfferwallManager;

    # invokes: Lcom/supersonic/mediationsdk/OfferwallManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    invoke-static {v1, v0}, Lcom/supersonic/mediationsdk/OfferwallManager;->access$000(Lcom/supersonic/mediationsdk/OfferwallManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 104
    :cond_5
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildNoConfigurationAvailableError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/supersonic/mediationsdk/OfferwallManager$1;->this$0:Lcom/supersonic/mediationsdk/OfferwallManager;

    # invokes: Lcom/supersonic/mediationsdk/OfferwallManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    invoke-static {v1, v0}, Lcom/supersonic/mediationsdk/OfferwallManager;->access$000(Lcom/supersonic/mediationsdk/OfferwallManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method
