.class Lcom/revmob/ads/fullscreen/FullscreenActivity$7;
.super Ljava/lang/Object;
.source "FullscreenActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/FullscreenActivity;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity$7;->this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity$7;->this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v1, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity$7;->this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 963
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity$7;->this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 964
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity$7;->this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->finish()V

    .line 965
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 959
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 956
    return-void
.end method
