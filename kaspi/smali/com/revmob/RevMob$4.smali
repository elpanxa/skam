.class Lcom/revmob/RevMob$4;
.super Ljava/lang/Object;
.source "RevMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/RevMob;->hideLoadedBanner()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/RevMob;


# direct methods
.method constructor <init>(Lcom/revmob/RevMob;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/revmob/RevMob$4;->this$0:Lcom/revmob/RevMob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 525
    :try_start_0
    # getter for: Lcom/revmob/RevMob;->bannerAd:Lcom/revmob/ads/banner/RevMobBanner;
    invoke-static {}, Lcom/revmob/RevMob;->access$000()Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/ads/banner/RevMobBanner;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    # getter for: Lcom/revmob/RevMob;->bannerLayout:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v0

    # getter for: Lcom/revmob/RevMob;->bannerAd:Lcom/revmob/ads/banner/RevMobBanner;
    invoke-static {}, Lcom/revmob/RevMob;->access$000()Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 531
    return-void

    .line 526
    :catch_0
    move-exception v0

    goto :goto_0
.end method
