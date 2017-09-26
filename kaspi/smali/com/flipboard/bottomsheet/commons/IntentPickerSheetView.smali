.class public Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;
.super Landroid/widget/FrameLayout;
.source "IntentPickerSheetView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;,
        Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;,
        Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$FilterNone;,
        Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$SortAlphabetically;,
        Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$OnIntentPickedListener;,
        Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Filter;
    }
.end annotation


# instance fields
.field protected adapter:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;

.field protected final appGrid:Landroid/widget/GridView;

.field private columnWidthDp:I

.field protected filter:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Filter;

.field protected final intent:Landroid/content/Intent;

.field protected final mixins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected sortMethod:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ILcom/flipboard/bottomsheet/commons/IntentPickerSheetView$OnIntentPickedListener;)V
    .locals 1
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 110
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$OnIntentPickedListener;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$OnIntentPickedListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0x64

    iput v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->columnWidthDp:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->mixins:Ljava/util/List;

    .line 106
    new-instance v0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$FilterNone;

    invoke-direct {v0, p0, v1}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$FilterNone;-><init>(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$1;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->filter:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Filter;

    .line 107
    new-instance v0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$SortAlphabetically;

    invoke-direct {v0, p0, v1}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$SortAlphabetically;-><init>(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$1;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->sortMethod:Ljava/util/Comparator;

    .line 115
    iput-object p2, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->intent:Landroid/content/Intent;

    .line 117
    sget v0, Lflipboard/bottomsheet/commons/R$layout;->grid_sheet_view:I

    invoke-static {p1, v0, p0}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 118
    sget v0, Lflipboard/bottomsheet/commons/R$id;->grid:I

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->appGrid:Landroid/widget/GridView;

    .line 119
    sget v0, Lflipboard/bottomsheet/commons/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->appGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$1;

    invoke-direct {v1, p0, p4}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$1;-><init>(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$OnIntentPickedListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/flipboard/bottomsheet/commons/Util;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 130
    return-void
.end method


# virtual methods
.method public getMixins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->mixins:Ljava/util/List;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 161
    new-instance v0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->mixins:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;-><init>(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->adapter:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;

    .line 162
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->appGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->adapter:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 62
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->adapter:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;->activityInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;

    .line 63
    # getter for: Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->iconLoadTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->access$000(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;)Landroid/os/AsyncTask;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 64
    # getter for: Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->iconLoadTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->access$000(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;)Landroid/os/AsyncTask;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 65
    const/4 v2, 0x0

    # setter for: Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->iconLoadTask:Landroid/os/AsyncTask;
    invoke-static {v0, v2}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->access$002(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 167
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 168
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 169
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lflipboard/bottomsheet/commons/R$dimen;->bottomsheet_default_sheet_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 170
    iget-object v2, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->appGrid:Landroid/widget/GridView;

    int-to-float v0, v0

    iget v3, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->columnWidthDp:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 171
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 172
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 178
    new-instance v0, Lcom/flipboard/bottomsheet/commons/Util$ShadowOutline;

    invoke-direct {v0, p1, p2}, Lcom/flipboard/bottomsheet/commons/Util$ShadowOutline;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 180
    :cond_0
    return-void
.end method

.method public setColumnWidthDp(I)V
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->columnWidthDp:I

    .line 142
    return-void
.end method

.method public setFilter(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Filter;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->filter:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Filter;

    .line 138
    return-void
.end method

.method public setMixins(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->mixins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->mixins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    return-void
.end method

.method public setSortMethod(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->sortMethod:Ljava/util/Comparator;

    .line 134
    return-void
.end method
