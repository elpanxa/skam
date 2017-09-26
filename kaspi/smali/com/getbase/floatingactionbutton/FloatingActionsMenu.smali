.class public Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
.super Landroid/view/ViewGroup;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final COLLAPSED_PLUS_ROTATION:F = 0.0f

.field private static final EXPANDED_PLUS_ROTATION:F = 135.0f

.field public static final EXPAND_DOWN:I = 0x1

.field public static final EXPAND_LEFT:I = 0x2

.field public static final EXPAND_RIGHT:I = 0x3

.field public static final EXPAND_UP:I = 0x0

.field public static final LABELS_ON_LEFT_SIDE:I = 0x0

.field public static final LABELS_ON_RIGHT_SIDE:I = 0x1

.field private static sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

.field private static sCollapseInterpolator:Landroid/view/animation/Interpolator;

.field private static sExpandInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

.field private mAddButtonColorNormal:I

.field private mAddButtonColorPressed:I

.field private mAddButtonPlusColor:I

.field private mAddButtonSize:I

.field private mAddButtonStrokeVisible:Z

.field private mButtonSpacing:I

.field private mButtonsCount:I

.field private mCollapseAnimation:Landroid/animation/AnimatorSet;

.field private mExpandAnimation:Landroid/animation/AnimatorSet;

.field private mExpandDirection:I

.field private mExpanded:Z

.field private mLabelsMargin:I

.field private mLabelsPosition:I

.field private mLabelsStyle:I

.field private mLabelsVerticalOffset:I

.field private mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

.field private mMaxButtonHeight:I

.field private mMaxButtonWidth:I

.field private mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

.field private mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 424
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    .line 425
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 426
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 52
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 52
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonPlusColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorNormal:I

    return v0
.end method

.method static synthetic access$1000()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    return v0
.end method

