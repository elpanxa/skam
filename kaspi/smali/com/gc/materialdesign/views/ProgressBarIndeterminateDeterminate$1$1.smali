.class Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;
.super Ljava/lang/Object;
.source "ProgressBarIndeterminateDeterminate.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cont:I

.field duration:I

.field suma:I

.field final synthetic this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 31
    iput-object p1, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->cont:I

    .line 34
    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->suma:I

    .line 35
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->duration:I

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 39
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-boolean v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->runAnimation:Z

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->progressView:Landroid/view/View;

    iget-object v1, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;

    iget-object v1, v1, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    invoke-virtual {v1}, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;

    iget-object v2, v2, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-object v2, v2, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->progressView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 41
    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->cont:I

    iget v1, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->suma:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->cont:I

    .line 42
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-object v1, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;

    iget-object v1, v1, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-object v1, v1, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->progressView:Landroid/view/View;

    const-string v2, "x"

    new-array v3, v6, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;

    iget-object v5, v5, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

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

    .line 43
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->animation:Lcom/nineoldandroids/animation/ObjectAnimator;

    iget v1, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->duration:I

    iget v2, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->cont:I

    div-int/2addr v1, v2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 44
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->animation:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 45
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->animation:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 46
    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->cont:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->cont:I

    if-ne v0, v6, :cond_1

    :cond_0
    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->suma:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1$1;->suma:I

    .line 49
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
