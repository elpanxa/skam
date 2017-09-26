.class public Lcom/imojiapp/imoji/sdk/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imojiapp/imoji/sdk/BitmapUtils$ResizeTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/imojiapp/imoji/sdk/BitmapUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/imojiapp/imoji/sdk/BitmapUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .prologue
    .line 80
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 81
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 82
    const/4 v0, 0x1

    .line 84
    if-gt v1, p2, :cond_0

    if-le v2, p1, :cond_1

    .line 86
    :cond_0
    div-int/lit8 v1, v1, 0x2

    .line 87
    div-int/lit8 v2, v2, 0x2

    .line 91
    :goto_0
    div-int v3, v1, v0

    if-le v3, p2, :cond_1

    div-int v3, v2, v0

    if-le v3, p1, :cond_1

    .line 93
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 97
    :cond_1
    return v0
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 122
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 125
    invoke-static {v0, p2, p3}, Lcom/imojiapp/imoji/sdk/BitmapUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 129
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSampledBitmapFromUri(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 139
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 143
    invoke-static {v0, p1, p2}, Lcom/imojiapp/imoji/sdk/BitmapUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 146
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getImageSize(Landroid/net/Uri;)[I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 101
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 102
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 105
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 106
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 107
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 109
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 110
    const/4 v3, 0x0

    aput v1, v2, v3

    .line 111
    aput v0, v2, v4

    .line 113
    return-object v2
.end method

.method public static getSizeWithinBounds(IIIIZ)[I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 23
    if-nez p4, :cond_0

    if-gt p0, p2, :cond_0

    if-gt p1, p3, :cond_0

    .line 24
    aput p0, v0, v4

    .line 25
    aput p1, v0, v5

    .line 41
    :goto_0
    return-object v0

    .line 30
    :cond_0
    int-to-float v1, p0

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 31
    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    .line 33
    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 34
    aput p2, v0, v4

    .line 35
    int-to-float v2, p2

    div-float v1, v2, v1

    float-to-int v1, v1

    aput v1, v0, v5

    goto :goto_0

    .line 37
    :cond_1
    aput p3, v0, v5

    .line 38
    int-to-float v2, p3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v4

    goto :goto_0
.end method

.method public static saveAsPng(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;II[I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 45
    .line 49
    const/4 v0, 0x0

    .line 50
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p3, p4, v3}, Lcom/imojiapp/imoji/sdk/BitmapUtils;->getSizeWithinBounds(IIIIZ)[I

    move-result-object v0

    .line 52
    aget v1, v0, v3

    aput v1, p5, v3

    .line 53
    aget v1, v0, v7

    aput v1, p5, v7

    :cond_0
    move-object v1, p1

    move v2, v3

    .line 57
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 60
    if-eqz v0, :cond_2

    .line 61
    aget v1, v0, v3

    aget v5, v0, v7

    invoke-static {p1, v1, v5, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 64
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    .line 66
    if-nez v4, :cond_3

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    const/4 v5, 0x2

    if-lt v2, v5, :cond_1

    .line 74
    :cond_3
    return v4
.end method
