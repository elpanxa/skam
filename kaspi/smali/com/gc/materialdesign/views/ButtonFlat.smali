.class public Lcom/gc/materialdesign/views/ButtonFlat;
.super Lcom/gc/materialdesign/views/Button;
.source "ButtonFlat.java"


# instance fields
.field textButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/gc/materialdesign/views/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->textButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->textButton:Landroid/widget/TextView;

    return-object v0
.end method

.method protected makePressColor()I
    .locals 1

    .prologue
    .line 96
    const-string v0, "#88DDDDDD"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 69
    invoke-super {p0, p1}, Lcom/gc/materialdesign/views/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->x:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFlat;->makePressColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget v1, p0, Lcom/gc/materialdesign/views/ButtonFlat;->x:F

    iget v2, p0, Lcom/gc/materialdesign/views/ButtonFlat;->y:F

    iget v3, p0, Lcom/gc/materialdesign/views/ButtonFlat;->radius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 76
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->radius:F

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFlat;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/gc/materialdesign/views/ButtonFlat;->rippleSize:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 77
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->radius:F

    iget v1, p0, Lcom/gc/materialdesign/views/ButtonFlat;->rippleSpeed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->radius:F

    .line 78
    :cond_0
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->radius:F

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFlat;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 79
    iput v4, p0, Lcom/gc/materialdesign/views/ButtonFlat;->x:F

    .line 80
    iput v4, p0, Lcom/gc/materialdesign/views/ButtonFlat;->y:F

    .line 81
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFlat;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/gc/materialdesign/views/ButtonFlat;->rippleSize:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->radius:F

    .line 82
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->clickAfterRipple:Z

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFlat;->invalidate()V

    .line 88
    :cond_2
    return-void
.end method

.method protected setAttributes(Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 37
    .line 38
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "text"

    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 39
    if-eq v0, v3, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFlat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFlat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gc/materialdesign/views/ButtonFlat;->textButton:Landroid/widget/TextView;

    .line 46
    iget-object v1, p0, Lcom/gc/materialdesign/views/ButtonFlat;->textButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->textButton:Landroid/widget/TextView;

    iget v1, p0, Lcom/gc/materialdesign/views/ButtonFlat;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->textButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 49
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 51
    iget-object v1, p0, Lcom/gc/materialdesign/views/ButtonFlat;->textButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->textButton:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFlat;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 55
    if-eq v0, v3, :cond_3

    .line 56
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFlat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFlat;->setBackgroundColor(I)V

    .line 64
    :cond_1
    :goto_1
    return-void

    .line 42
    :cond_2
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "text"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_3
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->background:I

    .line 61
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->background:I

    if-eq v0, v3, :cond_1

    .line 62
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->background:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFlat;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 105
    iput p1, p0, Lcom/gc/materialdesign/views/ButtonFlat;->backgroundColor:I

    .line 106
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFlat;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->backgroundColor:I

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->beforeBackground:I

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->textButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    return-void
.end method

.method protected setDefaultProperties()V
    .locals 2

    .prologue
    .line 25
    const/16 v0, 0x24

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->minHeight:I

    .line 26
    const/16 v0, 0x58

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->minWidth:I

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->rippleSize:I

    .line 29
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->minHeight:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFlat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFlat;->setMinimumHeight(I)V

    .line 30
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->minWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFlat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFlat;->setMinimumWidth(I)V

    .line 31
    sget v0, Lcom/gc/materialdesign/R$drawable;->background_transparent:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFlat;->setBackgroundResource(I)V

    .line 32
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFlat;->textButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method
