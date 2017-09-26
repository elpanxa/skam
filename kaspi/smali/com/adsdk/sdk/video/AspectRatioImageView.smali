.class public Lcom/adsdk/sdk/video/AspectRatioImageView;
.super Landroid/widget/ImageView;
.source "AspectRatioImageView.java"


# instance fields
.field private mFill:Z

.field private mMaxH:I

.field private mMinW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    .line 12
    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    .line 13
    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    .line 12
    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    .line 13
    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    .line 12
    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    .line 13
    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    .line 27
    return-void
.end method

.method public static dip2pixel(ILandroid/content/Context;)F
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 186
    const/4 v1, 0x1

    int-to-float v2, p0

    .line 187
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 186
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 189
    return v0
.end method


# virtual methods
.method ensureConstraintMetAndSet(IIII)V
    .locals 2

    .prologue
    .line 87
    if-ge p3, p4, :cond_2

    const/4 v0, 0x1

    .line 89
    :goto_0
    if-eqz v0, :cond_3

    .line 91
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    if-lez v0, :cond_0

    .line 92
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    .line 94
    int-to-float v1, p1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    .line 95
    float-to-int p1, v0

    .line 96
    div-int v0, p4, p3

    mul-int p2, v0, p1

    .line 100
    :cond_0
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    if-lez v0, :cond_1

    .line 101
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    .line 103
    int-to-float v1, p2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 104
    float-to-int p2, v0

    .line 105
    mul-int v0, p2, p3

    div-int p1, v0, p4

    .line 131
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/adsdk/sdk/video/AspectRatioImageView;->setMeasuredDimension(II)V

    .line 132
    return-void

    .line 87
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_3
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    if-lez v0, :cond_4

    .line 112
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    .line 114
    int-to-float v1, p2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    .line 115
    float-to-int p2, v0

    .line 116
    mul-int v0, p2, p3

    div-int p1, v0, p4

    .line 120
    :cond_4
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    if-lez v0, :cond_1

    .line 121
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    .line 123
    int-to-float v1, p1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 124
    float-to-int p1, v0

    .line 125
    div-int v0, p4, p3

    mul-int p2, v0, p1

    goto :goto_1
.end method

.method public fillParent(ZII)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    .line 31
    iput p3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    .line 32
    iput p2, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    .line 34
    return-void
.end method

.method getConstrainedHeight(IIII)I
    .locals 2

    .prologue
    .line 136
    if-ge p3, p4, :cond_2

    const/4 v0, 0x1

    .line 138
    :goto_0
    if-eqz v0, :cond_3

    .line 140
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    if-lez v0, :cond_0

    .line 141
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    .line 143
    int-to-float v1, p1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    .line 144
    float-to-int v0, v0

    .line 145
    div-int v1, p4, p3

    mul-int p2, v1, v0

    .line 149
    :cond_0
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    if-lez v0, :cond_1

    .line 150
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    .line 152
    int-to-float v1, p2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 153
    float-to-int p2, v0

    .line 154
    mul-int v0, p2, p3

    div-int/2addr v0, p4

    .line 180
    :cond_1
    :goto_1
    return p2

    .line 136
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_3
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    if-lez v0, :cond_4

    .line 161
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    .line 163
    int-to-float v1, p2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    .line 164
    float-to-int p2, v0

    .line 165
    mul-int v0, p2, p3

    div-int p1, v0, p4

    .line 169
    :cond_4
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    if-lez v0, :cond_1

    .line 170
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    .line 172
    int-to-float v1, p1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 173
    float-to-int v0, v0

    .line 174
    div-int v1, p4, p3

    mul-int p2, v1, v0

    goto :goto_1
.end method

.method protected getMeasuredHeight(II)I
    .locals 5

    .prologue
    .line 62
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 63
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 65
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 67
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 70
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 72
    if-le v3, v2, :cond_2

    .line 73
    mul-int v0, v1, v2

    div-int/2addr v0, v3

    .line 80
    :goto_1
    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getConstrainedHeight(IIII)I

    move-result v0

    goto :goto_0

    .line 76
    :cond_2
    mul-int v0, v1, v3

    div-int/2addr v0, v2

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 40
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 42
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 58
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 46
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 48
    if-le v3, v2, :cond_2

    .line 49
    mul-int v0, v1, v2

    div-int/2addr v0, v3

    .line 56
    :goto_1
    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/adsdk/sdk/video/AspectRatioImageView;->ensureConstraintMetAndSet(IIII)V

    goto :goto_0

    .line 52
    :cond_2
    mul-int v0, v1, v3

    div-int/2addr v0, v2

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1
.end method
