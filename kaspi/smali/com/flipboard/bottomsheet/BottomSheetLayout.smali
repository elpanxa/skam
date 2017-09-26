.class public Lcom/flipboard/bottomsheet/BottomSheetLayout;
.super Landroid/widget/FrameLayout;
.source "BottomSheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flipboard/bottomsheet/BottomSheetLayout$OnSheetStateChangeListener;,
        Lcom/flipboard/bottomsheet/BottomSheetLayout$State;,
        Lcom/flipboard/bottomsheet/BottomSheetLayout$IdentityViewTransformer;,
        Lcom/flipboard/bottomsheet/BottomSheetLayout$CancelDetectionAnimationListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x12cL

.field private static final SHEET_TRANSLATION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/flipboard/bottomsheet/BottomSheetLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private animationInterpolator:Landroid/animation/TimeInterpolator;

.field public bottomSheetOwnsTouch:Z

.field private contentClipRect:Landroid/graphics/Rect;

.field private currentAnimator:Landroid/animation/Animator;

.field private currentSheetViewHeight:I

.field private final defaultSheetWidth:I

.field private defaultViewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

.field private dimView:Landroid/view/View;

.field private downSheetTranslation:F

.field private downState:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

.field private downX:F

.field private downY:F

.field private hasIntercepted:Z

.field private interceptContentTouch:Z

.field private final isTablet:Z

.field private minFlingVelocity:F

.field private onSheetDismissedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/flipboard/bottomsheet/OnSheetDismissedListener;",
            ">;"
        }
    .end annotation
.end field

.field private onSheetStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/flipboard/bottomsheet/BottomSheetLayout$OnSheetStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private peek:F

.field private peekOnDismiss:Z

.field private runAfterDismiss:Ljava/lang/Runnable;

.field private screenWidth:I

.field private sheetEndX:I

.field private sheetStartX:I

.field private sheetTranslation:F

.field private sheetViewOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private sheetViewOwnsTouch:Z

.field private shouldDimContentView:Z

.field private state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

.field private touchSlop:F

