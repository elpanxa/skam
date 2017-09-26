.class public Lcom/flipboard/bottomsheet/commons/MenuSheetView;
.super Landroid/widget/FrameLayout;
.source "MenuSheetView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;,
        Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;,
        Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;,
        Lcom/flipboard/bottomsheet/commons/MenuSheetView$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private absListView:Landroid/widget/AbsListView;

.field private adapter:Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;

.field private columnWidthDp:I

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private menu:Landroid/view/Menu;

.field private final menuType:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

.field protected final originalListPaddingTop:I

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;ILcom/flipboard/bottomsheet/commons/MenuSheetView$OnMenuItemClickListener;)V
    .locals 1
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;-><init>(Landroid/content/Context;Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;Ljava/lang/CharSequence;Lcom/flipboard/bottomsheet/commons/MenuSheetView$OnMenuItemClickListener;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;Ljava/lang/CharSequence;Lcom/flipboard/bottomsheet/commons/MenuSheetView$OnMenuItemClickListener;)V
    .locals 2
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->items:Ljava/util/ArrayList;

    .line 63
    const/16 v0, 0x64

    iput v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->columnWidthDp:I

    .line 85
    new-instance v0, Landroid/widget/PopupMenu;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->menu:Landroid/view/Menu;

    .line 86
    iput-object p2, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->menuType:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    .line 89
    sget-object v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->GRID:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    if-ne p2, v0, :cond_1

    sget v0, Lflipboard/bottomsheet/commons/R$layout;->grid_sheet_view:I

    :goto_0
    invoke-static {p1, v0, p0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    sget-object v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->GRID:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    if-ne p2, v0, :cond_2

    sget v0, Lflipboard/bottomsheet/commons/R$id;->grid:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->absListView:Landroid/widget/AbsListView;

    .line 91
    if-eqz p4, :cond_0

    .line 92
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->absListView:Landroid/widget/AbsListView;

    new-instance v1, Lcom/flipboard/bottomsheet/commons/MenuSheetView$1;

    invoke-direct {v1, p0, p4}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$1;-><init>(Lcom/flipboard/bottomsheet/commons/MenuSheetView;Lcom/flipboard/bottomsheet/commons/MenuSheetView$OnMenuItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    :cond_0
    sget v0, Lflipboard/bottomsheet/commons/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->titleView:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->absListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->originalListPaddingTop:I

    .line 103
    invoke-virtual {p0, p3}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/flipboard/bottomsheet/commons/Util;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 106
    return-void

    .line 89
    :cond_1
    sget v0, Lflipboard/bottomsheet/commons/R$layout;->list_sheet_view:I

    goto :goto_0

    .line 90
    :cond_2
    sget v0, Lflipboard/bottomsheet/commons/R$id;->list:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->adapter:Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->menuType:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    return-object v0
.end method

.method private prepareMenuItems()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    move v2, v1

    .line 158
    :goto_0
    iget-object v3, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->menu:Landroid/view/Menu;

    invoke-interface {v3}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 159
    iget-object v3, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->menu:Landroid/view/Menu;

    invoke-interface {v3, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 160
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    invoke-interface {v4}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 163
    invoke-interface {v4}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    .line 164
    invoke-interface {v5}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    iget-object v3, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->menuType:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    sget-object v6, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->LIST:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    if-ne v3, v6, :cond_0

    .line 166
    iget-object v3, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->items:Ljava/util/ArrayList;

    # getter for: Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->SEPARATOR:Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;
    invoke-static {}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->access$100()Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->items:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->of(Landroid/view/MenuItem;)Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_0
    invoke-interface {v5}, Landroid/view/SubMenu;->size()I

    move-result v4

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_2

    .line 176
    invoke-interface {v5, v3}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 177
    invoke-interface {v6}, Landroid/view/MenuItem;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 178
    iget-object v7, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->items:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->of(Landroid/view/MenuItem;)Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 183
    :cond_2
    iget-object v3, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->menuType:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    sget-object v4, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->LIST:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->menu:Landroid/view/Menu;

    invoke-interface {v3}, Landroid/view/Menu;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_3

    .line 184
    iget-object v3, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->items:Ljava/util/ArrayList;

    # getter for: Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->SEPARATOR:Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;
    invoke-static {}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->access$100()Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_4
    invoke-interface {v4}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    .line 189
    if-eq v3, v2, :cond_5

    iget-object v2, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->menuType:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    sget-object v5, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->LIST:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    if-ne v2, v5, :cond_5

    .line 190
    iget-object v2, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->items:Ljava/util/ArrayList;

    # getter for: Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->SEPARATOR:Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;
    invoke-static {}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->access$100()Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_5
    iget-object v2, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->items:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->of(Landroid/view/MenuItem;)Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 193
    goto :goto_2

    .line 197
    :cond_6
    return-void
.end method


# virtual methods
.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->menu:Landroid/view/Menu;

    return-object v0
.end method

.method public getMenuType()Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->menuType:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public inflateMenu(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 114
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 115
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 116
    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->menu:Landroid/view/Menu;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->prepareMenuItems()V

    .line 120
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 125
    new-instance v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;

    invoke-direct {v0, p0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;-><init>(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->adapter:Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;

    .line 126
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->absListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->adapter:Lcom/flipboard/bottomsheet/commons/MenuSheetView$Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->menuType:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    sget-object v1, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->GRID:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    if-ne v0, v1, :cond_0

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 133
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 134
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->absListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/GridView;

    int-to-float v1, v1

    iget v3, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->columnWidthDp:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 136
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 137
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 143
    new-instance v0, Lcom/flipboard/bottomsheet/commons/Util$ShadowOutline;

    invoke-direct {v0, p1, p2}, Lcom/flipboard/bottomsheet/commons/Util$ShadowOutline;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 145
    :cond_0
    return-void
.end method

.method public setColumnWidthDp(I)V
    .locals 0

    .prologue
    .line 252
    iput p1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->columnWidthDp:I

    .line 253
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->titleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->absListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->absListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->originalListPaddingTop:I

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v3, v4}, Lcom/flipboard/bottomsheet/commons/Util;->dp2px(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->absListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->absListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public updateMenu()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->prepareMenuItems()V

    .line 214
    return-void
.end method
