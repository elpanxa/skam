.class Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;
.super Landroid/widget/BaseAdapter;
.source "MenuSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/MenuSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter$NormalViewHolder;
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_NORMAL:I = 0x0

.field private static final VIEW_TYPE_SEPARATOR:I = 0x2

.field private static final VIEW_TYPE_SUBHEADER:I = 0x1


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/flipboard/bottomsheet/commons/MenuSheetView;


# direct methods
.method public constructor <init>(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)V
    .locals 1

    .prologue
    .line 270
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;->this$0:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 271
    invoke-virtual {p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;->inflater:Landroid/view/LayoutInflater;

    .line 272
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;->this$0:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

    # getter for: Lcom/flipboard/bottomsheet/commons/MenuSheetView;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->access$200(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;->this$0:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

    # getter for: Lcom/flipboard/bottomsheet/commons/MenuSheetView;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->access$200(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;->getItem(I)Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 286
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;->getItem(I)Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->isSeparator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    const/4 v0, 0x2

    .line 302
    :goto_0
    return v0

    .line 299
    :cond_0
    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    const/4 v0, 0x1

    goto :goto_0

    .line 302
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 309
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;->getItem(I)Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    move-result-object v2

    .line 310
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 312
    packed-switch v0, :pswitch_data_0

    .line 338
    :cond_0
    :goto_0
    return-object p2

    .line 315
    :pswitch_0
    if-nez p2, :cond_2

    .line 316
    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;->inflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;->this$0:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

    # getter for: Lcom/flipboard/bottomsheet/commons/MenuSheetView;->menuType:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;
    invoke-static {v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->access$300(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    move-result-object v0

    sget-object v3, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->GRID:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    if-ne v0, v3, :cond_1

    sget v0, Lflipboard/bottomsheet/commons/R$layout;->sheet_grid_item:I

    :goto_1
    invoke-virtual {v1, v0, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 317
    new-instance v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter$NormalViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter$NormalViewHolder;-><init>(Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;Landroid/view/View;)V

    .line 318
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 322
    :goto_2
    invoke-virtual {v0, v2}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter$NormalViewHolder;->bindView(Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;)V

    goto :goto_0

    .line 316
    :cond_1
    sget v0, Lflipboard/bottomsheet/commons/R$layout;->sheet_list_item:I

    goto :goto_1

    .line 320
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter$NormalViewHolder;

    goto :goto_2

    .line 325
    :pswitch_1
    if-nez p2, :cond_3

    .line 326
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lflipboard/bottomsheet/commons/R$layout;->sheet_list_item_subheader:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_3
    move-object v0, v1

    .line 328
    check-cast v0, Landroid/widget/TextView;

    .line 329
    invoke-virtual {v2}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object p2, v1

    .line 330
    goto :goto_0

    .line 332
    :pswitch_2
    if-nez p2, :cond_0

    .line 333
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lflipboard/bottomsheet/commons/R$layout;->sheet_list_item_separator:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object v1, p2

    goto :goto_3

    .line 312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;->getItem(I)Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->isEnabled()Z

    move-result v0

    return v0
.end method