.field private useHardwareLayerWhileAnimating:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private viewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "sheetTranslation"

    invoke-direct {v0, v1, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->SHEET_TRANSLATION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->contentClipRect:Landroid/graphics/Rect;

    .line 82
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 83
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->peekOnDismiss:Z

    .line 84
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fcccccd    # 1.6f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->animationInterpolator:Landroid/animation/TimeInterpolator;

    .line 91
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$IdentityViewTransformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout$IdentityViewTransformer;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$1;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->defaultViewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    .line 93
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->shouldDimContentView:Z

    .line 94
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->useHardwareLayerWhileAnimating:Z

    .line 96
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onSheetDismissedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 97
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onSheetStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 100
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->interceptContentTouch:Z

    .line 106
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->screenWidth:I

    .line 107
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflipboard/bottomsheet/R$bool;->bottomsheet_is_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isTablet:Z

    .line 108
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflipboard/bottomsheet/R$dimen;->bottomsheet_default_sheet_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->defaultSheetWidth:I

    .line 109
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetStartX:I

    .line 110
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetEndX:I

    .line 126
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->init()V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->contentClipRect:Landroid/graphics/Rect;

    .line 82
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 83
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->peekOnDismiss:Z

    .line 84
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fcccccd    # 1.6f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->animationInterpolator:Landroid/animation/TimeInterpolator;

    .line 91
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$IdentityViewTransformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout$IdentityViewTransformer;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$1;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->defaultViewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    .line 93
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->shouldDimContentView:Z

    .line 94
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->useHardwareLayerWhileAnimating:Z

    .line 96
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onSheetDismissedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 97
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onSheetStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 100
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->interceptContentTouch:Z

    .line 106
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->screenWidth:I

    .line 107
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflipboard/bottomsheet/R$bool;->bottomsheet_is_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isTablet:Z

    .line 108
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflipboard/bottomsheet/R$dimen;->bottomsheet_default_sheet_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->defaultSheetWidth:I

    .line 109
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetStartX:I

    .line 110
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetEndX:I

    .line 135
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->init()V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->contentClipRect:Landroid/graphics/Rect;

    .line 82
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 83
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->peekOnDismiss:Z

    .line 84
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fcccccd    # 1.6f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->animationInterpolator:Landroid/animation/TimeInterpolator;

    .line 91
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$IdentityViewTransformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout$IdentityViewTransformer;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$1;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->defaultViewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    .line 93
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->shouldDimContentView:Z

    .line 94
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->useHardwareLayerWhileAnimating:Z

    .line 96
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onSheetDismissedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 97
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onSheetStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 100
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->interceptContentTouch:Z

    .line 106
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->screenWidth:I

    .line 107
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflipboard/bottomsheet/R$bool;->bottomsheet_is_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isTablet:Z

    .line 108
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflipboard/bottomsheet/R$dimen;->bottomsheet_default_sheet_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->defaultSheetWidth:I

    .line 109
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetStartX:I

    .line 110
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetEndX:I

    .line 141
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->init()V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/flipboard/bottomsheet/BottomSheetLayout;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetTranslation:F

    return v0
.end method

.method static synthetic access$100(Lcom/flipboard/bottomsheet/BottomSheetLayout;F)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetTranslation(F)V

    return-void
.end method

.method static synthetic access$1002(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/ViewTransformer;)Lcom/flipboard/bottomsheet/ViewTransformer;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->viewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onSheetStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->runAfterDismiss:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/flipboard/bottomsheet/BottomSheetLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->runAfterDismiss:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$402(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->currentAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/BottomSheetLayout$State;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flipboard/bottomsheet/BottomSheetLayout;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->currentSheetViewHeight:I

    return v0
.end method

.method static synthetic access$602(Lcom/flipboard/bottomsheet/BottomSheetLayout;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->currentSheetViewHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    return-void
.end method

.method static synthetic access$800(Lcom/flipboard/bottomsheet/BottomSheetLayout;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetLayerTypeIfEnabled(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onSheetDismissedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method private canScrollUp(Landroid/view/View;FF)Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 449
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 450
    check-cast v0, Landroid/view/ViewGroup;

    move v1, v2

    .line 451
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 452
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 453
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 454
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .line 455
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    .line 456
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 457
    int-to-float v9, v6

    cmpl-float v9, p2, v9

    if-lez v9, :cond_0

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    int-to-float v4, v7

    cmpl-float v4, p3, v4

    if-lez v4, :cond_0

    int-to-float v4, v8

    cmpg-float v4, p3, v4

    if-gez v4, :cond_0

    move v4, v3

    .line 458
    :goto_1
    if-eqz v4, :cond_1

    int-to-float v4, v6

    sub-float v4, p2, v4

    int-to-float v6, v7

    sub-float v6, p3, v6

    invoke-direct {p0, v5, v4, v6}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->canScrollUp(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 463
    :goto_2
    return v0

    :cond_0
    move v4, v2

    .line 457
    goto :goto_1

    .line 451
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    goto :goto_2
.end method

.method private cancelCurrentAnimation()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->currentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->currentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 446
    :cond_0
    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 893
    if-nez p0, :cond_0

    .line 894
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_0
    return-object p0
.end method

.method private dismissSheet(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 690
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v0, v1, :cond_0

    .line 691
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->runAfterDismiss:Ljava/lang/Runnable;

    .line 731
    :goto_0
    return-void

    .line 696
    :cond_0
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->runAfterDismiss:Ljava/lang/Runnable;

    .line 697
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    .line 698
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetViewOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 699
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->cancelCurrentAnimation()V

    .line 700
    sget-object v1, Lcom/flipboard/bottomsheet/BottomSheetLayout;->SHEET_TRANSLATION:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 701
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 702
    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->animationInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 703
    new-instance v2, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;

    invoke-direct {v2, p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 727
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 728
    iput-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->currentAnimator:Landroid/animation/Animator;

    .line 729
    iput v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetStartX:I

    .line 730
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->screenWidth:I

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetEndX:I

    goto :goto_0
.end method

.method private getDefaultPeekTranslation()F
    .locals 1

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->hasFullHeightSheet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getDimAlpha(F)F
    .locals 6

    .prologue
    .line 264
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->viewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->viewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v2

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v3

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContentView()Landroid/view/View;

    move-result-object v5

    move v1, p1

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/flipboard/bottomsheet/ViewTransformer;->getDimAlpha(FFFLcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)F

    move-result v0

    .line 269
    :goto_0
    return v0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->defaultViewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->defaultViewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v2

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v3

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContentView()Landroid/view/View;

    move-result-object v5

    move v1, p1

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/flipboard/bottomsheet/ViewTransformer;->getDimAlpha(FFFLcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)F

    move-result v0

    goto :goto_0

    .line 269
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasFullHeightSheet()Z
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->minFlingVelocity:F

    .line 147
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->touchSlop:F

    .line 149
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dimView:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dimView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 151
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dimView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 152
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dimView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->peek:F

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setFocusableInTouchMode(Z)V

    .line 158
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 159
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 160
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->screenWidth:I

    .line 161
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->screenWidth:I

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetEndX:I

    .line 162
    return-void
.end method

.method private initializeSheetValues()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 487
    iput v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetTranslation:F

    .line 488
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->contentClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 489
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 490
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dimView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 491
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dimView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 492
    return-void
.end method

.method private isAnimating()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->currentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 875
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflipboard/bottomsheet/R$bool;->bottomsheet_is_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isXInSheet(F)Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isTablet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetStartX:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetEndX:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static predictedDefaultWidth(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 885
    invoke-static {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflipboard/bottomsheet/R$dimen;->bottomsheet_default_sheet_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 888
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method private setSheetLayerTypeIfEnabled(I)V
    .locals 2

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->useHardwareLayerWhileAnimating:Z

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 470
    :cond_0
    return-void
.end method

.method private setSheetTranslation(F)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 243
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetTranslation:F

    .line 244
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v1

    int-to-double v2, v1

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-int v1, v2

    .line 245
    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->contentClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v0, v0, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 246
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 247
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->transformView(F)V

    .line 248
    iget-boolean v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->shouldDimContentView:Z

    if-eqz v1, :cond_0

    .line 249
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getDimAlpha(F)F

    move-result v1

    .line 250
    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dimView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 251
    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dimView:Landroid/view/View;

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :cond_0
    return-void

    .line 251
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V
    .locals 2

    .prologue
    .line 473
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 474
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onSheetStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$OnSheetStateChangeListener;

    .line 475
    invoke-interface {v0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout$OnSheetStateChangeListener;->onSheetStateChanged(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    goto :goto_0

    .line 477
    :cond_0
    return-void
.end method

.method private transformView(F)V
    .locals 6

    .prologue
    .line 256
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->viewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->viewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v2

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v3

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContentView()Landroid/view/View;

    move-result-object v5

    move v1, p1

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/flipboard/bottomsheet/ViewTransformer;->transformView(FFFLcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->defaultViewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->defaultViewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v2

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v3

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContentView()Landroid/view/View;

    move-result-object v5

    move v1, p1

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/flipboard/bottomsheet/ViewTransformer;->transformView(FFFLcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnSheetDismissedListener(Lcom/flipboard/bottomsheet/OnSheetDismissedListener;)V
    .locals 1
    .param p1    # Lcom/flipboard/bottomsheet/OnSheetDismissedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 844
    const-string v0, "onSheetDismissedListener == null"

    invoke-static {p1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 845
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onSheetDismissedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 846
    return-void
.end method

.method public addOnSheetStateChangeListener(Lcom/flipboard/bottomsheet/BottomSheetLayout$OnSheetStateChangeListener;)V
    .locals 1
    .param p1    # Lcom/flipboard/bottomsheet/BottomSheetLayout$OnSheetStateChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 834
    const-string v0, "onSheetStateChangeListener == null"

    invoke-static {p1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 835
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onSheetStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 836
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You may not declare more then one child of bottom sheet. The sheet view must be added dynamically with showWithSheetView()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setContentView(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->addView(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->addView(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->addView(Landroid/view/View;)V

    .line 183
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->addView(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method public dismissSheet()V
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dismissSheet(Ljava/lang/Runnable;)V

    .line 687
    return-void
.end method

.method public expandSheet()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 498
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->cancelCurrentAnimation()V

    .line 499
    invoke-direct {p0, v3}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetLayerTypeIfEnabled(I)V

    .line 500
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->SHEET_TRANSLATION:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v2

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 501
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 502
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->animationInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 503
    new-instance v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$2;

    invoke-direct {v1, p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$2;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 511
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 512
    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->currentAnimator:Landroid/animation/Animator;

    .line 513
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 514
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterceptContentTouch()Z
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->interceptContentTouch:Z

    return v0
.end method

.method public getMaxSheetTranslation()F
    .locals 2

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->hasFullHeightSheet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getPeekOnDismiss()Z
    .locals 1

    .prologue
    .line 750
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->peekOnDismiss:Z

    return v0
.end method

.method public getPeekSheetTranslation()F
    .locals 2

    .prologue
    .line 542
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->peek:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getDefaultPeekTranslation()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->peek:F

    goto :goto_0
.end method

.method public getSheetView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 576
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/flipboard/bottomsheet/BottomSheetLayout$State;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    return-object v0
.end method

.method public isSheetShowing()Z
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 198
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 199
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 204
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 205
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->cancelCurrentAnimation()V

    .line 206
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    .line 274
    :goto_0
    if-eqz v2, :cond_0

    .line 275
    iput-boolean v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->hasIntercepted:Z

    .line 277
    :cond_0
    iget-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->interceptContentTouch:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetTranslation:F

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isXInSheet(F)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 278
    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isSheetShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->hasIntercepted:Z

    .line 282
    :goto_2
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->hasIntercepted:Z

    return v0

    :cond_2
    move v2, v1

    .line 273
    goto :goto_0

    :cond_3
    move v0, v1

    .line 278
    goto :goto_1

    .line 280
    :cond_4
    iput-boolean v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->hasIntercepted:Z

    goto :goto_2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 217
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isSheetShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 225
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isSheetShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 230
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v2, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->peekOnDismiss:Z

    if-eqz v1, :cond_3

    .line 231
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->peekSheet()V

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dismissSheet()V

    goto :goto_0

    .line 239
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 210
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 211
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetTranslation:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    .line 212
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->contentClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v4, v4, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 213
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isSheetShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v2

    .line 290
    :cond_1
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->hasIntercepted:Z

    if-nez v0, :cond_2

    .line 294
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 299
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->bottomSheetOwnsTouch:Z

    .line 300
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetViewOwnsTouch:Z

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->downY:F

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->downX:F

    .line 303
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetTranslation:F

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->downSheetTranslation:F

    .line 304
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->downState:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 305
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 310
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v5

    .line 311
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v6

    .line 313
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->downY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v4, v0, v4

    .line 314
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->downX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v7, v0, v7

    .line 316
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->bottomSheetOwnsTouch:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetViewOwnsTouch:Z

    if-nez v0, :cond_18

    .line 317
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v8, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->touchSlop:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->bottomSheetOwnsTouch:Z

    .line 318
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v7, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->touchSlop:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_8

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetViewOwnsTouch:Z

    .line 320
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->bottomSheetOwnsTouch:Z

    if-eqz v0, :cond_18

    .line 321
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v4, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v0, v4, :cond_4

    .line 322
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 323
    iget v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetTranslation:F

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 324
    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 325
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 326
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 329
    :cond_4
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetViewOwnsTouch:Z

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->downY:F

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->downX:F

    move v0, v3

    .line 338
    :goto_3
    iget v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->downSheetTranslation:F

    add-float/2addr v4, v0

    .line 340
    iget-boolean v7, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->bottomSheetOwnsTouch:Z

    if-eqz v7, :cond_12

    .line 342
    cmpg-float v0, v0, v3

    if-gez v0, :cond_9

    move v0, v1

    .line 343
    :goto_4
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetTranslation:F

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-direct {p0, v7, v8, v9}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->canScrollUp(Landroid/view/View;FF)Z

    move-result v7

    .line 344
    iget-object v8, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v9, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v8, v9, :cond_17

    if-eqz v0, :cond_17

    if-nez v7, :cond_17

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->downY:F

    .line 347
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetTranslation:F

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->downSheetTranslation:F

    .line 348
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 349
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 350
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetLayerTypeIfEnabled(I)V

    .line 351
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetTranslation:F

    .line 354
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 355
    invoke-virtual {v4, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 356
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 357
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 361
    :goto_5
    iget-object v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v7, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v4, v7, :cond_5

    cmpl-float v4, v0, v5

    if-lez v4, :cond_5

    .line 362
    invoke-direct {p0, v5}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetTranslation(F)V

    .line 365
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 366
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 367
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 368
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 369
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 370
    sget-object v4, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-direct {p0, v4}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 371
    invoke-direct {p0, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetLayerTypeIfEnabled(I)V

    .line 374
    :cond_5
    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v4, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v2, v4, :cond_a

    .line 376
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetTranslation:F

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 377
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_6
    :goto_6
    move v2, v1

    .line 431
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 317
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 318
    goto/16 :goto_2

    :cond_9
    move v0, v2

    .line 342
    goto/16 :goto_4

    .line 381
    :cond_a
    cmpg-float v2, v0, v6

    if-gez v2, :cond_b

    .line 382
    sub-float v0, v6, v0

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    sub-float v0, v6, v0

    .line 385
    :cond_b
    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetTranslation(F)V

    .line 387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v12, :cond_c

    .line 389
    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->downState:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v4, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v2, v4, :cond_d

    .line 390
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->expandSheet()V

    .line 396
    :cond_c
    :goto_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 397
    cmpg-float v0, v0, v6

    if-gez v0, :cond_e

    .line 398
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dismissSheet()V

    goto :goto_6

    .line 392
    :cond_d
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->peekSheet()V

    goto :goto_7

    .line 402
    :cond_e
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 403
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 404
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->minFlingVelocity:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_10

    .line 405
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetTranslation:F

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_f

    .line 406
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->expandSheet()V

    goto :goto_6

    .line 408
    :cond_f
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->peekSheet()V

    goto :goto_6

    .line 411
    :cond_10
    cmpg-float v0, v0, v3

    if-gez v0, :cond_11

    .line 412
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->expandSheet()V

    goto :goto_6

    .line 414
    :cond_11
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->peekSheet()V

    goto :goto_6

    .line 422
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetTranslation:F

    sub-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isXInSheet(F)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    move v2, v1

    .line 423
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_15

    if-eqz v2, :cond_15

    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->interceptContentTouch:Z

    if-eqz v0, :cond_15

    .line 424
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dismissSheet()V

    move v2, v1

    .line 425
    goto/16 :goto_0

    .line 428
    :cond_15
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isTablet:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getX()F

    move-result v0

    iget v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetStartX:I

    int-to-float v2, v2

    sub-float v3, v0, v2

    :cond_16
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetTranslation:F

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 429
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_6

    :cond_17
    move v0, v4

    goto/16 :goto_5

    :cond_18
    move v0, v4

    goto/16 :goto_3
.end method

.method public peekSheet()V
    .locals 4

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->cancelCurrentAnimation()V

    .line 521
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetLayerTypeIfEnabled(I)V

    .line 522
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->SHEET_TRANSLATION:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v3

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 523
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 524
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->animationInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 525
    new-instance v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$3;

    invoke-direct {v1, p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$3;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 533
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 534
    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->currentAnimator:Landroid/animation/Animator;

    .line 535
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 536
    return-void
.end method

.method public removeOnSheetDismissedListener(Lcom/flipboard/bottomsheet/OnSheetDismissedListener;)V
    .locals 1
    .param p1    # Lcom/flipboard/bottomsheet/OnSheetDismissedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 864
    const-string v0, "onSheetDismissedListener == null"

    invoke-static {p1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 865
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onSheetDismissedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 866
    return-void
.end method

.method public removeOnSheetStateChangeListener(Lcom/flipboard/bottomsheet/BottomSheetLayout$OnSheetStateChangeListener;)V
    .locals 1
    .param p1    # Lcom/flipboard/bottomsheet/BottomSheetLayout$OnSheetStateChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 854
    const-string v0, "onSheetStateChangeListener == null"

    invoke-static {p1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 855
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onSheetStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 856
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 586
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-super {p0, p1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 587
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dimView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-super {p0, v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 588
    return-void
.end method

.method public setDefaultViewTransformer(Lcom/flipboard/bottomsheet/ViewTransformer;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->defaultViewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    .line 795
    return-void
.end method

.method public setInterceptContentTouch(Z)V
    .locals 0

    .prologue
    .line 760
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->interceptContentTouch:Z

    .line 761
    return-void
.end method

.method public setPeekOnDismiss(Z)V
    .locals 0

    .prologue
    .line 740
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->peekOnDismiss:Z

    .line 741
    return-void
.end method

.method public setPeekSheetTranslation(F)V
    .locals 0

    .prologue
    .line 555
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->peek:F

    .line 556
    return-void
.end method

.method public setShouldDimContentView(Z)V
    .locals 0

    .prologue
    .line 806
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->shouldDimContentView:Z

    .line 807
    return-void
.end method

.method public setUseHardwareLayerWhileAnimating(Z)V
    .locals 0

    .prologue
    .line 825
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->useHardwareLayerWhileAnimating:Z

    .line 826
    return-void
.end method

.method public shouldDimContentView()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->shouldDimContentView:Z

    return v0
.end method

.method public showWithSheetView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->showWithSheetView(Landroid/view/View;Lcom/flipboard/bottomsheet/ViewTransformer;)V

    .line 597
    return-void
.end method

.method public showWithSheetView(Landroid/view/View;Lcom/flipboard/bottomsheet/ViewTransformer;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 607
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->state:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v3, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-eq v0, v3, :cond_0

    .line 608
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;Lcom/flipboard/bottomsheet/ViewTransformer;)V

    .line 614
    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dismissSheet(Ljava/lang/Runnable;)V

    .line 680
    :goto_0
    return-void

    .line 617
    :cond_0
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PREPARING:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 619
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 620
    if-nez v0, :cond_1

    .line 621
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isTablet:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-direct {v3, v0, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v0, v3

    .line 624
    :cond_1
    iget-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isTablet:Z

    if-eqz v3, :cond_3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v3, v1, :cond_3

    .line 627
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v1, v2, :cond_2

    .line 628
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 631
    :cond_2
    iget v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->defaultSheetWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 634
    iget v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->screenWidth:I

    iget v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->defaultSheetWidth:I

    sub-int/2addr v1, v3

    .line 635
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetStartX:I

    .line 636
    iget v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->screenWidth:I

    iget v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetStartX:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetEndX:I

    .line 639
    :cond_3
    invoke-super {p0, p1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 640
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->initializeSheetValues()V

    .line 641
    iput-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->viewTransformer:Lcom/flipboard/bottomsheet/ViewTransformer;

    .line 645
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$5;

    invoke-direct {v1, p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$5;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 664
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->currentSheetViewHeight:I

    .line 665
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;

    invoke-direct {v0, p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetViewOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 679
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->sheetViewOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 621
    goto :goto_1
.end method
