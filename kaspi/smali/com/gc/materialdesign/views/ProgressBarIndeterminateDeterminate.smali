.class public Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;
.super Lcom/gc/materialdesign/views/ProgressBarDeterminate;
.source "ProgressBarIndeterminateDeterminate.java"


# instance fields
.field animation:Lcom/nineoldandroids/animation/ObjectAnimator;

.field firstProgress:Z

.field runAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput-boolean v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->firstProgress:Z

    .line 14
    iput-boolean v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->runAnimation:Z

    .line 21
    new-instance v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;

    invoke-direct {v0, p0}, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate$1;-><init>(Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;)V

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method private stopIndeterminate()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->animation:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->cancel()V

    .line 75
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->progressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->runAnimation:Z

    .line 77
    return-void
.end method


# virtual methods
.method public setProgress(I)V
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->firstProgress:Z

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->firstProgress:Z

    .line 67
    :goto_0
    invoke-super {p0, p1}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->setProgress(I)V

    .line 68
    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/gc/materialdesign/views/ProgressBarIndeterminateDeterminate;->stopIndeterminate()V

    goto :goto_0
.end method
