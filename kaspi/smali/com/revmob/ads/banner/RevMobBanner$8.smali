.class Lcom/revmob/ads/banner/RevMobBanner$8;
.super Ljava/lang/Object;
.source "RevMobBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/banner/RevMobBanner;->removeAdView2Block()V
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
    .line 464
    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner$8;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$8;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;
    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$600(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 469
    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner$8;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;
    invoke-static {v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$600(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 470
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$8;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    const/4 v1, 0x0

    # setter for: Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$602(Lcom/revmob/ads/banner/RevMobBanner;Landroid/view/View;)Landroid/view/View;

    .line 471
    return-void
.end method
