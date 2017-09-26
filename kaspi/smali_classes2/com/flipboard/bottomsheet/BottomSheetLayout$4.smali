.class Lcom/flipboard/bottomsheet/BottomSheetLayout$4;
.super Ljava/lang/Object;
.source "BottomSheetLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;->showWithSheetView(Landroid/view/View;Lcom/flipboard/bottomsheet/ViewTransformer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

.field final synthetic val$sheetView:Landroid/view/View;

.field final synthetic val$viewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;Lcom/flipboard/bottomsheet/ViewTransformer;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iput-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;->val$sheetView:Landroid/view/View;

    iput-object p3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;->val$viewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;->val$sheetView:Landroid/view/View;

    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;->val$viewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    invoke-virtual {v0, v1, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->showWithSheetView(Landroid/view/View;Lcom/flipboard/bottomsheet/ViewTransformer;)V

    .line 612
    return-void
.end method
