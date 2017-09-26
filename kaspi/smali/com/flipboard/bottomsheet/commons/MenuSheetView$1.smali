.class Lcom/flipboard/bottomsheet/commons/MenuSheetView$1;
.super Ljava/lang/Object;
.source "MenuSheetView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/commons/MenuSheetView;-><init>(Landroid/content/Context;Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;Ljava/lang/CharSequence;Lcom/flipboard/bottomsheet/commons/MenuSheetView$OnMenuItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

.field final synthetic val$listener:Lcom/flipboard/bottomsheet/commons/MenuSheetView$OnMenuItemClickListener;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/commons/MenuSheetView;Lcom/flipboard/bottomsheet/commons/MenuSheetView$OnMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$1;->this$0:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

    iput-object p2, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$1;->val$listener:Lcom/flipboard/bottomsheet/commons/MenuSheetView$OnMenuItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$1;->val$listener:Lcom/flipboard/bottomsheet/commons/MenuSheetView$OnMenuItemClickListener;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$1;->this$0:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

    # getter for: Lcom/flipboard/bottomsheet/commons/MenuSheetView;->adapter:Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;
    invoke-static {v1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->access$000(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;->getItem(I)Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 96
    return-void
.end method
