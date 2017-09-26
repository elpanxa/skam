.class Lcom/revmob/internal/MarketAsyncManager$1;
.super Ljava/lang/Object;
.source "MarketAsyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/internal/MarketAsyncManager;->openUrlInTheWebView(Ljava/lang/String;)V
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
    .line 94
    iput-object p1, p0, Lcom/revmob/internal/MarketAsyncManager$1;->this$0:Lcom/revmob/internal/MarketAsyncManager;

    iput-object p2, p0, Lcom/revmob/internal/MarketAsyncManager$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager$1;->this$0:Lcom/revmob/internal/MarketAsyncManager;

    # getter for: Lcom/revmob/internal/MarketAsyncManager;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/revmob/internal/MarketAsyncManager;->access$000(Lcom/revmob/internal/MarketAsyncManager;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const-string v1, "marketURL"

    iget-object v2, p0, Lcom/revmob/internal/MarketAsyncManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager$1;->this$0:Lcom/revmob/internal/MarketAsyncManager;

    # getter for: Lcom/revmob/internal/MarketAsyncManager;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/revmob/internal/MarketAsyncManager;->access$000(Lcom/revmob/internal/MarketAsyncManager;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 101
    return-void
.end method
