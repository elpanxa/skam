.class public Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;
.super Landroid/widget/RelativeLayout;
.source "FullscreenStatic.java"

# interfaces
.implements Lcom/revmob/ads/fullscreen/internal/FullscreenView;


# instance fields
.field private amplitudeMax:I

.field private data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

.field private fullscreenImageView:Landroid/widget/ImageView;

.field private height:I

.field private initialAngleX:I

.field private initialAngleY:I

.field private initialX:I

.field private initialY:I

.field private parallaxDelta:I

.field private parallaxEnabled:Z

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/ads/fullscreen/client/FullscreenData;Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;ZI)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/16 v1, -0x3e7

    const/4 v3, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-boolean v3, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->parallaxEnabled:Z

    .line 19
    iput v3, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->parallaxDelta:I

    .line 20
    const/16 v0, 0x1c

    iput v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->amplitudeMax:I

    .line 23
    iput v1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialAngleX:I

    .line 24
    iput v1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialAngleY:I

    .line 27
    iput v3, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->y:I

    .line 28
    iput v3, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->x:I

    .line 33
    iput-object p2, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    .line 35
    iput-boolean p4, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->parallaxEnabled:Z

    .line 36
    iget v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->amplitudeMax:I

    if-gt p5, v0, :cond_0

    :goto_0
    iput p5, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->parallaxDelta:I

    .line 37
    if-eqz p4, :cond_1

    .line 38
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 40
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->width:I

    .line 41
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->height:I

    .line 43
    iput v3, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialX:I

    .line 44
    iput v3, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialY:I

    .line 45
    iget v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialX:I

    iput v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->x:I

    .line 46
    iget v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialY:I

    iput v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->y:I

    .line 48
    invoke-virtual {p0, v3}, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->setWillNotDraw(Z)V

    .line 49
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->width:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->setGravity(I)V

    .line 51
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 52
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 53
    invoke-direct {p0, p3}, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->createImageAdView(Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    :goto_1
    return-void

    .line 36
    :cond_0
    iget p5, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->amplitudeMax:I

    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    invoke-direct {p0, p3}, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->createImageAdView(Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private createImageAdView(Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;)Landroid/view/View;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->fullscreenImageView:Landroid/widget/ImageView;

    .line 94
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->update()V

    .line 95
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->fullscreenImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic$1;

    invoke-direct {v1, p0, p1}, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic$1;-><init>(Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->fullscreenImageView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->parallaxEnabled:Z

    if-eqz v0, :cond_0

    .line 119
    iget v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->fullscreenImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 82
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->fullscreenImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v2, v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getAdImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->isStaticMultiOrientationFullscreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getOrientationLock()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->fullscreenImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->fullscreenImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method public updateAccordingToDevicePosition(II)V
    .locals 3

    .prologue
    const/16 v1, -0x3e7

    .line 125
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->parallaxEnabled:Z

    if-eqz v0, :cond_2

    .line 126
    iget v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialAngleX:I

    if-ne v0, v1, :cond_0

    .line 127
    iput p1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialAngleX:I

    .line 129
    :cond_0
    iget v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialAngleY:I

    if-ne v0, v1, :cond_1

    .line 130
    iput p2, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialAngleY:I

    .line 133
    :cond_1
    iget v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialAngleX:I

    sub-int v0, p1, v0

    .line 134
    if-ltz v0, :cond_3

    .line 135
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 136
    iget v1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialX:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->parallaxDelta:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialX:I

    sub-int v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->x:I

    .line 142
    :goto_0
    iget v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialAngleY:I

    sub-int v0, p2, v0

    .line 143
    if-ltz v0, :cond_4

    .line 144
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 145
    iget v1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialY:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->parallaxDelta:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialY:I

    sub-int v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->y:I

    .line 150
    :goto_1
    invoke-static {}, Lcom/revmob/internal/AndroidHelper;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->invalidate()V

    .line 156
    :cond_2
    :goto_2
    return-void

    .line 138
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 139
    iget v1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialX:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->parallaxDelta:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialX:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->x:I

    goto :goto_0

    .line 147
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 148
    iget v1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialY:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->parallaxDelta:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->initialY:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->y:I

    goto :goto_1

    .line 153
    :cond_5
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->postInvalidate()V

    goto :goto_2
.end method
