.class Lcom/mopub/mraid/MraidController$7;
.super Ljava/lang/Object;
.source "MraidController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidController;->updateScreenMetricsAsync(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidController;

.field final synthetic val$currentWebView:Landroid/view/View;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    iput-object p2, p0, Lcom/mopub/mraid/MraidController$7;->val$currentWebView:Landroid/view/View;

    iput-object p3, p0, Lcom/mopub/mraid/MraidController$7;->val$successRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 519
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    # getter for: Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$600(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 520
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    # getter for: Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;
    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v0}, Lcom/mopub/mraid/MraidScreenMetrics;->setScreenSize(II)V

    .line 523
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 524
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    # invokes: Lcom/mopub/mraid/MraidController;->getRootView()Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->access$1200(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 525
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 526
    iget-object v2, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    # getter for: Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;
    invoke-static {v2}, Lcom/mopub/mraid/MraidController;->access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v2

    aget v3, v0, v6

    aget v4, v0, v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/mopub/mraid/MraidScreenMetrics;->setRootViewPosition(IIII)V

    .line 530
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    # getter for: Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->access$1300(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 531
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    # getter for: Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;
    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v1

    aget v2, v0, v6

    aget v3, v0, v7

    iget-object v4, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    # getter for: Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/mopub/mraid/MraidController;->access$1300(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    # getter for: Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lcom/mopub/mraid/MraidController;->access$1300(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mopub/mraid/MraidScreenMetrics;->setDefaultAdPosition(IIII)V

    .line 535
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->val$currentWebView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 536
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    # getter for: Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;
    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v1

    aget v2, v0, v6

    aget v0, v0, v7

    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->val$currentWebView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/mopub/mraid/MraidController$7;->val$currentWebView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/mopub/mraid/MraidScreenMetrics;->setCurrentAdPosition(IIII)V

    .line 541
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    # getter for: Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;
    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$200(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    # getter for: Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;
    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->notifyScreenMetrics(Lcom/mopub/mraid/MraidScreenMetrics;)V

    .line 542
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    # getter for: Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;
    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    # getter for: Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;
    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    # getter for: Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;
    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->notifyScreenMetrics(Lcom/mopub/mraid/MraidScreenMetrics;)V

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->val$successRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->val$successRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 549
    :cond_1
    return-void
.end method
