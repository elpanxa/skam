.class public Lcom/avocarrot/androidsdk/ui/AdjustableImageView;
.super Landroid/widget/ImageView;
.source "AdjustableImageView.java"


# instance fields
.field mAdjustViewBounds:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 32
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/ui/AdjustableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    mul-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 34
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 60
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-boolean v1, p0, Lcom/avocarrot/androidsdk/ui/AdjustableImageView;->mAdjustViewBounds:Z

    if-eqz v1, :cond_4

    .line 39
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 40
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 41
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 42
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 43
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 46
    if-ne v4, v6, :cond_2

    if-eq v5, v6, :cond_2

    .line 48
    mul-int/2addr v1, v2

    div-int v0, v1, v0

    .line 49
    invoke-virtual {p0, v0, v2}, Lcom/avocarrot/androidsdk/ui/AdjustableImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 50
    :cond_2
    if-ne v5, v6, :cond_3

    if-eq v4, v6, :cond_3

    .line 52
    mul-int/2addr v0, v3

    div-int/2addr v0, v1

    .line 53
    invoke-virtual {p0, v3, v0}, Lcom/avocarrot/androidsdk/ui/AdjustableImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_0

    .line 58
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setAdjustViewBounds(Z)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/avocarrot/androidsdk/ui/AdjustableImageView;->mAdjustViewBounds:Z

    .line 27
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 28
    return-void
.end method
