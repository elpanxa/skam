.class Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;
.super Ljava/lang/Object;
.source "ProgressBarIndeterminate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/views/ProgressBarIndeterminate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminate;


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/views/ProgressBarIndeterminate;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 24
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminate;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/ProgressBarIndeterminate;->setProgress(I)V

    .line 25
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminate;

    invoke-virtual {v0}, Lcom/gc/materialdesign/views/ProgressBarIndeterminate;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/gc/materialdesign/R$anim;->progress_indeterminate_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminate;

    iget-object v1, v1, Lcom/gc/materialdesign/views/ProgressBarIndeterminate;->progressView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 27
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminate;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate;->progressView:Landroid/view/View;

    const-string v1, "x"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarIndeterminate;

    invoke-virtual {v4}, Lcom/gc/materialdesign/views/ProgressBarIndeterminate;->getWidth()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 28
    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 29
    new-instance v1, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1$1;-><init>(Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 52
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 53
    return-void
.end method
