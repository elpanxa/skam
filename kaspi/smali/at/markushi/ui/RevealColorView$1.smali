.class Lat/markushi/ui/RevealColorView$1;
.super Ljava/lang/Object;
.source "RevealColorView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/markushi/ui/RevealColorView;->reveal(IIIIJLandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/markushi/ui/RevealColorView;

.field final synthetic val$color:I

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lat/markushi/ui/RevealColorView;Landroid/animation/Animator$AnimatorListener;I)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lat/markushi/ui/RevealColorView$1;->this$0:Lat/markushi/ui/RevealColorView;

    iput-object p2, p0, Lat/markushi/ui/RevealColorView$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    iput p3, p0, Lat/markushi/ui/RevealColorView$1;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 114
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$1;->this$0:Lat/markushi/ui/RevealColorView;

    iget v1, p0, Lat/markushi/ui/RevealColorView$1;->val$color:I

    invoke-virtual {v0, v1}, Lat/markushi/ui/RevealColorView;->setBackgroundColor(I)V

    .line 103
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$1;->this$0:Lat/markushi/ui/RevealColorView;

    # getter for: Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;
    invoke-static {v0}, Lat/markushi/ui/RevealColorView;->access$000(Lat/markushi/ui/RevealColorView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 98
    :cond_0
    return-void
.end method
