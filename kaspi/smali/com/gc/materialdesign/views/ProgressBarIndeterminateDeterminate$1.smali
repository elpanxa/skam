.class Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;
.super Ljava/lang/Object;
.source "ProgressBarIndeterminateDeterminate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 27
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->setProgress(I)V

    .line 28
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->progressView:Landroid/view/View;

    iget-object v1, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    invoke-virtual {v1}, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-object v2, v2, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->progressView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 29
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-object v1, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-object v1, v1, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->progressView:Landroid/view/View;

    const-string v2, "x"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-object v5, v5, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->progressView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->animation:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 30
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->animation:Lcom/nineoldandroids/animation/ObjectAnimator;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 31
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->animation:Lcom/nineoldandroids/animation/ObjectAnimator;

    new-instance v1, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;-><init>(Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 55
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->animation:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 56
    return-void
.end method