.method static synthetic access$200(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorPressed:I

    return v0
.end method

.method static synthetic access$300(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonStrokeVisible:Z

    return v0
.end method

.method static synthetic access$402(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$900()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private adjustForOvershoot(I)I
    .locals 1

    .prologue
    .line 271
    mul-int/lit8 v0, p1, 0xc

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private collapse(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 521
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 522
    iput-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 523
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 524
    iget-object v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 525
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 526
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 528
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    invoke-interface {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuCollapsed()V

    .line 532
    :cond_0
    return-void

    .line 524
    :cond_1
    const-wide/16 v0, 0x12c

    goto :goto_0
.end method

.method private createAddButton(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;

    invoke-direct {v0, p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    .line 176
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    sget v1, Lcom/getbase/floatingactionbutton/R$id;->fab_expand_menu_button:I

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setId(I)V

    .line 177
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonSize:I

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setSize(I)V

    .line 178
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    new-instance v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;

    invoke-direct {v1, p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 187
    return-void
.end method

.method private createLabels()V
    .locals 6

    .prologue
    .line 494
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 496
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    if-ge v1, v0, :cond_2

    .line 497
    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 498
    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 500
    iget-object v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    if-eq v0, v4, :cond_0

    if-eqz v3, :cond_0

    sget v3, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 496
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 503
    :cond_1
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 504
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 505
    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual {p0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;)V

    .line 508
    sget v4, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v0, v4, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 510
    :cond_2
    return-void
.end method

.method private expandsHorizontally()Z
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getColor(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_actions_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    .line 86
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_labels_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    .line 87
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsVerticalOffset:I

    .line 89
    new-instance v0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-direct {v0, p0}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    .line 90
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 92
    sget-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu:[I

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonPlusIconColor:I

    const v2, 0x106000b

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonPlusColor:I

    .line 94
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonColorNormal:I

    const v2, 0x1060013

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorNormal:I

    .line 95
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonColorPressed:I

    const v2, 0x1060012

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorPressed:I

    .line 96
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonSize:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonSize:I

    .line 97
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonStrokeVisible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonStrokeVisible:Z

    .line 98
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_expandDirection:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    .line 99
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_labelStyle:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    .line 100
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_labelsPosition:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action labels in horizontal expand orientation is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V

    .line 108
    return-void
.end method


# virtual methods
.method public addButton(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;I)V

    .line 191
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 193
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createLabels()V

    .line 196
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 421
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public collapse()V
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse(Z)V

    .line 514
    return-void
.end method

.method public collapseImmediately()V
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse(Z)V

    .line 518
    return-void
.end method

.method public expand()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 543
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-nez v0, :cond_0

    .line 544
    iput-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 545
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 546
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 547
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 549
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    invoke-interface {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuExpanded()V

    .line 553
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 406
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 411
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 416
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 483
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 485
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->bringChildToFront(Landroid/view/View;)V

    .line 486
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 488
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v0, :cond_0

    .line 489
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createLabels()V

    .line 491
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    .prologue
    .line 276
    move-object/from16 v0, p0

    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    packed-switch v1, :pswitch_data_0

    .line 402
    :cond_0
    return-void

    .line 279
    :pswitch_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    move v11, v1

    .line 281
    :goto_0
    if-eqz p1, :cond_1

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v1}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->clearTouchDelegates()V

    .line 285
    :cond_1
    if-eqz v11, :cond_4

    sub-int v1, p5, p3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v2}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    move v3, v1

    .line 287
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v1, :cond_5

    sub-int v1, p4, p2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    move v4, v1

    .line 290
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v4, v1

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v5}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v6}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v2, v1, v3, v5, v6}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->layout(IIII)V

    .line 293
    move-object/from16 v0, p0

    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    add-int/2addr v1, v2

    .line 294
    move-object/from16 v0, p0

    iget v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v2, :cond_6

    sub-int v9, v4, v1

    .line 298
    :goto_3
    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int v1, v3, v1

    .line 302
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v2, v2, -0x1

    move v10, v2

    :goto_5
    if-ltz v10, :cond_0

    .line 303
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    if-eq v12, v2, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_8

    .line 302
    :cond_2
    :goto_6
    add-int/lit8 v2, v10, -0x1

    move v10, v2

    goto :goto_5

    .line 279
    :cond_3
    const/4 v1, 0x0

    move v11, v1

    goto/16 :goto_0

    .line 285
    :cond_4
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    .line 287
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    div-int/lit8 v1, v1, 0x2

    move v4, v1

    goto :goto_2

    .line 294
    :cond_6
    add-int v9, v4, v1

    goto :goto_3

    .line 298
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v1, v2

    goto :goto_4

    .line 307
    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v13, v4, v2

    .line 308
    if-eqz v11, :cond_b

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    move v5, v1

    .line 309
    :goto_7
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v12, v13, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 311
    sub-int v1, v3, v5

    int-to-float v7, v1

    .line 312
    const/4 v6, 0x0

    .line 314
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v1, :cond_c

    move v1, v6

    :goto_8
    invoke-virtual {v12, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 315
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v1, :cond_d

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_9
    invoke-virtual {v12, v1}, Landroid/view/View;->setAlpha(F)V

    .line 317
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 318
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;
    invoke-static {v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v14, 0x0

    aput v6, v8, v14

    const/4 v14, 0x1

    aput v7, v8, v14

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 319
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;
    invoke-static {v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v14, 0x0

    aput v7, v8, v14

    const/4 v14, 0x1

    aput v6, v8, v14

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 320
    invoke-virtual {v1, v12}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 322
    sget v1, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v12, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 323
    if-eqz v1, :cond_a

    .line 324
    move-object/from16 v0, p0

    iget v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v2, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v9, v2

    .line 328
    :goto_a
    move-object/from16 v0, p0

    iget v8, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v8, :cond_f

    move v8, v2

    .line 332
    :goto_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v14, :cond_9

    move v2, v9

    .line 336
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsVerticalOffset:I

    sub-int v14, v5, v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v15, v15, v16

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 338
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v14

    invoke-virtual {v1, v8, v14, v2, v15}, Landroid/view/View;->layout(IIII)V

    .line 340
    new-instance v14, Landroid/graphics/Rect;

    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    div-int/lit8 v15, v15, 0x2

    sub-int v15, v5, v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v13, v13, v16

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    add-int v13, v13, v16

    invoke-direct {v14, v8, v15, v2, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    new-instance v8, Landroid/view/TouchDelegate;

    invoke-direct {v8, v14, v12}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v2, v8}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->addTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 347
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v2, :cond_10

    move v2, v6

    :goto_c
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 348
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v2, :cond_11

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_d
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 350
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 351
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;
    invoke-static {v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v13, 0x2

    new-array v13, v13, [F

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v7, v13, v14

    invoke-virtual {v8, v13}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 352
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;
    invoke-static {v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v13, 0x2

    new-array v13, v13, [F

    const/4 v14, 0x0

    aput v7, v13, v14

    const/4 v7, 0x1

    aput v6, v13, v7

    invoke-virtual {v8, v13}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 353
    invoke-virtual {v2, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 356
    :cond_a
    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int v1, v5, v1

    goto/16 :goto_6

    :cond_b
    move v5, v1

    .line 308
    goto/16 :goto_7

    :cond_c
    move v1, v7

    .line 314
    goto/16 :goto_8

    .line 315
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 324
    :cond_e
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v9

    goto/16 :goto_a

    :cond_f
    move v8, v9

    .line 328
    goto/16 :goto_b

    :cond_10
    move v2, v7

    .line 347
    goto :goto_c

    .line 348
    :cond_11
    const/4 v2, 0x0

    goto :goto_d

    .line 356
    :cond_12
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v1, v2

    goto/16 :goto_6

    .line 364
    :pswitch_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    move v7, v1

    .line 366
    :goto_e
    if-eqz v7, :cond_15

    sub-int v1, p4, p2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v2}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    move v2, v1

    .line 368
    :goto_f
    sub-int v1, p5, p3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    sub-int/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v4}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v8, v1, v3

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v3}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v4}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    invoke-virtual {v1, v2, v8, v3, v4}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->layout(IIII)V

    .line 371
    if-eqz v7, :cond_16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int v1, v2, v1

    .line 375
    :goto_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v3, v3, -0x1

    move v6, v3

    :goto_11
    if-ltz v6, :cond_0

    .line 376
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    if-eq v9, v3, :cond_13

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_17

    .line 375
    :cond_13
    :goto_12
    add-int/lit8 v3, v6, -0x1

    move v6, v3

    goto :goto_11

    .line 364
    :cond_14
    const/4 v1, 0x0

    move v7, v1

    goto :goto_e

    .line 366
    :cond_15
    const/4 v1, 0x0

    move v2, v1

    goto :goto_f

    .line 371
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v1, v3

    goto :goto_10

    .line 380
    :cond_17
    if-eqz v7, :cond_18

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    move v3, v1

    .line 381
    :goto_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    .line 382
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v9, v3, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 384
    sub-int v1, v2, v3

    int-to-float v5, v1

    .line 385
    const/4 v4, 0x0

    .line 387
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v1, :cond_19

    move v1, v4

    :goto_14
    invoke-virtual {v9, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 388
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v1, :cond_1a

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_15
    invoke-virtual {v9, v1}, Landroid/view/View;->setAlpha(F)V

    .line 390
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 391
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;
    invoke-static {v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v4, v11, v12

    const/4 v12, 0x1

    aput v5, v11, v12

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 392
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;
    invoke-static {v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v5, v11, v12

    const/4 v5, 0x1

    aput v4, v11, v5

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 393
    invoke-virtual {v1, v9}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 395
    if-eqz v7, :cond_1b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int v1, v3, v1

    goto/16 :goto_12

    :cond_18
    move v3, v1

    .line 380
    goto :goto_13

    :cond_19
    move v1, v5

    .line 387
    goto :goto_14

    .line 388
    :cond_1a
    const/4 v1, 0x0

    goto :goto_15

    .line 395
    :cond_1b
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v1, v3

    goto/16 :goto_12

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->measureChildren(II)V

    .line 216
    iput v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    .line 217
    iput v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    move v1, v2

    move v3, v2

    move v0, v2

    move v4, v2

    .line 220
    :goto_0
    iget v5, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    if-ge v1, v5, :cond_2

    .line 221
    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 223
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_1

    move v5, v4

    move v4, v0

    .line 220
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v4

    move v4, v5

    goto :goto_0

    .line 227
    :cond_1
    iget v5, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    packed-switch v5, :pswitch_data_0

    :goto_2
    move v5, v4

    move v4, v0

    .line 240
    :goto_3
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    sget v0, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v6, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    .line 230
    :pswitch_0
    iget v5, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    .line 231
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    move v5, v4

    move v4, v0

    .line 232
    goto :goto_3

    .line 235
    :pswitch_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 236
    iget v5, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    goto :goto_2

    .line 248
    :cond_2
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v1

    if-nez v1, :cond_4

    .line 249
    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    if-lez v3, :cond_3

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    add-int/2addr v2, v3

    :cond_3
    add-int v4, v1, v2

    .line 254
    :goto_4
    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    packed-switch v1, :pswitch_data_1

    .line 267
    :goto_5
    invoke-virtual {p0, v4, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setMeasuredDimension(II)V

    .line 268
    return-void

    .line 251
    :cond_4
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    goto :goto_4

    .line 257
    :pswitch_2
    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 258
    invoke-direct {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v0

    goto :goto_5

    .line 262
    :pswitch_3
    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, v4

    .line 263
    invoke-direct {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v4

    goto :goto_5

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 254
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 577
    instance-of v0, p1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    if-eqz v0, :cond_2

    .line 578
    check-cast p1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    .line 579
    iget-boolean v0, p1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 580
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    iget-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 582
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    if-eqz v0, :cond_0

    .line 583
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x43070000    # 135.0f

    :goto_0
    invoke-virtual {v1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;->setRotation(F)V

    .line 586
    :cond_0
    invoke-virtual {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 590
    :goto_1
    return-void

    .line 583
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 588
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 568
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 569
    new-instance v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    invoke-direct {v1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 570
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    iput-boolean v0, v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    .line 572
    return-object v1
.end method

.method public removeButton(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->removeView(Landroid/view/View;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->removeView(Landroid/view/View;)V

    .line 201
    sget v0, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    .line 202
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 203
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 561
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 563
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setEnabled(Z)V

    .line 564
    return-void
.end method

.method public setOnFloatingActionsMenuUpdateListener(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    .line 112
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    .line 540
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expand()V

    goto :goto_0
.end method
