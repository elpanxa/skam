.class Lcom/revmob/internal/MarketAsyncManager$2$1;
.super Lcom/revmob/internal/RevMobWebViewClient;
.source "MarketAsyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/internal/MarketAsyncManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/revmob/internal/MarketAsyncManager$2;


# direct methods
.method constructor <init>(Lcom/revmob/internal/MarketAsyncManager$2;Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/revmob/internal/MarketAsyncManager$2$1;->this$1:Lcom/revmob/internal/MarketAsyncManager$2;

    invoke-direct {p0, p2, p3}, Lcom/revmob/internal/RevMobWebViewClient;-><init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager$2$1;->this$1:Lcom/revmob/internal/MarketAsyncManager$2;

    iget-object v0, v0, Lcom/revmob/internal/MarketAsyncManager$2;->this$0:Lcom/revmob/internal/MarketAsyncManager;

    invoke-virtual {v0, p2}, Lcom/revmob/internal/MarketAsyncManager;->openUrlInTheBrowser(Ljava/lang/String;)V

    .line 115
    return-void
.end method
