.class public Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;
.super Ljava/lang/Object;
.source "ImagePickerSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImagePickerTile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile$SpecialTileType;,
        Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile$TileType;
    }
.end annotation


# static fields
.field public static final CAMERA:I = 0x2

.field public static final IMAGE:I = 0x1

.field public static final PICKER:I = 0x3


# instance fields
.field protected final imageUri:Landroid/net/Uri;

.field protected final tileType:I
    .annotation build Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile$TileType;
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile$SpecialTileType;
        .end annotation
    .end param

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;-><init>(Landroid/net/Uri;I)V

    .line 94
    return-void
.end method

.method constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;-><init>(Landroid/net/Uri;I)V

    .line 98
    return-void
.end method

.method protected constructor <init>(Landroid/net/Uri;I)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile$TileType;
        .end annotation
    .end param

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;->imageUri:Landroid/net/Uri;

    .line 102
    iput p2, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;->tileType:I

    .line 103
    return-void
.end method


# virtual methods
.method public getImageUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTileType()I
    .locals 1
    .annotation build Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile$TileType;
    .end annotation

    .prologue
    .line 120
    iget v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;->tileType:I

    return v0
.end method

.method public isCameraTile()Z
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;->tileType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageTile()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 130
    iget v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;->tileType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPickerTile()Z
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;->tileType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;->isImageTile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageTile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;->isCameraTile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const-string v0, "CameraTile"

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/ImagePickerSheetView$ImagePickerTile;->isPickerTile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    const-string v0, "PickerTile"

    goto :goto_0

    .line 164
    :cond_2
    const-string v0, "Invalid item"

    goto :goto_0
.end method
