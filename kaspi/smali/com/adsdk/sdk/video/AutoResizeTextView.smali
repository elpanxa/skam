.class public Lcom/adsdk/sdk/video/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;
    }
.end annotation


# static fields
.field public static final MIN_TEXT_SIZE:F = 20.0f

.field private static final mEllipsis:Ljava/lang/String; = "..."

.field private static final sTextResizeCanvas:Landroid/graphics/Canvas;


# instance fields
.field private mAddEllipsis:Z

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mNeedsResize:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextResizeListener:Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;

.field private mTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->sTextResizeCanvas:Landroid/graphics/Canvas;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mNeedsResize:Z

    .line 30
    iput v1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    .line 32
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingMult:F

    .line 36
    iput v1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingAdd:F

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mAddEllipsis:Z

    .line 50
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    .line 51
    return-void
.end method

.method private getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I
    .locals 8

    .prologue
    .line 198
    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 200
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingMult:F

    iget v6, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingAdd:F

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 201
    sget-object v1, Lcom/adsdk/sdk/video/AutoResizeTextView;->sTextResizeCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 202
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAddEllipsis()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mAddEllipsis:Z

    return v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 125
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mNeedsResize:Z

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 127
    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/video/AutoResizeTextView;->resizeText(II)V

    .line 130
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 131
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 62
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mNeedsResize:Z

    .line 65
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mNeedsResize:Z

    .line 57
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->resetTextSize()V

    .line 58
    return-void
.end method

.method public resetTextSize()V
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x0

    iget v1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 120
    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    .line 121
    return-void
.end method

.method public resizeText()V
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 135
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 136
    invoke-virtual {p0, v1, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->resizeText(II)V

    .line 137
    return-void
.end method

.method public resizeText(II)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    if-lez p1, :cond_0

    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v9

    .line 150
    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    iget v3, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 152
    :goto_1
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v3

    move v8, v0

    move v0, v3

    .line 154
    :goto_2
    if-le v0, p2, :cond_2

    iget v3, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    cmpl-float v3, v8, v3

    if-gtz v3, :cond_6

    .line 159
    :cond_2
    iget-boolean v3, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mAddEllipsis:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    cmpl-float v3, v8, v3

    if-nez v3, :cond_3

    if-le v0, p2, :cond_3

    .line 161
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingMult:F

    iget v6, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingAdd:F

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 162
    sget-object v3, Lcom/adsdk/sdk/video/AutoResizeTextView;->sTextResizeCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 164
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 166
    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 168
    if-gez v4, :cond_7

    .line 169
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :cond_3
    :goto_3
    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 187
    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingAdd:F

    iget v1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingMult:F

    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/video/AutoResizeTextView;->setLineSpacing(FF)V

    .line 189
    iget-object v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextResizeListener:Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextResizeListener:Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;

    invoke-interface {v0, p0, v9, v8}, Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;->onTextResize(Landroid/widget/TextView;FF)V

    .line 193
    :cond_4
    iput-boolean v7, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mNeedsResize:Z

    goto :goto_0

    .line 150
    :cond_5
    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    goto :goto_1

    .line 155
    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, v8, v0

    iget v3, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 156
    invoke-direct {p0, v1, v2, p1, v3}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v0

    move v8, v3

    goto :goto_2

    .line 173
    :cond_7
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v5

    .line 174
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v3

    .line 175
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    .line 176
    const-string v4, "..."

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 178
    :goto_4
    int-to-float v6, p1

    add-float/2addr v0, v4

    cmpg-float v0, v6, v0

    if-ltz v0, :cond_8

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v7, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 179
    :cond_8
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v3, 0x1

    invoke-interface {v1, v5, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_4
.end method

.method public setAddEllipsis(Z)V
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mAddEllipsis:Z

    .line 112
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 86
    iput p2, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingMult:F

    .line 87
    iput p1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingAdd:F

    .line 88
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    .line 92
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->requestLayout()V

    .line 93
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->invalidate()V

    .line 94
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    .line 102
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->requestLayout()V

    .line 103
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->invalidate()V

    .line 104
    return-void
.end method

.method public setOnResizeListener(Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextResizeListener:Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;

    .line 69
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    .line 75
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 80
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    .line 81
    return-void
.end method
