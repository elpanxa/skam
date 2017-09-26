.class public Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;
.super Ljava/lang/Object;
.source "ImagePickerSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field cameraDrawable:Landroid/graphics/drawable/Drawable;

.field context:Landroid/content/Context;

.field imageProvider:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImageProvider;

.field maxItems:I

.field onTileSelectedListener:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$OnTileSelectedListener;

.field pickerDrawable:Landroid/graphics/drawable/Drawable;

.field showCameraOption:Z

.field showPickerOption:Z

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    const/16 v0, 0x19

    iput v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->maxItems:I

    .line 375
    iput-object v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->title:Ljava/lang/String;

    .line 378
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->showCameraOption:Z

    .line 379
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->showPickerOption:Z

    .line 380
    iput-object v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    .line 381
    iput-object v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->pickerDrawable:Landroid/graphics/drawable/Drawable;

    .line 384
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing required READ_EXTERNAL_STORAGE permission. Did you remember to request it first?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->context:Landroid/content/Context;

    .line 388
    return-void
.end method


# virtual methods
.method public create()Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->imageProvider:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImageProvider;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must provide an ImageProvider!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_0
    new-instance v0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;

    invoke-direct {v0, p0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;-><init>(Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;)V

    return-object v0
.end method

.method public setCameraDrawable(I)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 476
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->setCameraDrawable(Landroid/graphics/drawable/Drawable;)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCameraDrawable(Landroid/graphics/drawable/Drawable;)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 487
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    .line 488
    return-object p0
.end method

.method public setImageProvider(Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImageProvider;)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->imageProvider:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImageProvider;

    .line 443
    return-object p0
.end method

.method public setMaxItems(I)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;
    .locals 0

    .prologue
    .line 398
    iput p1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->maxItems:I

    .line 399
    return-object p0
.end method

.method public setOnTileSelectedListener(Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$OnTileSelectedListener;)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->onTileSelectedListener:Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$OnTileSelectedListener;

    .line 432
    return-object p0
.end method

.method public setPickerDrawable(I)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 499
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->setPickerDrawable(Landroid/graphics/drawable/Drawable;)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPickerDrawable(Landroid/graphics/drawable/Drawable;)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->pickerDrawable:Landroid/graphics/drawable/Drawable;

    .line 511
    return-object p0
.end method

.method public setShowCameraOption(Z)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;
    .locals 0

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->showCameraOption:Z

    .line 454
    return-object p0
.end method

.method public setShowPickerOption(Z)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;
    .locals 0

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->showPickerOption:Z

    .line 465
    return-object p0
.end method

.method public setTitle(I)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 409
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->setTitle(Ljava/lang/String;)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 420
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$Builder;->title:Ljava/lang/String;

    .line 421
    return-object p0
.end method
