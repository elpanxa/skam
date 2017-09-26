.class Lcom/flipboard/bottomsheet/BottomSheetLayout$2;
.super Lcom/flipboard/bottomsheet/BottomSheetLayout$CancelDetectionAnimationListener;
.source "BottomSheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;->expandSheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V
    .locals 1

    .prologue
    .line 503
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$2;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$CancelDetectionAnimationListener;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$2;->canceled:Z

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$2;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$402(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 509
    :cond_0
    return-void
.end method
