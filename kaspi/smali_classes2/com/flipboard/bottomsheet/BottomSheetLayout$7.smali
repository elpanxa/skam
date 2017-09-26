.class Lcom/flipboard/bottomsheet/BottomSheetLayout$7;
.super Lcom/flipboard/bottomsheet/BottomSheetLayout$CancelDetectionAnimationListener;
.source "BottomSheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;->dismissSheet(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

.field final synthetic val$sheetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 703
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iput-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->val$sheetView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$CancelDetectionAnimationListener;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 706
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->canceled:Z

    if-nez v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0, v3}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$402(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 708
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    sget-object v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-static {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$700(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 709
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$800(Lcom/flipboard/bottomsheet/BottomSheetLayout;I)V

    .line 710
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->val$sheetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->removeView(Landroid/view/View;)V

    .line 712
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$900(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/OnSheetDismissedListener;

    .line 713
    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-interface {v0, v2}, Lcom/flipboard/bottomsheet/OnSheetDismissedListener;->onDismissed(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V

    goto :goto_0

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0, v3}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$1002(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/ViewTransformer;)Lcom/flipboard/bottomsheet/ViewTransformer;

    .line 718
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$900(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 719
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$1100(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 720
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$1200(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$1200(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 722
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0, v3}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$1202(Lcom/flipboard/bottomsheet/BottomSheetLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 725
    :cond_1
    return-void
.end method
