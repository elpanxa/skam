.class Lcom/revmob/ads/link/RevMobLink$1;
.super Ljava/lang/Object;
.source "RevMobLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/link/RevMobLink;->open()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/link/RevMobLink;


# direct methods
.method constructor <init>(Lcom/revmob/ads/link/RevMobLink;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/revmob/ads/link/RevMobLink$1;->this$0:Lcom/revmob/ads/link/RevMobLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    new-instance v0, Lcom/revmob/internal/MarketAsyncManager;

    iget-object v1, p0, Lcom/revmob/ads/link/RevMobLink$1;->this$0:Lcom/revmob/ads/link/RevMobLink;

    # getter for: Lcom/revmob/ads/link/RevMobLink;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/revmob/ads/link/RevMobLink;->access$000(Lcom/revmob/ads/link/RevMobLink;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/link/RevMobLink$1;->this$0:Lcom/revmob/ads/link/RevMobLink;

    # getter for: Lcom/revmob/ads/link/RevMobLink;->data:Lcom/revmob/ads/link/client/LinkData;
    invoke-static {v2}, Lcom/revmob/ads/link/RevMobLink;->access$100(Lcom/revmob/ads/link/RevMobLink;)Lcom/revmob/ads/link/client/LinkData;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/link/RevMobLink$1;->this$0:Lcom/revmob/ads/link/RevMobLink;

    # getter for: Lcom/revmob/ads/link/RevMobLink;->publisherListener:Lcom/revmob/RevMobAdsListener;
    invoke-static {v3}, Lcom/revmob/ads/link/RevMobLink;->access$200(Lcom/revmob/ads/link/RevMobLink;)Lcom/revmob/RevMobAdsListener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/revmob/internal/MarketAsyncManager;-><init>(Landroid/app/Activity;Lcom/revmob/client/AdData;Lcom/revmob/RevMobAdsListener;)V

    .line 95
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/revmob/internal/MarketAsyncManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method
