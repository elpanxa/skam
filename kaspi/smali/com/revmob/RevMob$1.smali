.class Lcom/revmob/RevMob$1;
.super Ljava/lang/Object;
.source "RevMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/RevMob;->releaseBanner(Landroid/app/Activity;)V
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
    .line 358
    iput-object p1, p0, Lcom/revmob/RevMob$1;->this$0:Lcom/revmob/RevMob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 362
    :try_start_0
    # getter for: Lcom/revmob/RevMob;->bannerLayout:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v0

    # getter for: Lcom/revmob/RevMob;->bannerAd:Lcom/revmob/ads/banner/RevMobBanner;
    invoke-static {}, Lcom/revmob/RevMob;->access$000()Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 363
    # getter for: Lcom/revmob/RevMob;->bannerLayout:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 364
    const/4 v0, 0x0

    # setter for: Lcom/revmob/RevMob;->bannerLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/revmob/RevMob;->access$102(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 365
    const/4 v0, 0x0

    # setter for: Lcom/revmob/RevMob;->bannerAd:Lcom/revmob/ads/banner/RevMobBanner;
    invoke-static {v0}, Lcom/revmob/RevMob;->access$002(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/ads/banner/RevMobBanner;

    .line 366
    const/4 v0, 0x0

    # setter for: Lcom/revmob/RevMob;->bannerActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/revmob/RevMob;->access$202(Landroid/app/Activity;)Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
