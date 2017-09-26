.class Lcom/revmob/RevMob$2;
.super Ljava/lang/Object;
.source "RevMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/RevMob;->preloadBanner(Landroid/app/Activity;IIIIILjava/lang/String;Lcom/revmob/RevMobAdsListener;)Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/RevMob;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$gravity:I

.field final synthetic val$height:I

.field final synthetic val$left:I

.field final synthetic val$listener:Lcom/revmob/RevMobAdsListener;

.field final synthetic val$placementId:Ljava/lang/String;

.field final synthetic val$top:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/revmob/RevMob;Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;IIIII)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/revmob/RevMob$2;->this$0:Lcom/revmob/RevMob;

    iput-object p2, p0, Lcom/revmob/RevMob$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/revmob/RevMob$2;->val$placementId:Ljava/lang/String;

    iput-object p4, p0, Lcom/revmob/RevMob$2;->val$listener:Lcom/revmob/RevMobAdsListener;

    iput p5, p0, Lcom/revmob/RevMob$2;->val$width:I

    iput p6, p0, Lcom/revmob/RevMob$2;->val$height:I

    iput p7, p0, Lcom/revmob/RevMob$2;->val$left:I

    iput p8, p0, Lcom/revmob/RevMob$2;->val$top:I

    iput p9, p0, Lcom/revmob/RevMob$2;->val$gravity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x30

    .line 470
    :try_start_0
    # getter for: Lcom/revmob/RevMob;->bannerAd:Lcom/revmob/ads/banner/RevMobBanner;
    invoke-static {}, Lcom/revmob/RevMob;->access$000()Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/revmob/RevMob$2;->this$0:Lcom/revmob/RevMob;

    iget-object v1, p0, Lcom/revmob/RevMob$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/revmob/RevMob;->releaseBanner(Landroid/app/Activity;)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/revmob/RevMob$2;->this$0:Lcom/revmob/RevMob;

    iget-object v1, p0, Lcom/revmob/RevMob$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/revmob/RevMob$2;->val$placementId:Ljava/lang/String;

    iget-object v3, p0, Lcom/revmob/RevMob$2;->val$listener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    # setter for: Lcom/revmob/RevMob;->bannerAd:Lcom/revmob/ads/banner/RevMobBanner;
    invoke-static {v0}, Lcom/revmob/RevMob;->access$002(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/ads/banner/RevMobBanner;

    .line 475
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/RevMob$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/revmob/RevMob;->bannerLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/revmob/RevMob;->access$102(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 476
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/RevMob$2;->val$width:I

    iget v2, p0, Lcom/revmob/RevMob$2;->val$height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    # setter for: Lcom/revmob/RevMob;->bannerParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/revmob/RevMob;->access$302(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    .line 477
    iget v0, p0, Lcom/revmob/RevMob$2;->val$left:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/revmob/RevMob$2;->val$top:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/revmob/RevMob$2;->val$width:I

    iget-object v1, p0, Lcom/revmob/RevMob$2;->val$activity:Landroid/app/Activity;

    sget v2, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:I

    invoke-static {v1, v2}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/revmob/RevMob$2;->val$height:I

    iget-object v1, p0, Lcom/revmob/RevMob$2;->val$activity:Landroid/app/Activity;

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 478
    :cond_1
    # getter for: Lcom/revmob/RevMob;->bannerParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/revmob/RevMob;->access$300()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/revmob/RevMob$2;->val$left:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 479
    # getter for: Lcom/revmob/RevMob;->bannerParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/revmob/RevMob;->access$300()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/revmob/RevMob$2;->val$top:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 480
    # getter for: Lcom/revmob/RevMob;->bannerAd:Lcom/revmob/ads/banner/RevMobBanner;
    invoke-static {}, Lcom/revmob/RevMob;->access$000()Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->setChangeBannerParams(Z)V

    .line 481
    # getter for: Lcom/revmob/RevMob;->bannerAd:Lcom/revmob/ads/banner/RevMobBanner;
    invoke-static {}, Lcom/revmob/RevMob;->access$000()Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    iget v1, p0, Lcom/revmob/RevMob$2;->val$width:I

    iget v2, p0, Lcom/revmob/RevMob$2;->val$height:I

    invoke-virtual {v0, v1, v2}, Lcom/revmob/ads/banner/RevMobBanner;->setCustomSize(II)V

    .line 485
    :goto_0
    iget v0, p0, Lcom/revmob/RevMob$2;->val$gravity:I

    if-ne v0, v4, :cond_3

    .line 486
    # getter for: Lcom/revmob/RevMob;->bannerLayout:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 490
    :goto_1
    iget-object v0, p0, Lcom/revmob/RevMob$2;->val$activity:Landroid/app/Activity;

    # getter for: Lcom/revmob/RevMob;->bannerLayout:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    iget-object v0, p0, Lcom/revmob/RevMob$2;->val$activity:Landroid/app/Activity;

    # setter for: Lcom/revmob/RevMob;->bannerActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/revmob/RevMob;->access$202(Landroid/app/Activity;)Landroid/app/Activity;

    .line 495
    :goto_2
    return-void

    .line 483
    :cond_2
    # getter for: Lcom/revmob/RevMob;->bannerParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/revmob/RevMob;->access$300()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 488
    :cond_3
    :try_start_1
    # getter for: Lcom/revmob/RevMob;->bannerLayout:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
