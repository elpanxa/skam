.class Lcom/flipboard/bottomsheet/BottomSheetLayout$6;
.super Ljava/lang/Object;
.source "BottomSheetLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    .prologue
    .line 668
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 669
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$500(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    move-result-object v1

    sget-object v2, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$600(Lcom/flipboard/bottomsheet/BottomSheetLayout;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 671
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$500(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    move-result-object v1

    sget-object v2, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v1, v2, :cond_0

    .line 672
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    sget-object v2, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-static {v1, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$700(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$100(Lcom/flipboard/bottomsheet/BottomSheetLayout;F)V

    .line 676
    :cond_1
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->access$602(Lcom/flipboard/bottomsheet/BottomSheetLayout;I)I

    .line 677
    return-void
.end method
