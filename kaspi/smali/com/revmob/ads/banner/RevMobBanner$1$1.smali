.class Lcom/revmob/ads/banner/RevMobBanner$1$1;
.super Ljava/lang/Object;
.source "RevMobBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/banner/RevMobBanner$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/revmob/ads/banner/RevMobBanner$1;


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/RevMobBanner$1;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner$1$1;->this$1:Lcom/revmob/ads/banner/RevMobBanner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$1$1;->this$1:Lcom/revmob/ads/banner/RevMobBanner$1;

    iget-object v0, v0, Lcom/revmob/ads/banner/RevMobBanner$1;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CLICKED:Lcom/revmob/ads/internal/AdState;

    # setter for: Lcom/revmob/ads/banner/RevMobBanner;->state:Lcom/revmob/ads/internal/AdState;
    invoke-static {v0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$002(Lcom/revmob/ads/banner/RevMobBanner;Lcom/revmob/ads/internal/AdState;)Lcom/revmob/ads/internal/AdState;

    .line 83
    new-instance v0, Lcom/revmob/internal/MarketAsyncManager;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner$1$1;->this$1:Lcom/revmob/ads/banner/RevMobBanner$1;

    iget-object v1, v1, Lcom/revmob/ads/banner/RevMobBanner$1;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$100(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/banner/RevMobBanner$1$1;->this$1:Lcom/revmob/ads/banner/RevMobBanner$1;

    iget-object v2, v2, Lcom/revmob/ads/banner/RevMobBanner$1;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;
    invoke-static {v2}, Lcom/revmob/ads/banner/RevMobBanner;->access$200(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/ads/banner/client/BannerData;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/banner/RevMobBanner$1$1;->this$1:Lcom/revmob/ads/banner/RevMobBanner$1;

    iget-object v3, v3, Lcom/revmob/ads/banner/RevMobBanner$1;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->publisherListener:Lcom/revmob/RevMobAdsListener;
    invoke-static {v3}, Lcom/revmob/ads/banner/RevMobBanner;->access$300(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/RevMobAdsListener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/revmob/internal/MarketAsyncManager;-><init>(Landroid/app/Activity;Lcom/revmob/client/AdData;Lcom/revmob/RevMobAdsListener;)V

    .line 84
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/revmob/internal/MarketAsyncManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$1$1;->this$1:Lcom/revmob/ads/banner/RevMobBanner$1;

    iget-object v0, v0, Lcom/revmob/ads/banner/RevMobBanner$1;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/RevMobBanner;->hide()V

    .line 86
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$1$1;->this$1:Lcom/revmob/ads/banner/RevMobBanner$1;

    iget-object v0, v0, Lcom/revmob/ads/banner/RevMobBanner$1;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner$1$1;->this$1:Lcom/revmob/ads/banner/RevMobBanner$1;

    iget-object v1, v1, Lcom/revmob/ads/banner/RevMobBanner$1;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->placementId:Ljava/lang/String;
    invoke-static {v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$400(Lcom/revmob/ads/banner/RevMobBanner;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->load(Ljava/lang/String;)V

    .line 87
    return-void
.end method
