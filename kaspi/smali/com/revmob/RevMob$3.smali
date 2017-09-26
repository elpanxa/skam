.class Lcom/revmob/RevMob$3;
.super Ljava/lang/Object;
.source "RevMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/RevMob;->showLoadedBanner()Z
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
    .line 505
    iput-object p1, p0, Lcom/revmob/RevMob$3;->this$0:Lcom/revmob/RevMob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 507
    # getter for: Lcom/revmob/RevMob;->bannerLayout:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v0

    # getter for: Lcom/revmob/RevMob;->bannerAd:Lcom/revmob/ads/banner/RevMobBanner;
    invoke-static {}, Lcom/revmob/RevMob;->access$000()Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v1

    # getter for: Lcom/revmob/RevMob;->bannerParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/revmob/RevMob;->access$300()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    return-void
.end method
