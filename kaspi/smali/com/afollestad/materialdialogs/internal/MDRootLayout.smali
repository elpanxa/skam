.class public Lcom/afollestad/materialdialogs/internal/MDRootLayout;
.super Landroid/view/ViewGroup;
.source "MDRootLayout.java"


# static fields
.field private static final INDEX_NEGATIVE:I = 0x1

.field private static final INDEX_NEUTRAL:I = 0x0

.field private static final INDEX_POSITIVE:I = 0x2


# instance fields
.field private mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mButtonBarHeight:I

.field private mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field private mButtonHorizontalEdgeMargin:I

.field private mButtonPaddingFull:I

.field private mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

.field private mContent:Landroid/view/View;

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:I

.field private mDrawBottomDivider:Z

.field private mDrawTopDivider:Z

.field private mForceStack:Z

.field private mIsStacked:Z

.field private mNoTitleNoPadding:Z

.field private mNoTitlePaddingFull:I

.field private mReducePaddingNoTitleNoButtons:Z

.field private mTitleBar:Landroid/view/View;

.field private mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mUseFullPadding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 43
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 44
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    .line 47
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 56
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 44
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    .line 47
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 56
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 74
    invoke-direct {p0, p1, p2, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 44
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    .line 47
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 56
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 44
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    .line 47
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 56
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;)Z
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canWebViewScroll(Landroid/webkit/WebView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    return p1
.end method

.method static synthetic access$202(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    return p1
.end method

.method static synthetic access$300(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/afollestad/materialdialogs/internal/MDRootLayout;)[Lcom/afollestad/materialdialogs/internal/MDButton;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/webkit/WebView;ZZZ)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidateDividersForWebView(Landroid/webkit/WebView;ZZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZZ)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidateDividersForScrollingView(Landroid/view/ViewGroup;ZZZ)V

    return-void
.end method

.method private addScrollListener(Landroid/view/ViewGroup;ZZ)V
    .locals 3

    .prologue
    .line 428
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_2

    .line 430
    :cond_1
    new-instance v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V

    .line 448
    if-nez p3, :cond_3

    .line 449
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 450
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 455
    :goto_0
    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    .line 457
    :cond_2
    return-void

    .line 452
    :cond_3
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 453
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method

.method private static canAdapterViewScroll(Landroid/widget/AdapterView;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 521
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    move v1, v2

    .line 537
    :cond_0
    :goto_0
    return v1

    .line 525
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 526
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    move v3, v1

    .line 528
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 530
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 533
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 534
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 525
    goto :goto_1

    :cond_3
    move v3, v2

    .line 526
    goto :goto_2
.end method

.method public static canRecyclerViewScroll(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 488
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 489
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    .line 492
    instance-of v4, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v4, :cond_0

    .line 493
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 494
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 499
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 504
    :goto_0
    return v1

    .line 496
    :cond_0
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$NotImplementedException;

    const-string v1, "Material Dialogs currently only supports LinearLayoutManager. Please report any new layout managers."

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_1
    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_3

    move v0, v2

    .line 503
    :goto_1
    if-eqz v0, :cond_2

    .line 504
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_4

    :cond_2
    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 502
    goto :goto_1

    :cond_4
    move v0, v1

    .line 504
    goto :goto_2
.end method

.method private static canScrollViewScroll(Landroid/widget/ScrollView;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v0

    .line 510
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 511
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static canWebViewScroll(Landroid/webkit/WebView;)Z
    .locals 3

    .prologue
    .line 516
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBottomView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 549
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 559
    :cond_1
    :goto_0
    return-object v0

    .line 552
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_4

    .line 553
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 552
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private static getTopView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 564
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 574
    :cond_1
    :goto_0
    return-object v0

    .line 567
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_4

    .line 568
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-eqz v3, :cond_1

    .line 567
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 93
    sget v2, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout_md_reduce_padding_no_title_no_buttons:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mReducePaddingNoTitleNoButtons:Z

    .line 94
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    sget v1, Lcom/afollestad/materialdialogs/R$dimen;->md_notitle_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mNoTitlePaddingFull:I

    .line 97
    sget v1, Lcom/afollestad/materialdialogs/R$dimen;->md_button_frame_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    .line 99
    sget v1, Lcom/afollestad/materialdialogs/R$dimen;->md_button_padding_frame_side:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonHorizontalEdgeMargin:I

    .line 100
    sget v1, Lcom/afollestad/materialdialogs/R$dimen;->md_button_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonBarHeight:I

    .line 102
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 103
    sget v1, Lcom/afollestad/materialdialogs/R$dimen;->md_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerWidth:I

    .line 104
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_divider_color:I

    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    invoke-virtual {p0, v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setWillNotDraw(Z)V

    .line 106
    return-void
.end method

.method private invalidateDividersForScrollingView(Landroid/view/ViewGroup;ZZZ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 460
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    .line 462
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    .line 464
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 467
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 468
    if-eqz p4, :cond_3

    .line 469
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    .line 471
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 464
    goto :goto_0

    :cond_3
    move v1, v2

    .line 469
    goto :goto_1
.end method

.method private invalidateDividersForWebView(Landroid/webkit/WebView;ZZZ)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 474
    if-eqz p2, :cond_0

    .line 475
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    .line 476
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    .line 478
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 480
    :cond_0
    if-eqz p3, :cond_1

    .line 482
    if-eqz p4, :cond_3

    .line 483
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    .line 485
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 478
    goto :goto_0

    :cond_3
    move v1, v2

    .line 483
    goto :goto_1
.end method

.method private static isVisible(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 221
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    move v2, v0

    .line 222
    :goto_0
    if-eqz v2, :cond_2

    instance-of v3, p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    if-eqz v3, :cond_2

    .line 223
    check-cast p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 224
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 221
    goto :goto_0

    :cond_1
    move v0, v1

    .line 223
    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private setUpDividersVisibility(Landroid/view/View;ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    if-nez p1, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    instance-of v0, p1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_4

    .line 371
    check-cast p1, Landroid/widget/ScrollView;

    .line 372
    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canScrollViewScroll(Landroid/widget/ScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    .line 375
    :cond_2
    if-eqz p2, :cond_3

    .line 376
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 377
    :cond_3
    if-eqz p3, :cond_0

    .line 378
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    goto :goto_0

    .line 380
    :cond_4
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_7

    .line 381
    check-cast p1, Landroid/widget/AdapterView;

    .line 382
    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canAdapterViewScroll(Landroid/widget/AdapterView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 383
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    .line 385
    :cond_5
    if-eqz p2, :cond_6

    .line 386
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 387
    :cond_6
    if-eqz p3, :cond_0

    .line 388
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    goto :goto_0

    .line 390
    :cond_7
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_8

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/View;ZZ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 408
    :cond_8
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_a

    .line 412
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canRecyclerViewScroll(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    .line 413
    if-eqz p2, :cond_9

    .line 414
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 415
    :cond_9
    if-eqz p3, :cond_0

    .line 416
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    goto :goto_0

    .line 417
    :cond_a
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 418
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getTopView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 419
    invoke-direct {p0, v0, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    .line 420
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getBottomView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 421
    if-eq v1, v0, :cond_0

    .line 422
    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public noTitleNoPadding()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mNoTitleNoPadding:Z

    .line 110
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 231
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 232
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 234
    iget v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerWidth:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 237
    :cond_0
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 239
    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerWidth:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 242
    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    move v1, v2

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 116
    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->titleFrame:I

    if-ne v3, v4, :cond_0

    .line 118
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    .line 115
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultNeutral:I

    if-ne v3, v4, :cond_1

    .line 120
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    check-cast v0, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v0, v3, v2

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultNegative:I

    if-ne v3, v4, :cond_2

    .line 122
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v4, 0x1

    check-cast v0, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v0, v3, v4

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultPositive:I

    if-ne v3, v4, :cond_3

    .line 124
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v4, 0x2

    check-cast v0, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v0, v3, v4

    goto :goto_1

    .line 126
    :cond_3
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    goto :goto_1

    .line 129
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 246
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 248
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    add-int v2, p3, v0

    invoke-virtual {v1, p2, p3, p4, v2}, Landroid/view/View;->layout(IIII)V

    .line 249
    add-int/2addr p3, v0

    .line 254
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 257
    :cond_1
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    if-eqz v0, :cond_4

    .line 258
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    sub-int v0, p5, v0

    .line 259
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v3, v2

    move v1, v5

    :goto_1
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    .line 260
    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 261
    invoke-virtual {v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {v4, p2, v5, p4, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 262
    invoke-virtual {v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v0, v4

    .line 259
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 250
    :cond_3
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mNoTitleNoPadding:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    if-eqz v0, :cond_0

    .line 251
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mNoTitlePaddingFull:I

    add-int/2addr p3, v0

    goto :goto_0

    .line 268
    :cond_4
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    if-eqz v0, :cond_5

    .line 269
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    sub-int/2addr p5, v0

    .line 270
    :cond_5
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonBarHeight:I

    sub-int v6, p5, v0

    .line 282
    iget v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonHorizontalEdgeMargin:I

    .line 288
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v9

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 290
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v0, v1, :cond_8

    .line 291
    add-int v1, p2, v4

    .line 292
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v2, v3

    .line 298
    :goto_2
    iget-object v7, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v7, v7, v9

    invoke-virtual {v7, v1, v6, v0, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 299
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v4

    .line 302
    :goto_3
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 304
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v4, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v1, v4, :cond_9

    .line 305
    add-int v1, p2, v0

    .line 306
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v4, v3

    .line 315
    :goto_4
    iget-object v7, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v7, v7, v8

    invoke-virtual {v7, v1, v6, v0, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 318
    :goto_5
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 320
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v0, v1, :cond_b

    .line 321
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonHorizontalEdgeMargin:I

    sub-int v2, p4, v0

    .line 322
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    sub-int v4, v2, v0

    .line 339
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v5

    invoke-virtual {v0, v4, v6, v2, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 343
    :cond_7
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-direct {p0, v0, v8, v8}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    .line 344
    return-void

    .line 294
    :cond_8
    sub-int v0, p4, v4

    .line 295
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v0, v1

    move v2, v1

    .line 296
    goto :goto_2

    .line 307
    :cond_9
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v4, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v1, v4, :cond_a

    .line 308
    sub-int v0, p4, v0

    .line 309
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v0, v1

    move v4, v3

    goto :goto_4

    .line 311
    :cond_a
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonHorizontalEdgeMargin:I

    add-int v1, p2, v0

    .line 312
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v4, v0

    .line 313
    goto :goto_4

    .line 323
    :cond_b
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v0, v1, :cond_c

    .line 324
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonHorizontalEdgeMargin:I

    add-int v4, p2, v0

    .line 325
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    add-int v2, v4, v0

    goto :goto_6

    .line 327
    :cond_c
    if-ne v4, v3, :cond_d

    if-eq v2, v3, :cond_d

    .line 328
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    sub-int v4, v2, v0

    goto :goto_6

    .line 329
    :cond_d
    if-ne v2, v3, :cond_e

    if-eq v4, v3, :cond_e

    .line 330
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    add-int v2, v4, v0

    goto :goto_6

    .line 331
    :cond_e
    if-ne v2, v3, :cond_6

    .line 332
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v4, v0, v1

    .line 333
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    add-int v2, v4, v0

    goto/16 :goto_6

    :cond_f
    move v4, v3

    goto/16 :goto_5

    :cond_10
    move v2, v3

    move v0, v4

    goto/16 :goto_3
.end method

.method public onMeasure(II)V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 134
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 136
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 140
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    if-nez v0, :cond_4

    .line 142
    iget-object v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v8, v6

    move v4, v3

    move v0, v3

    move v1, v3

    :goto_0
    if-ge v4, v8, :cond_1

    aget-object v9, v6, v4

    .line 143
    if-eqz v9, :cond_0

    invoke-static {v9}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 144
    invoke-virtual {v9, v3, v3}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    .line 145
    invoke-virtual {p0, v9, p1, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->measureChild(Landroid/view/View;II)V

    .line 146
    invoke-virtual {v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v2

    .line 142
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/afollestad/materialdialogs/R$dimen;->md_neutral_button_margin:I

    .line 152
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 153
    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v7, v4

    .line 154
    if-le v0, v4, :cond_3

    move v0, v2

    .line 160
    :goto_1
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    .line 161
    if-eqz v0, :cond_e

    .line 162
    iget-object v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v8, v6

    move v4, v3

    move v0, v3

    :goto_2
    if-ge v4, v8, :cond_5

    aget-object v9, v6, v4

    .line 163
    if-eqz v9, :cond_2

    invoke-static {v9}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 164
    invoke-virtual {v9, v2, v3}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    .line 165
    invoke-virtual {p0, v9, p1, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->measureChild(Landroid/view/View;II)V

    .line 166
    invoke-virtual {v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v2

    .line 162
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v0, v3

    .line 154
    goto :goto_1

    :cond_4
    move v0, v2

    move v1, v3

    .line 156
    goto :goto_1

    :cond_5
    move v6, v1

    .line 175
    :goto_3
    if-eqz v6, :cond_9

    .line 176
    iget-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    if-eqz v1, :cond_8

    .line 177
    sub-int v4, v5, v0

    .line 178
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    mul-int/lit8 v0, v0, 0x2

    add-int v1, v3, v0

    .line 179
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    .line 190
    :goto_4
    iget-object v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    invoke-static {v8}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 191
    iget-object v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, v9, v3}, Landroid/view/View;->measure(II)V

    .line 193
    iget-object v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v4, v8

    .line 198
    :cond_6
    :goto_5
    iget-object v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-static {v8}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 199
    iget-object v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v10, v4, v0

    const/high16 v11, -0x80000000

    .line 200
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 199
    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 202
    iget-object v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v9, v4, v1

    if-gt v8, v9, :cond_c

    .line 203
    iget-boolean v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mReducePaddingNoTitleNoButtons:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    invoke-static {v8}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_7

    if-eqz v6, :cond_b

    .line 204
    :cond_7
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 205
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v1

    sub-int v3, v4, v0

    .line 217
    :goto_6
    sub-int v0, v5, v3

    invoke-virtual {p0, v7, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setMeasuredDimension(II)V

    .line 218
    return-void

    .line 181
    :cond_8
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonBarHeight:I

    sub-int v1, v5, v0

    .line 182
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    move v4, v1

    move v1, v0

    move v0, v3

    goto :goto_4

    .line 187
    :cond_9
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    move v1, v0

    move v4, v5

    move v0, v3

    goto :goto_4

    .line 194
    :cond_a
    iget-boolean v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mNoTitleNoPadding:Z

    if-nez v8, :cond_6

    .line 195
    iget v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mNoTitlePaddingFull:I

    add-int/2addr v1, v8

    goto :goto_5

    .line 207
    :cond_b
    iput-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 208
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v3, v4, v0

    goto :goto_6

    .line 211
    :cond_c
    iput-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    goto :goto_6

    :cond_d
    move v3, v4

    goto :goto_6

    :cond_e
    move v0, v3

    move v6, v1

    goto/16 :goto_3
.end method

.method public setButtonGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 358
    return-void
.end method

.method public setButtonStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 4

    .prologue
    .line 361
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 362
    if-eqz v3, :cond_0

    .line 363
    invoke-virtual {v3, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V

    .line 361
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_1
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    .line 354
    return-void
.end method

.method public setForceStack(Z)V
    .locals 0

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    .line 348
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    .line 349
    return-void
.end method
