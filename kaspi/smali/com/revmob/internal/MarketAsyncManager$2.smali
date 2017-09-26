.class Lcom/revmob/internal/MarketAsyncManager$2;
.super Ljava/lang/Object;
.source "MarketAsyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/internal/MarketAsyncManager;->openUrlInTheWebViewWithPost(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/internal/MarketAsyncManager;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/revmob/internal/MarketAsyncManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/revmob/internal/MarketAsyncManager$2;->this$0:Lcom/revmob/internal/MarketAsyncManager;

    iput-object p2, p0, Lcom/revmob/internal/MarketAsyncManager$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    new-instance v0, Lcom/revmob/ads/fullscreen/internal/FullscreenWebview;

    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager$2;->this$0:Lcom/revmob/internal/MarketAsyncManager;

    # getter for: Lcom/revmob/internal/MarketAsyncManager;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/revmob/internal/MarketAsyncManager;->access$000(Lcom/revmob/internal/MarketAsyncManager;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/revmob/internal/MarketAsyncManager$2$1;

    invoke-direct {v2, p0, v3, v3}, Lcom/revmob/internal/MarketAsyncManager$2$1;-><init>(Lcom/revmob/internal/MarketAsyncManager$2;Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;)V

    invoke-direct {v0, v1, v2}, Lcom/revmob/ads/fullscreen/internal/FullscreenWebview;-><init>(Landroid/content/Context;Lcom/revmob/internal/RevMobWebViewClient;)V

    .line 117
    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager$2;->val$url:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/revmob/ads/fullscreen/internal/FullscreenWebview;->postUrl(Ljava/lang/String;[B)V

    .line 118
    return-void
.end method
