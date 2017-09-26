.class Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$1;
.super Ljava/lang/Object;
.source "ImagePickerSheetView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;-><init>(Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

.field final synthetic val$builder:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$1;->this$0:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

    iput-object p2, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$1;->val$builder:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 210
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$1;->val$builder:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->onTileSelectedListener:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$OnTileSelectedListener;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$1;->this$0:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

    iget-object v1, v1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->adapter:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;

    invoke-virtual {v1, p3}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->getItem(I)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$OnTileSelectedListener;->onTileSelected(Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;)V

    .line 211
    return-void
.end method
