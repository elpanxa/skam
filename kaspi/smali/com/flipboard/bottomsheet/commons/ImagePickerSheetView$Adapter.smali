.class Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;
.super Landroid/widget/BaseAdapter;
.source "ImagePickerSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final inflater:Landroid/view/LayoutInflater;

.field private final resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

.field private tiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 278
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->this$0:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->tiles:Ljava/util/List;

    .line 279
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->inflater:Landroid/view/LayoutInflater;

    .line 281
    iget-boolean v0, p1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->showCameraOption:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->tiles:Ljava/util/List;

    new-instance v1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;

    invoke-direct {v1, v4}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_0
    iget-boolean v0, p1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->showPickerOption:Z

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->tiles:Ljava/util/List;

    new-instance v1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;

    invoke-direct {v1, v5}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_1
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "_data"

    aput-object v0, v2, v7

    const-string v0, "bucket_display_name"

    aput-object v0, v2, v4

    const-string v0, "datetaken"

    aput-object v0, v2, v5

    const/4 v0, 0x4

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    .line 296
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->resolver:Landroid/content/ContentResolver;

    .line 298
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "datetaken DESC"

    move-object v4, v3

    .line 299
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_4

    move v0, v6

    .line 304
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->maxItems:I

    if-ge v0, v2, :cond_3

    .line 305
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    iget-object v2, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->tiles:Ljava/util/List;

    new-instance v4, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;-><init>(Landroid/net/Uri;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 311
    goto :goto_0

    .line 312
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_4
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->tiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->tiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->getItem(I)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 328
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 335
    if-nez p2, :cond_1

    .line 336
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lflipboard/bottomsheet/commons/R$layout;->sheet_image_grid_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object p2, v0

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->tiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;

    .line 342
    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->this$0:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

    iget v1, v1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->thumbnailSize:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 343
    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->this$0:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

    iget v1, v1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->thumbnailSize:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 344
    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->this$0:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

    iget v1, v1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->thumbnailSize:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 345
    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->this$0:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

    iget v1, v1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->thumbnailSize:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 346
    iget-object v1, v0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;->imageUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 347
    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->this$0:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

    iget-object v1, v1, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->imageProvider:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImageProvider;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;->imageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->this$0:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

    iget v2, v2, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->thumbnailSize:I

    invoke-interface {v1, p2, v0, v2}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImageProvider;->onProvideImage(Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 367
    :cond_0
    :goto_1
    return-object p2

    .line 338
    :cond_1
    check-cast p2, Landroid/widget/ImageView;

    goto :goto_0

    .line 349
    :cond_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 350
    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;->isCameraTile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 351
    const v0, 0x106000c

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 352
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->this$0:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 353
    sget v0, Lflipboard/bottomsheet/commons/R$drawable;->bottomsheet_camera:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->this$0:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 357
    :cond_4
    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;->isPickerTile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/high16 v0, 0x1060000

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 359
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->this$0:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->pickerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 360
    sget v0, Lflipboard/bottomsheet/commons/R$drawable;->bottomsheet_collections:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Adapter;->this$0:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;->pickerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
