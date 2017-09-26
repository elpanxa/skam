.class Lcom/revmob/ads/banner/RevMobBanner$2;
.super Ljava/lang/Object;
.source "RevMobBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/banner/RevMobBanner;->updateWithData(Lcom/revmob/client/AdData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/banner/RevMobBanner;


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/RevMobBanner;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner$2;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$2;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;
    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$500(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$2;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;
    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$600(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$2;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-virtual {v0, v2}, Lcom/revmob/ads/banner/RevMobBanner;->hide(Z)V

    .line 162
    :goto_0
    return-void

    .line 154
    :cond_1
    sput v1, Lcom/revmob/ads/banner/RevMobBanner;->bannerCount:I

    .line 155
    const/4 v0, 0x0

    sput-object v0, Lcom/revmob/ads/banner/RevMobBanner;->usedCampaigns:Ljava/util/ArrayList;

    .line 156
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$2;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;
    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$500(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$2;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-virtual {v0, v2}, Lcom/revmob/ads/banner/RevMobBanner;->addAdView(Z)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$2;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-virtual {v0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->addAdView(Z)V

    goto :goto_0
.end method
