.class Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$ViewHolder;
.super Ljava/lang/Object;
.source "IntentPickerSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final icon:Landroid/widget/ImageView;

.field final label:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 264
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$ViewHolder;->this$1:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    sget v0, Lflipboard/bottomsheet/commons/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 266
    sget v0, Lflipboard/bottomsheet/commons/R$id;->label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 267
    return-void
.end method
