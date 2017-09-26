.class public Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "IcsLinearLayout.java"


# static fields
.field private static final IS_HONEYCOMB:Z

.field private static final LinearLayout_divider:I = 0x0

.field private static final LinearLayout_dividerPadding:I = 0x3

.field private static final LinearLayout_measureWithLargestChild:I = 0x1

.field private static final LinearLayout_showDividers:I = 0x2

.field private static final R_styleable_LinearLayout:[I

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I


# instance fields
.field private mClipDivider:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field protected mDividerHeight:I

.field private mDividerPadding:I

.field protected mDividerWidth:I

.field private mShowDividers:I

.field private mUseLargestChild:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->R_styleable_LinearLayout:[I

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->IS_HONEYCOMB:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :array_0
    .array-data 4
        0x1010129
        0x10102d4
        0x1010329
        0x101032a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    sget-object v0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->R_styleable_LinearLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mShowDividers:I

    .line 80
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerPadding:I

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mUseLargestChild:Z

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method

.method private drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getChildCount()I

    move-result v2

    .line 233
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 234
    invoke-virtual {p0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 236
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 237
    invoke-virtual {p0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 239
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v0, v3, v0

    .line 240
    invoke-direct {p0, p1, v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 233
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p0, v2}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 248
    if-nez v0, :cond_3

    .line 249
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerWidth:I

    sub-int/2addr v0, v1

    .line 254
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 256
    :cond_2
    return-void

    .line 252
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_1
.end method

.method private drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getChildCount()I

    move-result v2

    .line 206
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 207
    invoke-virtual {p0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 209
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 210
    invoke-virtual {p0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 212
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v0, v3, v0

    .line 213
    invoke-direct {p0, p1, v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 206
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p0, v2}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 221
    if-nez v0, :cond_3

    .line 222
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerHeight:I

    sub-int/2addr v0, v1

    .line 227
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 229
    :cond_2
    return-void

    .line 225
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_1
.end method

.method private drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mClipDivider:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->IS_HONEYCOMB:Z

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 261
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v0, v1

    .line 262
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerHeight:I

    add-int/2addr v2, p2

    .line 261
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 263
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 270
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 267
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 266
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 268
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mClipDivider:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->IS_HONEYCOMB:Z

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 275
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerWidth:I

    add-int/2addr v1, p2

    .line 276
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    .line 275
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 277
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 284
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 281
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 280
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 282
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private useLargestChildHorizontal()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getChildCount()I

    move-result v4

    move v1, v0

    move v3, v0

    .line 362
    :goto_0
    if-ge v1, v4, :cond_0

    .line 363
    invoke-virtual {p0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 364
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 362
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move v2, v0

    move v1, v0

    .line 369
    :goto_1
    if-ge v2, v4, :cond_3

    .line 370
    invoke-virtual {p0, v2}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 372
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_1

    move v0, v1

    .line 369
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 377
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 379
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 380
    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 382
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 384
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 381
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 386
    add-int/2addr v1, v3

    .line 392
    :goto_3
    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v1

    goto :goto_2

    .line 389
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_3

    .line 395
    :cond_3
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 396
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->setMeasuredDimension(II)V

    .line 397
    return-void

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private useLargestChildVertical()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getChildCount()I

    move-result v4

    move v1, v0

    move v3, v0

    .line 404
    :goto_0
    if-ge v1, v4, :cond_0

    .line 405
    invoke-virtual {p0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 406
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 404
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move v2, v0

    move v1, v0

    .line 411
    :goto_1
    if-ge v2, v4, :cond_3

    .line 412
    invoke-virtual {p0, v2}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 414
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_1

    move v0, v1

    .line 411
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 419
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 421
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 422
    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 424
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 426
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 423
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 428
    add-int/2addr v1, v3

    .line 434
    :goto_3
    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v1

    goto :goto_2

    .line 431
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_3

    .line 437
    :cond_3
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 438
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->setMeasuredDimension(II)V

    .line 439
    return-void

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerWidth:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mShowDividers:I

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    if-nez p1, :cond_2

    .line 295
    iget v2, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 295
    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 297
    iget v2, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 298
    :cond_3
    iget v2, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 300
    add-int/lit8 v2, p1, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 301
    invoke-virtual {p0, v2}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 300
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 308
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 166
    invoke-virtual {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 167
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getOrientation()I

    move-result v2

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 169
    invoke-virtual {p0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    if-ne v2, v5, :cond_2

    .line 172
    iget v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerHeight:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 179
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getChildCount()I

    move-result v3

    .line 180
    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_1

    .line 181
    invoke-virtual {p0, v3}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    if-ne v2, v5, :cond_3

    .line 183
    iget v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 189
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 190
    return-void

    .line 175
    :cond_2
    iget v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerWidth:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 185
    :cond_3
    iget v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerWidth:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 196
    invoke-direct {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    .line 201
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 202
    return-void

    .line 198
    :cond_1
    invoke-direct {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 341
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 343
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mUseLargestChild:Z

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->getOrientation()I

    move-result v0

    .line 345
    packed-switch v0, :pswitch_data_0

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 347
    :pswitch_0
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->useLargestChildHorizontal()V

    goto :goto_0

    .line 351
    :pswitch_1
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->useLargestChildVertical()V

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 120
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mClipDivider:Z

    .line 121
    if-eqz p1, :cond_2

    .line 122
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerWidth:I

    .line 123
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerHeight:I

    .line 128
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->setWillNotDraw(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->requestLayout()V

    goto :goto_0

    .line 125
    :cond_2
    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerWidth:I

    .line 126
    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerHeight:I

    goto :goto_1
.end method

.method public setDividerPadding(I)V
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mDividerPadding:I

    .line 153
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mUseLargestChild:Z

    .line 337
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->requestLayout()V

    .line 104
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->invalidate()V

    .line 106
    :cond_0
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->mShowDividers:I

    .line 107
    return-void
.end method
