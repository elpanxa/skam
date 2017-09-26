.class public Lcom/gc/materialdesign/views/ProgressBarDeterminate;
.super Lcom/gc/materialdesign/views/CustomView;
.source "ProgressBarDeterminate.java"


# instance fields
.field backgroundColor:I

.field max:I

.field min:I

.field pendindProgress:I

.field progress:I

.field progressView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/gc/materialdesign/views/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/16 v0, 0x64

    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->max:I

    .line 20
    iput v1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->min:I

    .line 21
    iput v1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->progress:I

    .line 23
    const-string v0, "#1E88E5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->backgroundColor:I

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->pendindProgress:I

    .line 29
    invoke-virtual {p0, p2}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->setAttributes(Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->progress:I

    return v0
.end method

.method protected makePressColor()I
    .locals 4

    .prologue
    .line 78
    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->backgroundColor:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 79
    iget v1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->backgroundColor:I

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 80
    iget v2, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->backgroundColor:I

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    .line 81
    const/16 v3, 0x80

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/gc/materialdesign/views/CustomView;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->pendindProgress:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 90
    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->pendindProgress:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->setProgress(I)V

    .line 91
    :cond_0
    return-void
.end method

.method protected setAttributes(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 35
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->progressView:Landroid/view/View;

    .line 36
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    iget-object v1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->progressView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->progressView:Landroid/view/View;

    sget v1, Lcom/gc/materialdesign/R$drawable;->background_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->progressView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->addView(Landroid/view/View;)V

    .line 43
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 44
    if-eq v0, v2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->setBackgroundColor(I)V

    .line 55
    :goto_0
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "min"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->min:I

    .line 56
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "max"

    const/16 v2, 0x64

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->max:I

    .line 57
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "progress"

    iget v2, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->min:I

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->progress:I

    .line 59
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->setMinimumHeight(I)V

    .line 61
    new-instance v0, Lcom/gc/materialdesign/views/ProgressBarDeterminate$1;

    invoke-direct {v0, p0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate$1;-><init>(Lcom/gc/materialdesign/views/ProgressBarDeterminate;)V

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void

    .line 48
    :cond_0
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 49
    if-eq v0, v2, :cond_1

    .line 50
    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->setBackgroundColor(I)V

    goto :goto_0

    .line 52
    :cond_1
    const-string v0, "#1E88E5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .prologue
    .line 128
    iput p1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->backgroundColor:I

    .line 129
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->backgroundColor:I

    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->beforeBackground:I

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->progressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 132
    sget v1, Lcom/gc/materialdesign/R$id;->shape_bacground:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 133
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 134
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->makePressColor()I

    move-result v0

    invoke-super {p0, v0}, Lcom/gc/materialdesign/views/CustomView;->setBackgroundColor(I)V

    .line 135
    return-void
.end method

.method public setMax(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->max:I

    .line 95
    return-void
.end method

.method public setMin(I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->min:I

    .line 99
    return-void
.end method

.method public setProgress(I)V
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iput p1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->pendindProgress:I

    .line 120
    :goto_0
    return-void

    .line 106
    :cond_0
    iput p1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->progress:I

    .line 107
    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->max:I

    if-le p1, v0, :cond_1

    .line 108
    iget p1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->max:I

    .line 109
    :cond_1
    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->min:I

    if-ge p1, v0, :cond_2

    .line 110
    iget p1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->min:I

    .line 111
    :cond_2
    iget v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->max:I

    iget v1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->min:I

    sub-int/2addr v0, v1

    .line 112
    int-to-double v2, p1

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 113
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v1, v0

    .line 114
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->progressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 115
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 116
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 117
    iget-object v1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->progressView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->pendindProgress:I

    goto :goto_0
.end method
