.class public Lcom/flask/colorpicker/builder/PaintBuilder;
.super Ljava/lang/Object;
.source "PaintBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flask/colorpicker/builder/PaintBuilder$1;,
        Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private static createAlphaBackgroundPattern(I)Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    .line 70
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v5

    .line 71
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 72
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    int-to-float v1, p0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v10

    move v8, v7

    .line 74
    :goto_0
    if-ge v8, v11, :cond_2

    move v6, v7

    .line 75
    :goto_1
    if-ge v6, v11, :cond_1

    .line 76
    add-int v1, v8, v6

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    :goto_2
    mul-int v1, v8, v10

    int-to-float v1, v1

    mul-int v2, v6, v10

    int-to-float v2, v2

    add-int/lit8 v3, v8, 0x1

    mul-int/2addr v3, v10

    int-to-float v3, v3

    add-int/lit8 v4, v6, 0x1

    mul-int/2addr v4, v10

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    .line 77
    :cond_0
    const v1, -0x2f2f30

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 74
    :cond_1
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0

    .line 80
    :cond_2
    return-object v9
.end method

.method public static createAlphaPatternShader(I)Landroid/graphics/Shader;
    .locals 4

    .prologue
    .line 64
    div-int/lit8 v0, p0, 0x2

    .line 65
    const/16 v1, 0x8

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 66
    new-instance v1, Landroid/graphics/BitmapShader;

    invoke-static {v0}, Lcom/flask/colorpicker/builder/PaintBuilder;->createAlphaBackgroundPattern(I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-object v1
.end method

.method public static newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;-><init>(Lcom/flask/colorpicker/builder/PaintBuilder$1;)V

    return-object v0
.end method
