.class public Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedAvatarDrawable.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapHeight:I

.field private final mBitmapWidth:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mRectF:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 45
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 46
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 49
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mBitmapWidth:I

    .line 50
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mBitmapHeight:I

    .line 51
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 56
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 62
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 63
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->invalidateSelf()V

    .line 71
    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->invalidateSelf()V

    .line 96
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 76
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;->invalidateSelf()V

    .line 102
    return-void
.end method
