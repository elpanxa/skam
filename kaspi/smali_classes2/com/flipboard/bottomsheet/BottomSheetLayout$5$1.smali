.class Lcom/flipboard/bottomsheet/BottomSheetLayout$5$1;
.super Ljava/lang/Object;
.source "BottomSheetLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout$5;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flipboard/bottomsheet/BottomSheetLayout$5;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$5;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$5$1;->this$1:Lcom/flipboard/bottomsheet/BottomSheetLayout$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$5$1;->this$1:Lcom/flipboard/bottomsheet/BottomSheetLayout$5;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$5;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$5$1;->this$1:Lcom/flipboard/bottomsheet/BottomSheetLayout$5;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$5;->this$0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->peekSheet()V

    .line 657
    :cond_0
    return-void
.end method
