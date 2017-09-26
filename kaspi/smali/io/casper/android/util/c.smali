.class public Lio/casper/android/util/c;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .prologue
    .line 14
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 15
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 16
    const/4 v0, 0x1

    .line 18
    if-gt v1, p2, :cond_0

    if-le v2, p1, :cond_1

    .line 21
    :cond_0
    int-to-float v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 22
    int-to-float v1, v2

    int-to-float v2, p1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 27
    if-ge v0, v1, :cond_2

    .line 31
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 27
    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 83
    if-eqz p0, :cond_0

    .line 84
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 85
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 87
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    if-eq p0, v0, :cond_0

    move-object p0, v0

    .line 96
    :cond_0
    :goto_0
    return-object p0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 61
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 63
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 64
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 67
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    if-eq p0, v0, :cond_0

    move-object p0, v0

    .line 77
    :cond_0
    :goto_0
    return-object p0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 49
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 52
    invoke-static {v0, p1, p2}, Lio/casper/android/util/c;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 56
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 38
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 40
    return-object v0
.end method

.method public static a(Lio/casper/android/util/h;Lio/casper/android/util/h;)Lio/casper/android/util/h;
    .locals 5

    .prologue
    .line 121
    invoke-virtual {p0}, Lio/casper/android/util/h;->a()I

    move-result v4

    .line 122
    invoke-virtual {p0}, Lio/casper/android/util/h;->b()I

    move-result v3

    .line 124
    invoke-virtual {p1}, Lio/casper/android/util/h;->a()I

    move-result v2

    .line 125
    invoke-virtual {p1}, Lio/casper/android/util/h;->b()I

    move-result v0

    .line 131
    if-le v4, v2, :cond_1

    .line 135
    mul-int v1, v2, v3

    div-int/2addr v1, v4

    .line 139
    :goto_0
    if-le v1, v0, :cond_0

    .line 143
    mul-int v1, v0, v4

    div-int/2addr v1, v3

    .line 146
    :goto_1
    new-instance v2, Lio/casper/android/util/h;

    invoke-direct {v2, v1, v0}, Lio/casper/android/util/h;-><init>(II)V

    return-object v2

    :cond_0
    move v0, v1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    move v2, v4

    goto :goto_0
.end method

.method public static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 102
    if-eqz p0, :cond_0

    .line 103
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 104
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 106
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    if-eq p0, v0, :cond_0

    move-object p0, v0

    .line 115
    :cond_0
    :goto_0
    return-object p0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method
