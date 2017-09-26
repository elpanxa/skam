.class Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter$NormalViewHolder;
.super Ljava/lang/Object;
.source "MenuSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NormalViewHolder"
.end annotation


# instance fields
.field final icon:Landroid/widget/ImageView;

.field final label:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 355
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter$NormalViewHolder;->this$1:Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    sget v0, Lflipboard/bottomsheet/commons/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter$NormalViewHolder;->icon:Landroid/widget/ImageView;

    .line 357
    sget v0, Lflipboard/bottomsheet/commons/R$id;->label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter$NormalViewHolder;->label:Landroid/widget/TextView;

    .line 358
    return-void
.end method


# virtual methods
.method public bindView(Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;)V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter$NormalViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter$NormalViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    return-void
.end method
