.class public Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;
.super Landroid/widget/FrameLayout;
.source "ImagePickerSheetView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;,
        Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;,
        Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;,
        Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImageProvider;,
        Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$OnTileSelectedListener;
    }
.end annotation


# instance fields
.field protected adapter:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;

.field protected cameraDrawable:Landroid/graphics/drawable/Drawable;

.field private columnWidthDp:I

.field protected imageProvider:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImageProvider;

.field protected maxItems:I

.field protected final originalGridPaddingTop:I

.field protected pickerDrawable:Landroid/graphics/drawable/Drawable;

.field protected showCameraOption:Z

.field protected showPickerOption:Z

.field protected final spacing:I

.field protected thumbnailSize:I

.field protected final tileGrid:Landroid/widget/GridView;

.field protected title:Ljava/lang/String;

.field protected final titleView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 188
    iget-object v0, p1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 177
    const/16 v0, 0x19

    iput v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->maxItems:I

    .line 179
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->showCameraOption:Z

    .line 180
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->showPickerOption:Z

    .line 181
    iput-object v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    .line 182
    iput-object v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->pickerDrawable:Landroid/graphics/drawable/Drawable;

    .line 184
    const/16 v0, 0x64

    iput v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->columnWidthDp:I

    .line 190
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lflipboard/bottomsheet/commons/R$layout;->grid_sheet_view:I

    invoke-static {v0, v1, p0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 193
    sget v0, Lflipboard/bottomsheet/commons/R$id;->grid:I

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->tileGrid:Landroid/widget/GridView;

    .line 194
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflipboard/bottomsheet/commons/R$dimen;->bottomsheet_image_tile_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->spacing:I

    .line 195
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->tileGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    .line 196
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->tileGrid:Landroid/widget/GridView;

    iget v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->spacing:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 197
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->tileGrid:Landroid/widget/GridView;

    iget v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->spacing:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 198
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->tileGrid:Landroid/widget/GridView;

    iget v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->spacing:I

    iget v2, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->spacing:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 201
    sget v0, Lflipboard/bottomsheet/commons/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->titleView:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->tileGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->originalGridPaddingTop:I

    .line 203
    iget-object v0, p1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->setTitle(Ljava/lang/String;)V

    .line 206
    iget-object v0, p1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->onTileSelectedListener:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$OnTileSelectedListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->tileGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$1;

    invoke-direct {v1, p0, p1}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$1;-><init>(Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 214
    :cond_0
    iget v0, p1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->maxItems:I

    iput v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->maxItems:I

    .line 215
    iget-object v0, p1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->imageProvider:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImageProvider;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->imageProvider:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImageProvider;

    .line 216
    iget-boolean v0, p1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->showCameraOption:Z

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->showCameraOption:Z

    .line 217
    iget-boolean v0, p1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->showPickerOption:Z

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->showPickerOption:Z

    .line 218
    iget-object v0, p1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object v0, p1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->pickerDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->pickerDrawable:Landroid/graphics/drawable/Drawable;

    .line 221
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/flipboard/bottomsheet/commons/Util;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 222
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 246
    new-instance v0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;-><init>(Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->adapter:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;

    .line 247
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->tileGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->adapter:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 260
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 261
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 262
    int-to-float v2, v0

    iget v3, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->columnWidthDp:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    div-float v1, v2, v1

    float-to-int v1, v1

    .line 263
    add-int/lit8 v2, v1, -0x1

    iget v3, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->spacing:I

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->thumbnailSize:I

    .line 264
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->tileGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 265
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 266
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 254
    new-instance v0, Lcom/flipboard/bottomsheet/commons/Util$ShadowOutline;

    invoke-direct {v0, p1, p2}, Lcom/flipboard/bottomsheet/commons/Util$ShadowOutline;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 256
    :cond_0
    return-void
.end method

.method public setColumnWidthDp(I)V
    .locals 0

    .prologue
    .line 240
    iput p1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->columnWidthDp:I

    .line 241
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->setTitle(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 229
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->title:Ljava/lang/String;

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->titleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->tileGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->tileGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->originalGridPaddingTop:I

    iget v3, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->spacing:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->tileGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->tileGrid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->setPadding(IIII)V

    goto :goto_0
.end method
