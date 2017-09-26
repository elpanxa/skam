.class Lat/markushi/ui/RevealColorView$2;
.super Ljava/lang/Object;
.source "RevealColorView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/markushi/ui/RevealColorView;->hide(IIIIJLandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/markushi/ui/RevealColorView;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lat/markushi/ui/RevealColorView;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lat/markushi/ui/RevealColorView$2;->this$0:Lat/markushi/ui/RevealColorView;

    iput-object p2, p0, Lat/markushi/ui/RevealColorView$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$2;->this$0:Lat/markushi/ui/RevealColorView;

    # getter for: Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;
    invoke-static {v0}, Lat/markushi/ui/RevealColorView;->access$000(Lat/markushi/ui/RevealColorView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 161
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lat/markushi/ui/RevealColorView$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 153
    :cond_0
    return-void
.end method
