.class Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;
.super Ljava/lang/Object;
.source "ProgressBarIndeterminate.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cont:I

.field duration:I

.field suma:I

.field final synthetic this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 29
    iput-object p1, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->cont:I

    .line 32
    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->suma:I

    .line 33
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->duration:I

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 37
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminate;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate;->progressView:Landroid/view/View;

    iget-object v1, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;

    iget-object v1, v1, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminate;

    iget-object v1, v1, Lcom/gc/materialdesign/views/ProgressBarIndeterminate;->progressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 38
    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->cont:I

    iget v1, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->suma:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->cont:I

    .line 39
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminate;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate;->progressView:Landroid/view/View;

    const-string v1, "x"

    new-array v2, v5, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->this$1:Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;

    iget-object v4, v4, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminate;

    invoke-virtual {v4}, Lcom/gc/materialdesign/views/ProgressBarIndeterminate;->getWidth()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 40
    iget v1, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->duration:I

    iget v2, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->cont:I

    div-int/2addr v1, v2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 41
    invoke-virtual {v0, p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 42
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 43
    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->cont:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->cont:I

    if-ne v0, v5, :cond_1

    :cond_0
    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->suma:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;->suma:I

    .line 45
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
