.class Lcom/revmob/ads/banner/RevMobBanner$6;
.super Ljava/lang/Object;
.source "RevMobBanner.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/banner/RevMobBanner;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/banner/RevMobBanner;

.field final synthetic val$adView1Shown:Z

.field final synthetic val$refreshBanner:Z


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/RevMobBanner;ZZ)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner$6;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    iput-boolean p2, p0, Lcom/revmob/ads/banner/RevMobBanner$6;->val$adView1Shown:Z

    iput-boolean p3, p0, Lcom/revmob/ads/banner/RevMobBanner$6;->val$refreshBanner:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/revmob/ads/banner/RevMobBanner$6;->val$adView1Shown:Z

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$6;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # invokes: Lcom/revmob/ads/banner/RevMobBanner;->removeAdViewBlock()V
    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$800(Lcom/revmob/ads/banner/RevMobBanner;)V

    .line 424
    :goto_0
    iget-boolean v0, p0, Lcom/revmob/ads/banner/RevMobBanner$6;->val$refreshBanner:Z

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$6;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->HIDDEN:Lcom/revmob/ads/internal/AdState;

    # setter for: Lcom/revmob/ads/banner/RevMobBanner;->state:Lcom/revmob/ads/internal/AdState;
    invoke-static {v0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$002(Lcom/revmob/ads/banner/RevMobBanner;Lcom/revmob/ads/internal/AdState;)Lcom/revmob/ads/internal/AdState;

    .line 427
    :cond_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$6;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # invokes: Lcom/revmob/ads/banner/RevMobBanner;->removeAdView2Block()V
    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$900(Lcom/revmob/ads/banner/RevMobBanner;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 414
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 410
    return-void
.end method
