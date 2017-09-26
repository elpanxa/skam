.class public Lit/neokree/materialtabs/MaterialTabHost;
.super Landroid/widget/RelativeLayout;
.source "MaterialTabHost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation


# static fields
.field private static tabSelected:I


# instance fields
.field private accentColor:I

.field private density:F

.field private hasIcons:Z

.field private iconColor:I

.field private isTablet:Z

.field private layout:Landroid/widget/LinearLayout;

.field private left:Landroid/widget/ImageButton;

.field private primaryColor:I

.field private right:Landroid/widget/ImageButton;

.field private scrollView:Landroid/widget/HorizontalScrollView;

.field private scrollable:Z

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lit/neokree/materialtabs/MaterialTab;",
            ">;"
        }
    .end annotation
.end field

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/neokree/materialtabs/MaterialTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lit/neokree/materialtabs/MaterialTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->scrollView:Landroid/widget/HorizontalScrollView;

    .line 64
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->scrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 65
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 66
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    .line 67
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->scrollView:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 70
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lit/neokree/materialtabs/R$styleable;->MaterialTabHost:[I

    invoke-virtual {v0, p2, v1, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 75
    :try_start_0
    sget v0, Lit/neokree/materialtabs/R$styleable;->MaterialTabHost_hasIcons:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->hasIcons:Z

    .line 77
    sget v0, Lit/neokree/materialtabs/R$styleable;->MaterialTabHost_primaryColor:I

    const-string v2, "#009688"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->primaryColor:I

    .line 78
    sget v0, Lit/neokree/materialtabs/R$styleable;->MaterialTabHost_accentColor:I

    const-string v2, "#00b0ff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->accentColor:I

    .line 79
    sget v0, Lit/neokree/materialtabs/R$styleable;->MaterialTabHost_iconColor:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->iconColor:I

    .line 80
    sget v0, Lit/neokree/materialtabs/R$styleable;->MaterialTabHost_textColor:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->textColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    :goto_0
    invoke-virtual {p0}, Lit/neokree/materialtabs/MaterialTabHost;->isInEditMode()Z

    .line 90
    iput-boolean v3, p0, Lit/neokree/materialtabs/MaterialTabHost;->scrollable:Z

    .line 91
    invoke-virtual {p0}, Lit/neokree/materialtabs/MaterialTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lit/neokree/materialtabs/R$bool;->isTablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->isTablet:Z

    .line 92
    invoke-virtual {p0}, Lit/neokree/materialtabs/MaterialTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->density:F

    .line 93
    sput v3, Lit/neokree/materialtabs/MaterialTabHost;->tabSelected:I

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    .line 99
    iget v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->primaryColor:I

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 100
    return-void

    .line 82
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 86
    :cond_0
    iput-boolean v3, p0, Lit/neokree/materialtabs/MaterialTabHost;->hasIcons:Z

    goto :goto_0
.end method

.method private scrollTo(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 188
    move v1, v2

    move v3, v2

    .line 189
    :goto_0
    if-ge v1, p1, :cond_2

    .line 190
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    invoke-virtual {v0}, Lit/neokree/materialtabs/MaterialTab;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 191
    if-nez v0, :cond_0

    .line 192
    iget-boolean v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->isTablet:Z

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    invoke-virtual {v0}, Lit/neokree/materialtabs/MaterialTab;->getTabMinWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x41c00000    # 24.0f

    iget v5, p0, Lit/neokree/materialtabs/MaterialTabHost;->density:F

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 198
    :cond_0
    :goto_1
    add-int/2addr v3, v0

    .line 189
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    invoke-virtual {v0}, Lit/neokree/materialtabs/MaterialTab;->getTabMinWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x42400000    # 48.0f

    iget v5, p0, Lit/neokree/materialtabs/MaterialTabHost;->density:F

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_1

    .line 200
    :cond_2
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 201
    return-void
.end method


# virtual methods
.method public addTab(Lit/neokree/materialtabs/MaterialTab;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 138
    iget v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->accentColor:I

    invoke-virtual {p1, v0}, Lit/neokree/materialtabs/MaterialTab;->setAccentColor(I)V

    .line 139
    iget v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->primaryColor:I

    invoke-virtual {p1, v0}, Lit/neokree/materialtabs/MaterialTab;->setPrimaryColor(I)V

    .line 140
    iget v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->textColor:I

    invoke-virtual {p1, v0}, Lit/neokree/materialtabs/MaterialTab;->setTextColor(I)V

    .line 141
    iget v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->iconColor:I

    invoke-virtual {p1, v0}, Lit/neokree/materialtabs/MaterialTab;->setIconColor(I)V

    .line 142
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lit/neokree/materialtabs/MaterialTab;->setPosition(I)V

    .line 145
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->hasIcons:Z

    if-nez v0, :cond_0

    .line 149
    iput-boolean v2, p0, Lit/neokree/materialtabs/MaterialTabHost;->scrollable:Z

    .line 152
    :cond_0
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->hasIcons:Z

    if-eqz v0, :cond_1

    .line 153
    iput-boolean v2, p0, Lit/neokree/materialtabs/MaterialTabHost;->scrollable:Z

    .line 155
    :cond_1
    return-void
.end method

.method public getCurrentTab()Lit/neokree/materialtabs/MaterialTab;
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    .line 320
    invoke-virtual {v0}, Lit/neokree/materialtabs/MaterialTab;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTab()Lit/neokree/materialtabs/MaterialTab;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lit/neokree/materialtabs/MaterialTab;

    invoke-virtual {p0}, Lit/neokree/materialtabs/MaterialTabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lit/neokree/materialtabs/MaterialTabHost;->hasIcons:Z

    invoke-direct {v0, v1, v2}, Lit/neokree/materialtabs/MaterialTab;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 10

    .prologue
    const/high16 v9, 0x42700000    # 60.0f

    const/high16 v8, 0x42600000    # 56.0f

    const/high16 v7, 0x42400000    # 48.0f

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 221
    invoke-super {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 222
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 225
    iget-boolean v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->scrollable:Z

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lit/neokree/materialtabs/MaterialTabHost;->getWidth()I

    move-result v0

    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v0, v1

    .line 229
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 230
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    .line 231
    iget-object v4, p0, Lit/neokree/materialtabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lit/neokree/materialtabs/MaterialTab;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 236
    :cond_0
    iget-boolean v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->isTablet:Z

    if-nez v0, :cond_3

    move v1, v2

    .line 237
    :goto_1
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 239
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    .line 241
    invoke-virtual {v0}, Lit/neokree/materialtabs/MaterialTab;->getTabMinWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41c00000    # 24.0f

    iget v5, p0, Lit/neokree/materialtabs/MaterialTabHost;->density:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 243
    if-nez v1, :cond_1

    .line 245
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lit/neokree/materialtabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 246
    iget v5, p0, Lit/neokree/materialtabs/MaterialTabHost;->density:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumWidth(I)V

    .line 247
    iget-object v5, p0, Lit/neokree/materialtabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    :cond_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 251
    iget-object v3, p0, Lit/neokree/materialtabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lit/neokree/materialtabs/MaterialTab;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_2

    .line 255
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lit/neokree/materialtabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 256
    iget v3, p0, Lit/neokree/materialtabs/MaterialTabHost;->density:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 257
    iget-object v3, p0, Lit/neokree/materialtabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 263
    :goto_2
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 265
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    .line 267
    invoke-virtual {v0}, Lit/neokree/materialtabs/MaterialTab;->getTabMinWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lit/neokree/materialtabs/MaterialTabHost;->density:F

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 269
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 270
    iget-object v3, p0, Lit/neokree/materialtabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lit/neokree/materialtabs/MaterialTab;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 275
    :cond_4
    iget-boolean v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->isTablet:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->scrollable:Z

    if-eqz v0, :cond_5

    .line 277
    invoke-virtual {p0}, Lit/neokree/materialtabs/MaterialTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 279
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lit/neokree/materialtabs/MaterialTabHost;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->left:Landroid/widget/ImageButton;

    .line 280
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->left:Landroid/widget/ImageButton;

    sget v3, Lit/neokree/materialtabs/R$id;->left:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setId(I)V

    .line 281
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->left:Landroid/widget/ImageButton;

    sget v3, Lit/neokree/materialtabs/R$drawable;->left_arrow:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->left:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 283
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->left:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lit/neokree/materialtabs/MaterialTabHost;->density:F

    mul-float/2addr v3, v8

    float-to-int v3, v3

    iget v4, p0, Lit/neokree/materialtabs/MaterialTabHost;->density:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 287
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 288
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 289
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 290
    iget-object v3, p0, Lit/neokree/materialtabs/MaterialTabHost;->left:Landroid/widget/ImageButton;

    invoke-virtual {p0, v3, v1}, Lit/neokree/materialtabs/MaterialTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lit/neokree/materialtabs/MaterialTabHost;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->right:Landroid/widget/ImageButton;

    .line 293
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->right:Landroid/widget/ImageButton;

    sget v3, Lit/neokree/materialtabs/R$id;->right:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setId(I)V

    .line 294
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->right:Landroid/widget/ImageButton;

    sget v3, Lit/neokree/materialtabs/R$drawable;->right_arrow:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->right:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 296
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->right:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->density:F

    mul-float/2addr v1, v8

    float-to-int v1, v1

    iget v3, p0, Lit/neokree/materialtabs/MaterialTabHost;->density:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 299
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 300
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 301
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 302
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->right:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Lit/neokree/materialtabs/MaterialTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 305
    sget v1, Lit/neokree/materialtabs/R$id;->right:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 306
    const/4 v1, 0x1

    sget v2, Lit/neokree/materialtabs/R$id;->left:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 307
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v1, v0}, Lit/neokree/materialtabs/MaterialTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    :goto_3
    sget v0, Lit/neokree/materialtabs/MaterialTabHost;->tabSelected:I

    invoke-virtual {p0, v0}, Lit/neokree/materialtabs/MaterialTabHost;->setSelectedNavigationItem(I)V

    .line 316
    return-void

    .line 311
    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 312
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v1, v0}, Lit/neokree/materialtabs/MaterialTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 329
    invoke-virtual {p0}, Lit/neokree/materialtabs/MaterialTabHost;->getCurrentTab()Lit/neokree/materialtabs/MaterialTab;

    move-result-object v0

    invoke-virtual {v0}, Lit/neokree/materialtabs/MaterialTab;->getPosition()I

    move-result v0

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lit/neokree/materialtabs/R$id;->right:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 332
    add-int/lit8 v1, v0, 0x1

    .line 335
    invoke-virtual {p0, v1}, Lit/neokree/materialtabs/MaterialTabHost;->setSelectedNavigationItem(I)V

    .line 338
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    invoke-virtual {v0}, Lit/neokree/materialtabs/MaterialTab;->getTabListener()Lit/neokree/materialtabs/MaterialTabListener;

    move-result-object v2

    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    invoke-interface {v2, v0}, Lit/neokree/materialtabs/MaterialTabListener;->onTabSelected(Lit/neokree/materialtabs/MaterialTab;)V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lit/neokree/materialtabs/R$id;->left:I

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 343
    add-int/lit8 v1, v0, -0x1

    .line 346
    invoke-virtual {p0, v1}, Lit/neokree/materialtabs/MaterialTabHost;->setSelectedNavigationItem(I)V

    .line 348
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    invoke-virtual {v0}, Lit/neokree/materialtabs/MaterialTab;->getTabListener()Lit/neokree/materialtabs/MaterialTabListener;

    move-result-object v2

    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    invoke-interface {v2, v0}, Lit/neokree/materialtabs/MaterialTabListener;->onTabSelected(Lit/neokree/materialtabs/MaterialTab;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 215
    invoke-virtual {p0}, Lit/neokree/materialtabs/MaterialTabHost;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lit/neokree/materialtabs/MaterialTabHost;->notifyDataSetChanged()V

    .line 217
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 205
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 206
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 209
    invoke-super {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 210
    return-void
.end method

.method public setAccentColor(I)V
    .locals 2

    .prologue
    .line 113
    iput p1, p0, Lit/neokree/materialtabs/MaterialTabHost;->accentColor:I

    .line 115
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    .line 116
    invoke-virtual {v0, p1}, Lit/neokree/materialtabs/MaterialTab;->setAccentColor(I)V

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method public setIconColor(I)V
    .locals 2

    .prologue
    .line 129
    iput p1, p0, Lit/neokree/materialtabs/MaterialTabHost;->iconColor:I

    .line 131
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    .line 132
    invoke-virtual {v0, p1}, Lit/neokree/materialtabs/MaterialTab;->setIconColor(I)V

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 2

    .prologue
    .line 103
    iput p1, p0, Lit/neokree/materialtabs/MaterialTabHost;->primaryColor:I

    .line 105
    iget v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->primaryColor:I

    invoke-virtual {p0, v0}, Lit/neokree/materialtabs/MaterialTabHost;->setBackgroundColor(I)V

    .line 107
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    .line 108
    invoke-virtual {v0, p1}, Lit/neokree/materialtabs/MaterialTab;->setPrimaryColor(I)V

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2

    .prologue
    .line 162
    if-ltz p1, :cond_0

    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Index overflow"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 167
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    .line 169
    if-ne v1, p1, :cond_2

    .line 170
    invoke-virtual {v0}, Lit/neokree/materialtabs/MaterialTab;->activateTab()V

    .line 166
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    invoke-virtual {v0}, Lit/neokree/materialtabs/MaterialTab;->disableTab()V

    goto :goto_1

    .line 178
    :cond_3
    iget-boolean v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->scrollable:Z

    if-eqz v0, :cond_4

    .line 179
    invoke-direct {p0, p1}, Lit/neokree/materialtabs/MaterialTabHost;->scrollTo(I)V

    .line 182
    :cond_4
    sput p1, Lit/neokree/materialtabs/MaterialTabHost;->tabSelected:I

    .line 185
    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .prologue
    .line 121
    iput p1, p0, Lit/neokree/materialtabs/MaterialTabHost;->textColor:I

    .line 123
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTab;

    .line 124
    invoke-virtual {v0, p1}, Lit/neokree/materialtabs/MaterialTab;->setTextColor(I)V

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method
