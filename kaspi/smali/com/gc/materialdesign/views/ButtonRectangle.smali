.class public Lcom/gc/materialdesign/views/ButtonRectangle;
.super Lcom/gc/materialdesign/views/Button;
.source "ButtonRectangle.java"


# instance fields
.field height:Ljava/lang/Integer;

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field textButton:Landroid/widget/TextView;

.field width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/gc/materialdesign/views/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->setDefaultProperties()V

    .line 26
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v6, 0x40c00000    # 6.0f

    .line 141
    invoke-super {p0, p1}, Lcom/gc/materialdesign/views/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 142
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->x:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 144
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v3

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->makeCircle()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 146
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->invalidate()V

    .line 148
    :cond_0
    return-void
.end method

.method protected setAttributes(Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, -0x2

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v5, -0x1

    .line 45
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1, v5}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 46
    if-eq v0, v5, :cond_3

    .line 47
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonRectangle;->setBackgroundColor(I)V

    .line 57
    :cond_0
    :goto_0
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "padding"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "text"

    invoke-interface {p1, v0, v1, v5}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 79
    if-eq v0, v5, :cond_4

    .line 80
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_1
    if-eqz v0, :cond_2

    .line 85
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 89
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 91
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v3

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    iget-object v1, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonRectangle;->addView(Landroid/view/View;)V

    .line 99
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "textColor"

    invoke-interface {p1, v0, v1, v5}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 100
    if-eq v0, v5, :cond_5

    .line 101
    iget-object v1, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    :cond_1
    :goto_2
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010095

    aput v1, v0, v8

    .line 110
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    cmpl-float v0, v1, v7

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 118
    :cond_2
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "rippleSpeed"

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    int-to-float v2, v2

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->rippleSpeed:F

    .line 120
    return-void

    .line 51
    :cond_3
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->background:I

    .line 52
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->background:I

    if-eq v0, v5, :cond_0

    .line 53
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->background:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonRectangle;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 82
    :cond_4
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "text"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 105
    :cond_5
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "textColor"

    invoke-interface {p1, v0, v1, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 106
    if-eq v0, v5, :cond_1

    .line 107
    iget-object v1, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method protected setDefaultProperties()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x50

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->minWidth:I

    .line 34
    const/16 v0, 0x24

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->minHeight:I

    .line 35
    sget v0, Lcom/gc/materialdesign/R$drawable;->background_button_rectangle:I

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->background:I

    .line 36
    invoke-super {p0}, Lcom/gc/materialdesign/views/Button;->setDefaultProperties()V

    .line 37
    return-void
.end method
