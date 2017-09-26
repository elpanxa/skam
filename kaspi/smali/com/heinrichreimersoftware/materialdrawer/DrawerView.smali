.class public Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
.super Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;
.source "DrawerView.java"

# interfaces
.implements Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout$OnInsetsCallback;


# static fields
.field private static final PROPERTY_LEVEL:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPERTY_SCROLL_POSITION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/widget/ScrollView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_FIXED_LIST_SELECTION:Ljava/lang/String; = "mdFixedListSelection"

.field public static final STATE_LIST_SELECTION:Ljava/lang/String; = "mdListSelection"

.field public static final STATE_PROFILE_LIST_OPEN:Ljava/lang/String; = "mdProfileListOpen"

.field private static final TAG:Ljava/lang/String; = "DrawerView"


# instance fields
.field private drawerMaxWidth:I

.field private drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

.field private fixedDivider:Landroid/view/View;

.field private fixedListContainer:Landroid/widget/LinearLayout;

.field private fixedShadow:Landroid/view/View;

.field private frameLayoutProfile:Landroid/widget/FrameLayout;

.field private imageViewOpenProfileListIcon:Landroid/widget/ImageView;

.field private imageViewProfileAvatar:Landroid/widget/ImageView;

.field private imageViewProfileAvatarSecondary:Landroid/widget/ImageView;

.field private imageViewProfileBackground:Landroid/widget/ImageView;

.field private imageViewProfileBackgroundOverlay:Landroid/widget/ImageView;

.field private isInViewHierarchy:Z

.field private layout:Landroid/widget/LinearLayout;

.field private linearLayoutProfileTextContainer:Landroid/widget/LinearLayout;

.field private linearListView:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

.field private linearListViewFixed:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

.field private linearListViewProfileList:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

.field private loggingEnabled:Z

.field private mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

.field private mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

.field private mOnFixedItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

.field private mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

.field private mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

.field private onProfileClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;

.field private onProfileSwitchListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;

.field private profileListOpen:Z

.field private relativeLayoutProfileContent:Landroid/widget/RelativeLayout;

.field private scrollView:Landroid/widget/ScrollView;

.field private statusBarHeight:I

.field private textViewProfileAvatarCount:Landroid/widget/TextView;

.field private textViewProfileDescription:Landroid/widget/TextView;

.field private textViewProfileName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "level"

    invoke-direct {v0, v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->PROPERTY_LEVEL:Landroid/util/Property;

    .line 86
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$2;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "scrollY"

    invoke-direct {v0, v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->PROPERTY_SCROLL_POSITION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    iput v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->statusBarHeight:I

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerMaxWidth:I

    .line 126
    iput-boolean v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->profileListOpen:Z

    .line 127
    iput-boolean v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->isInViewHierarchy:Z

    .line 128
    iput-boolean v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    .line 140
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawerView"

    const-string v1, "DrawerView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-direct {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->init(Landroid/content/Context;)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatarSecondary:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->onProfileSwitchListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateProfileTheme()V

    return-void
.end method

.method static synthetic access$1400(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewProfileList:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewOpenProfileListIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;Z)Z
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->profileListOpen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateListVisibility()V

    return-void
.end method

.method static synthetic access$2100(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListView:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mOnFixedItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->toggleProfileList()V

    return-void
.end method

.method static synthetic access$600(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->openProfileList()V

    return-void
.end method

.method static synthetic access$700(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileAvatarCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->onProfileClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileBackgroundOverlay:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animateToProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)V
    .locals 17

    .prologue
    .line 492
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v2, :cond_0

    const-string v2, "DrawerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateToProfile(*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v2}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    .line 495
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 496
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 501
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_3

    .line 502
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    move v4, v3

    .line 503
    :goto_0
    if-eqz v4, :cond_4

    const/4 v3, -0x1

    .line 508
    :goto_1
    new-instance v7, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;

    invoke-direct {v7}, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;-><init>()V

    .line 509
    new-instance v8, Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;

    invoke-virtual {v7}, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->getColorMatrix()Landroid/graphics/ColorMatrix;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 511
    const-string v9, "colorMatrix"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v7}, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->getColorMatrix()Landroid/graphics/ColorMatrix;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v7, v10}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 512
    new-instance v9, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$12;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v8}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$12;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;)V

    invoke-virtual {v7, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 518
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v7, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v2, v1, v8}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 572
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 573
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearLayoutProfileTextContainer:Landroid/widget/LinearLayout;

    const-string v12, "alpha"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_0

    .line 574
    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearLayoutProfileTextContainer:Landroid/widget/LinearLayout;

    const-string v12, "translationX"

    const/4 v13, 0x2

    new-array v13, v13, [F

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    const/4 v14, 0x1

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x4

    mul-int/2addr v15, v3

    int-to-float v15, v15

    aput v15, v13, v14

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    .line 573
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 577
    new-instance v9, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 608
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 609
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearLayoutProfileTextContainer:Landroid/widget/LinearLayout;

    const-string v13, "alpha"

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_1

    .line 610
    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearLayoutProfileTextContainer:Landroid/widget/LinearLayout;

    const-string v13, "translationX"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getWidth()I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x4

    mul-int v16, v16, v3

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v10, v11

    .line 609
    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 614
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const/4 v8, 0x1

    aput-object v9, v10, v8

    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 618
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 621
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v9}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getCount()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 625
    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->relativeLayoutProfileContent:Landroid/widget/RelativeLayout;

    .line 626
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_big_avatar_size:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int/2addr v4, v9

    invoke-virtual/range {p0 .. p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_baseline:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v4, v9

    .line 628
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_avatar_size:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_big_avatar_size:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    div-float/2addr v9, v10

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_avatar_size:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_big_avatar_size:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    .line 631
    new-instance v11, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v2, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$15;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-virtual {v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->hasAvatar()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatar:Landroid/widget/ImageView;

    const-string v11, "translationX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    const/4 v13, 0x1

    mul-int v14, v4, v3

    int-to-float v14, v14

    add-float/2addr v14, v10

    aput v14, v12, v13

    invoke-static {v2, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 679
    new-instance v11, Lcom/heinrichreimersoftware/materialdrawer/animation/StepInterpolator;

    invoke-direct {v11}, Lcom/heinrichreimersoftware/materialdrawer/animation/StepInterpolator;-><init>()V

    invoke-virtual {v2, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 680
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatar:Landroid/widget/ImageView;

    const-string v11, "translationY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v10, v12, v13

    invoke-static {v2, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 683
    new-instance v10, Lcom/heinrichreimersoftware/materialdrawer/animation/StepInterpolator;

    invoke-direct {v10}, Lcom/heinrichreimersoftware/materialdrawer/animation/StepInterpolator;-><init>()V

    invoke-virtual {v2, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 684
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatar:Landroid/widget/ImageView;

    const-string v10, "alpha"

    const/4 v11, 0x3

    new-array v11, v11, [F

    fill-array-data v11, :array_2

    invoke-static {v2, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatar:Landroid/widget/ImageView;

    const-string v10, "scaleX"

    const/4 v11, 0x3

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    aput v13, v11, v12

    const/4 v12, 0x2

    aput v9, v11, v12

    invoke-static {v2, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatar:Landroid/widget/ImageView;

    const-string v10, "scaleY"

    const/4 v11, 0x3

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    aput v13, v11, v12

    const/4 v12, 0x2

    aput v9, v11, v12

    invoke-static {v2, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->hasAvatar()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatarSecondary:Landroid/widget/ImageView;

    const-string v10, "translationX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    const/4 v12, 0x1

    neg-int v4, v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v11, v12

    invoke-static {v2, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatarSecondary:Landroid/widget/ImageView;

    const-string v3, "scaleX"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v4, v10

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v9

    aput v11, v4, v10

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatarSecondary:Landroid/widget/ImageView;

    const-string v3, "scaleY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v4, v10

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v9, v11, v9

    aput v9, v4, v10

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 751
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 752
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/heinrichreimersoftware/materialdrawer/R$integer;->md_profile_switching_anim_time:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/heinrichreimersoftware/materialdrawer/R$integer;->md_profile_switching_anim_time:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v4, v2

    invoke-virtual {v7, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/heinrichreimersoftware/materialdrawer/R$integer;->md_profile_switching_anim_time:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v4, v2

    invoke-virtual {v8, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 756
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 757
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    .line 502
    :cond_3
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_0

    .line 503
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 626
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatarSecondary:Landroid/widget/ImageView;

    .line 627
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_baseline:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int/2addr v4, v9

    goto/16 :goto_2

    .line 697
    :cond_6
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 698
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatar:Landroid/widget/ImageView;

    const-string v10, "alpha"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_3

    .line 699
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatar:Landroid/widget/ImageView;

    const-string v10, "scaleX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_4

    .line 700
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatar:Landroid/widget/ImageView;

    const-string v10, "scaleY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_5

    .line 701
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v3, v4

    .line 698
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 703
    new-instance v3, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$16;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$16;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 736
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 737
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatar:Landroid/widget/ImageView;

    const-string v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_6

    .line 738
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatar:Landroid/widget/ImageView;

    const-string v11, "scaleX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_7

    .line 739
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatar:Landroid/widget/ImageView;

    const-string v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_8

    .line 740
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v4, v9

    .line 737
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 743
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v2, v4, v9

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 747
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 759
    :cond_7
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 762
    :cond_8
    return-void

    .line 573
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 609
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 686
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 698
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 699
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 700
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 737
    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 738
    :array_7
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 739
    :array_8
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private closeProfileList()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 818
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawerView"

    const-string v1, "closeProfileList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->profileListOpen:Z

    if-eqz v0, :cond_1

    .line 820
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 821
    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewProfileList:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    const-string v3, "alpha"

    new-array v4, v12, [F

    fill-array-data v4, :array_0

    .line 822
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewProfileList:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    const-string v3, "translationY"

    new-array v4, v9, [F

    aput v11, v4, v8

    .line 823
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_list_item_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    aput v5, v4, v10

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListView:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    const-string v3, "alpha"

    new-array v4, v9, [F

    fill-array-data v4, :array_1

    .line 824
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListView:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    const-string v4, "translationY"

    new-array v5, v9, [F

    .line 825
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_list_item_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    aput v6, v5, v8

    aput v11, v5, v10

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewOpenProfileListIcon:Landroid/widget/ImageView;

    .line 826
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->PROPERTY_LEVEL:Landroid/util/Property;

    new-array v4, v9, [I

    fill-array-data v4, :array_2

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->scrollView:Landroid/widget/ScrollView;

    sget-object v4, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->PROPERTY_SCROLL_POSITION:Landroid/util/Property;

    new-array v5, v10, [I

    aput v8, v5, v8

    .line 827
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 821
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 829
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/heinrichreimersoftware/materialdrawer/R$integer;->md_profile_list_open_anim_time:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 830
    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$18;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$18;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 854
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 858
    :goto_0
    return-void

    .line 856
    :cond_1
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateListVisibility()V

    goto :goto_0

    .line 821
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    .line 823
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 826
    :array_2
    .array-data 4
        0x2710
        0x0
    .end array-data
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawerView"

    const-string v1, "findViews()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdScrollView:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->scrollView:Landroid/widget/ScrollView;

    .line 222
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdLayout:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->layout:Landroid/widget/LinearLayout;

    .line 224
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdLayoutProfile:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->frameLayoutProfile:Landroid/widget/FrameLayout;

    .line 225
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdLayoutProfileContent:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->relativeLayoutProfileContent:Landroid/widget/RelativeLayout;

    .line 227
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdAvatarProfile:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatar:Landroid/widget/ImageView;

    .line 228
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdAvatarProfileSecondary:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatarSecondary:Landroid/widget/ImageView;

    .line 229
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdAvatarProfileCount:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileAvatarCount:Landroid/widget/TextView;

    .line 231
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdProfileBackground:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileBackground:Landroid/widget/ImageView;

    .line 232
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdProfileBackgroundOverlay:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileBackgroundOverlay:Landroid/widget/ImageView;

    .line 233
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdProfileTextContainer:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearLayoutProfileTextContainer:Landroid/widget/LinearLayout;

    .line 234
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdProfileName:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileName:Landroid/widget/TextView;

    .line 235
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdProfileDescription:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileDescription:Landroid/widget/TextView;

    .line 236
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdOpenProfileListIcon:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewOpenProfileListIcon:Landroid/widget/ImageView;

    .line 237
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdProfileList:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewProfileList:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    .line 240
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdList:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListView:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    .line 242
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdFixedShadow:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->fixedShadow:Landroid/view/View;

    .line 243
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdFixedDivider:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->fixedDivider:Landroid/view/View;

    .line 244
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdFixedListContainer:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->fixedListContainer:Landroid/widget/LinearLayout;

    .line 245
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdLinearListViewFixed:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewFixed:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    .line 246
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawerView"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$layout;->md_drawer_view:I

    invoke-static {p1, v0, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 148
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findViews()V

    .line 150
    invoke-virtual {p0, v3}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->setClipToPadding(Z)V

    .line 151
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/heinrichreimersoftware/materialdrawer/R$color;->md_inset_foreground:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->setInsetForeground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    invoke-virtual {p0, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->setOnInsetsCallback(Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout$OnInsetsCallback;)V

    .line 155
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    .line 156
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewProfileList:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewProfileList:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$3;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$3;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;)V

    .line 166
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    .line 167
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListView:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListView:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$4;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$4;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;)V

    .line 184
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    .line 185
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewFixed:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewFixed:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$5;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$5;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;)V

    .line 202
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->resetDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 204
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewOpenProfileListIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$6;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$6;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->frameLayoutProfile:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->layout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->statusBarHeight:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 213
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateListVisibility()V

    .line 214
    return-void
.end method

.method private openProfileList()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 774
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawerView"

    const-string v1, "openProfileList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->profileListOpen:Z

    if-nez v0, :cond_1

    .line 776
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 777
    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListView:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    const-string v3, "alpha"

    new-array v4, v12, [F

    fill-array-data v4, :array_0

    .line 778
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListView:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    const-string v3, "translationY"

    new-array v4, v9, [F

    aput v11, v4, v8

    .line 779
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_list_item_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    aput v5, v4, v10

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewProfileList:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    const-string v3, "alpha"

    new-array v4, v9, [F

    fill-array-data v4, :array_1

    .line 780
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewProfileList:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    const-string v4, "translationY"

    new-array v5, v9, [F

    .line 781
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_list_item_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    aput v6, v5, v8

    aput v11, v5, v10

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewOpenProfileListIcon:Landroid/widget/ImageView;

    .line 782
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->PROPERTY_LEVEL:Landroid/util/Property;

    new-array v4, v9, [I

    fill-array-data v4, :array_2

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->scrollView:Landroid/widget/ScrollView;

    sget-object v4, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->PROPERTY_SCROLL_POSITION:Landroid/util/Property;

    new-array v5, v10, [I

    aput v8, v5, v8

    .line 783
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 777
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 785
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/heinrichreimersoftware/materialdrawer/R$integer;->md_profile_list_open_anim_time:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 786
    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$17;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$17;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 811
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 815
    :goto_0
    return-void

    .line 813
    :cond_1
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateListVisibility()V

    goto :goto_0

    .line 777
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    .line 779
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 782
    :array_2
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method

.method private toggleProfileList()V
    .locals 2

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawerView"

    const-string v1, "toggleProfileList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_0
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->profileListOpen:Z

    if-eqz v0, :cond_1

    .line 767
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->closeProfileList()V

    .line 771
    :goto_0
    return-void

    .line 769
    :cond_1
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->openProfileList()V

    goto :goto_0
.end method

.method private updateDrawerWidth()V
    .locals 6

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawerView"

    const-string v1, "updateDrawerWidth()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 289
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 292
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "navigation_bar_width"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 294
    if-lez v2, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 299
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 302
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 303
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/heinrichreimersoftware/materialdrawer/R$attr;->actionBarSize:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 304
    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 306
    sub-int/2addr v0, v1

    .line 308
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerMaxWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 310
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateProfileSpacing()V

    .line 311
    return-void
.end method

.method private updateFixedList()V
    .locals 2

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawerView"

    const-string v1, "updateFixedList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->isInViewHierarchy:Z

    if-eqz v0, :cond_1

    .line 457
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateListVisibility()V

    .line 459
    :cond_1
    return-void
.end method

.method private updateList()V
    .locals 2

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawerView"

    const-string v1, "updateList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->isInViewHierarchy:Z

    if-eqz v0, :cond_1

    .line 449
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateListVisibility()V

    .line 451
    :cond_1
    return-void
.end method

.method private updateListVisibility()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 462
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawerView"

    const-string v1, "updateListVisibility()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->profileListOpen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 465
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewProfileList:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    invoke-virtual {v0, v2}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setVisibility(I)V

    .line 470
    :goto_0
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->profileListOpen:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 471
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListView:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    invoke-virtual {v0, v2}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setVisibility(I)V

    .line 476
    :goto_1
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 477
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->fixedListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 479
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->profileListOpen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->profileListOpen:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->fixedDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->fixedShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :goto_2
    return-void

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewProfileList:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    invoke-virtual {v0, v3}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setVisibility(I)V

    goto :goto_0

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListView:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    invoke-virtual {v0, v3}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setVisibility(I)V

    goto :goto_1

    .line 483
    :cond_5
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->fixedDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->fixedShadow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 487
    :cond_6
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->fixedListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateProfile()V
    .locals 9

    .prologue
    const/4 v2, 0x2

    const/4 v8, 0x4

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 341
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawerView"

    const-string v1, "updateProfile()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_b

    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->isInViewHierarchy:Z

    if-eqz v0, :cond_b

    .line 344
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 346
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileAvatarCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/heinrichreimersoftware/materialdrawer/R$string;->md_label_plus:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileAvatarCount:Landroid/widget/TextView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$7;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$7;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 355
    new-instance v1, Landroid/support/v7/graphics/Palette$Builder;

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v0, 0x1f4

    .line 356
    invoke-virtual {v1, v0}, Landroid/support/v7/graphics/Palette$Builder;->resizeBitmapSize(I)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$8;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$8;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V

    .line 357
    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/Palette$Builder;->generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatarSecondary:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileAvatarCount:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewOpenProfileListIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    :goto_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 396
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatar:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 399
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 403
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileBackground:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    :goto_1
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 409
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :goto_2
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->hasOnProfileClickListener()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 416
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->frameLayoutProfile:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$10;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$10;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->frameLayoutProfile:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 439
    :goto_3
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateProfileTheme()V

    .line 443
    :goto_4
    return-void

    .line 372
    :cond_4
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 374
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v6}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->hasAvatar()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 375
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatarSecondary:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v6}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 376
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatarSecondary:Landroid/widget/ImageView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$9;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$9;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatarSecondary:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    :goto_5
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileAvatarCount:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewOpenProfileListIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->closeProfileList()V

    goto/16 :goto_0

    .line 384
    :cond_5
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatarSecondary:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 391
    :cond_6
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatarSecondary:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileAvatarCount:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewOpenProfileListIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 405
    :cond_7
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileBackground:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x106000d

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 412
    :cond_8
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 425
    :cond_9
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->hasOnProfileClickListener()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 426
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->frameLayoutProfile:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$11;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$11;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->frameLayoutProfile:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto/16 :goto_3

    .line 435
    :cond_a
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->frameLayoutProfile:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto/16 :goto_3

    .line 441
    :cond_b
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->closeProfileList()V

    goto/16 :goto_4
.end method

.method private updateProfileSpacing()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 314
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawerView"

    const-string v1, "updateProfileSpacing()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 317
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x9

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->statusBarHeight:I

    sub-int v2, v0, v1

    .line 318
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_baseline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 320
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->hasAvatar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_big_avatar_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_list_item_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_baseline:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->frameLayoutProfile:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->statusBarHeight:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 331
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->frameLayoutProfile:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->relativeLayoutProfileContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 333
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_4
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->frameLayoutProfile:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->layout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->statusBarHeight:I

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateProfileTheme()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 269
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    .line 270
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v2}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v2}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->hasDrawerTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v2}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    move-result-object v0

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getTextColorPrimaryInverse()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getTextColorSecondaryInverse()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewOpenProfileListIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getTextColorPrimaryInverse()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 277
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewOpenProfileListIcon:Landroid/widget/ImageView;

    sget v1, Lcom/heinrichreimersoftware/materialdrawer/R$drawable;->md_selector_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 283
    :goto_1
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewOpenProfileListIcon:Landroid/widget/ImageView;

    sget v1, Lcom/heinrichreimersoftware/materialdrawer/R$drawable;->md_selector_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->setBackgroundColor(I)V

    .line 251
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getStatusBarBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->setInsetForeground(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->fixedDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/heinrichreimersoftware/materialdrawer/R$color;->md_divider_light:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 259
    :goto_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewFixed:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setBackgroundColor(I)V

    .line 261
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->setDrawerTheme(Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;)V

    .line 262
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->setDrawerTheme(Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;)V

    .line 263
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->setDrawerTheme(Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;)V

    .line 265
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateProfileTheme()V

    .line 266
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->fixedDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/heinrichreimersoftware/materialdrawer/R$color;->md_divider_dark:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public addDivider()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 1

    .prologue
    .line 1226
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;

    invoke-direct {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 1227
    return-object p0
.end method

.method public addFixedDivider()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 1

    .prologue
    .line 1471
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;

    invoke-direct {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addFixedItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 1472
    return-object p0
.end method

.method public addFixedItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 6

    .prologue
    .line 1451
    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1452
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setId(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1455
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1456
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v1, v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->remove(Ljava/lang/Object;)V

    .line 1461
    :cond_2
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {p1, v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->attachTo(Landroid/widget/ArrayAdapter;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1462
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->add(Ljava/lang/Object;)V

    .line 1463
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateFixedList()V

    .line 1464
    return-object p0
.end method

.method public addFixedItems(Ljava/util/List;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;",
            ">;)",
            "Lcom/heinrichreimersoftware/materialdrawer/DrawerView;"
        }
    .end annotation

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->setNotifyOnChange(Z)V

    .line 1398
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1399
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_0

    .line 1400
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setId(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1402
    :cond_0
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1403
    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1404
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v3, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->remove(Ljava/lang/Object;)V

    .line 1409
    :cond_2
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->attachTo(Landroid/widget/ArrayAdapter;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1410
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v1, v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 1412
    :cond_3
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->setNotifyOnChange(Z)V

    .line 1413
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->notifyDataSetChanged()V

    .line 1414
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateFixedList()V

    .line 1415
    return-object p0
.end method

.method public varargs addFixedItems([Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1424
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v1, v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->setNotifyOnChange(Z)V

    .line 1425
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, p1, v1

    .line 1426
    invoke-virtual {v3}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    .line 1427
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setId(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1430
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 1431
    iget-object v4, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v4, v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->remove(Ljava/lang/Object;)V

    .line 1436
    :cond_2
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v3, v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->attachTo(Landroid/widget/ArrayAdapter;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1437
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, v3}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->add(Ljava/lang/Object;)V

    .line 1425
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1439
    :cond_3
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->setNotifyOnChange(Z)V

    .line 1440
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->notifyDataSetChanged()V

    .line 1441
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateFixedList()V

    .line 1442
    return-object p0
.end method

.method public addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 6

    .prologue
    .line 1206
    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1207
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setId(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1210
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1211
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v1, v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->remove(Ljava/lang/Object;)V

    .line 1216
    :cond_2
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {p1, v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->attachTo(Landroid/widget/ArrayAdapter;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1217
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->add(Ljava/lang/Object;)V

    .line 1218
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateList()V

    .line 1219
    return-object p0
.end method

.method public addItems(Ljava/util/List;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;",
            ">;)",
            "Lcom/heinrichreimersoftware/materialdrawer/DrawerView;"
        }
    .end annotation

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->setNotifyOnChange(Z)V

    .line 1153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1154
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_0

    .line 1155
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setId(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1157
    :cond_0
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1158
    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1159
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v3, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->remove(Ljava/lang/Object;)V

    .line 1164
    :cond_2
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->attachTo(Landroid/widget/ArrayAdapter;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1165
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v1, v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 1167
    :cond_3
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->setNotifyOnChange(Z)V

    .line 1168
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->notifyDataSetChanged()V

    .line 1169
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateList()V

    .line 1170
    return-object p0
.end method

.method public varargs addItems([Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1179
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v1, v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->setNotifyOnChange(Z)V

    .line 1180
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, p1, v1

    .line 1181
    invoke-virtual {v3}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    .line 1182
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setId(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1185
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 1186
    iget-object v4, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v4, v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->remove(Ljava/lang/Object;)V

    .line 1191
    :cond_2
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v3, v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->attachTo(Landroid/widget/ArrayAdapter;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1192
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, v3}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->add(Ljava/lang/Object;)V

    .line 1180
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1194
    :cond_3
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->setNotifyOnChange(Z)V

    .line 1195
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->notifyDataSetChanged()V

    .line 1196
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateList()V

    .line 1197
    return-object p0
.end method

.method public addProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 6

    .prologue
    .line 948
    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 949
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->setId(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 952
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 953
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v1, v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->remove(Ljava/lang/Object;)V

    .line 957
    :cond_2
    invoke-virtual {p1, p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->attachTo(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 958
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->add(Ljava/lang/Object;)V

    .line 959
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 960
    invoke-virtual {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->selectProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 962
    :cond_3
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateProfile()V

    .line 963
    return-object p0
.end method

.method public clearFixedItems()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 2

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1592
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->detach()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    goto :goto_0

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->clear()V

    .line 1595
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateFixedList()V

    .line 1596
    return-object p0
.end method

.method public clearItems()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 2

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1347
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->detach()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    goto :goto_0

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->clear()V

    .line 1350
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateList()V

    .line 1351
    return-object p0
.end method

.method public clearProfiles()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 1066
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->detach()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    goto :goto_0

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->clear()V

    .line 1069
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateProfile()V

    .line 1070
    return-object p0
.end method

.method public findFixedItemById(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 5

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1502
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1506
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findItemById(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 5

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1257
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1261
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findProfileById(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 5

    .prologue
    .line 982
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 983
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 987
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawerMaxWidth()I
    .locals 1

    .prologue
    .line 928
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerMaxWidth:I

    return v0
.end method

.method public getDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    return-object v0
.end method

.method public getFixedItem(I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    return-object v0
.end method

.method public getFixedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLoggingEnabled()Z
    .locals 1

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    return v0
.end method

.method public getOnFixedItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;
    .locals 1

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mOnFixedItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    return-object v0
.end method

.method public getOnProfileClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->onProfileClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;

    return-object v0
.end method

.method public getOnProfileSwitchListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->onProfileSwitchListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;

    return-object v0
.end method

.method public getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 972
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedFixedPosition()I
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public hasOnFixedItemClickListener()Z
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mOnFixedItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnItemClickListener()Z
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnProfileClickListener()Z
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->onProfileClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnProfileSwitchListener()Z
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->onProfileSwitchListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInsetsChanged(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1638
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawerView"

    const-string v1, "onInsetsChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_0
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->statusBarHeight:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_1

    .line 1640
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->statusBarHeight:I

    .line 1641
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateProfileSpacing()V

    .line 1643
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1686
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawerView"

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_0
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 1688
    check-cast p1, Landroid/os/Bundle;

    .line 1690
    const-string v0, "mdProfileListOpen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1691
    const-string v0, "mdProfileListOpen"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1692
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->openProfileList()V

    .line 1699
    :goto_0
    const-string v0, "mdListSelection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1700
    const-string v0, "mdListSelection"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1701
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1702
    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->selectItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 1713
    :cond_1
    :goto_1
    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 1715
    :cond_2
    invoke-super {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1716
    return-void

    .line 1694
    :cond_3
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->closeProfileList()V

    goto :goto_0

    .line 1697
    :cond_4
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->closeProfileList()V

    goto :goto_0

    .line 1704
    :cond_5
    const-string v0, "mdFixedListSelection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1705
    const-string v0, "mdFixedListSelection"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1706
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1707
    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->selectFixedItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1672
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawerView"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1674
    const-string v1, "instanceState"

    invoke-super {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1677
    const-string v1, "mdProfileListOpen"

    iget-boolean v2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->profileListOpen:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1678
    const-string v1, "mdListSelection"

    iget-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v2}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1679
    const-string v1, "mdFixedListSelection"

    iget-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v2}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1681
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    .line 1647
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1648
    const-string v0, "DrawerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->onSizeChanged(IIII)V

    .line 1651
    if-eq p1, p3, :cond_3

    .line 1652
    if-nez p3, :cond_1

    .line 1653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->isInViewHierarchy:Z

    .line 1654
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateListVisibility()V

    .line 1655
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateProfile()V

    .line 1658
    :cond_1
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerMaxWidth:I

    if-gtz v0, :cond_2

    .line 1659
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    .line 1660
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->setDrawerMaxWidth(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 1666
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateDrawerWidth()V

    .line 1668
    :cond_3
    return-void

    .line 1662
    :cond_4
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->resetDrawerMaxWidth()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    goto :goto_0
.end method

.method public removeFixedItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 2

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->detach()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1566
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v1, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->remove(Ljava/lang/Object;)V

    .line 1567
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateFixedList()V

    .line 1568
    return-object p0
.end method

.method public removeFixedItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 1

    .prologue
    .line 1553
    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->detach()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1554
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->remove(Ljava/lang/Object;)V

    .line 1555
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateFixedList()V

    .line 1556
    return-object p0
.end method

.method public removeFixedItemById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 5

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1578
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1579
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v1, v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->remove(Ljava/lang/Object;)V

    .line 1580
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateFixedList()V

    .line 1584
    :cond_1
    return-object p0
.end method

.method public removeItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 2

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->detach()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1321
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v1, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->remove(Ljava/lang/Object;)V

    .line 1322
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateList()V

    .line 1323
    return-object p0
.end method

.method public removeItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->detach()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1309
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->remove(Ljava/lang/Object;)V

    .line 1310
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateList()V

    .line 1311
    return-object p0
.end method

.method public removeItemById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 5

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 1333
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1334
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v1, v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->remove(Ljava/lang/Object;)V

    .line 1335
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateList()V

    .line 1339
    :cond_1
    return-object p0
.end method

.method public removeOnFixedItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 1

    .prologue
    .line 1631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mOnFixedItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    .line 1632
    return-object p0
.end method

.method public removeOnItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 1

    .prologue
    .line 1386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    .line 1387
    return-object p0
.end method

.method public removeOnProfileClickListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 1

    .prologue
    .line 1105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->onProfileClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;

    .line 1106
    return-object p0
.end method

.method public removeOnProfileSwitchListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 1

    .prologue
    .line 1141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->onProfileSwitchListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;

    .line 1142
    return-object p0
.end method

.method public removeProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 1

    .prologue
    .line 1038
    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->detach()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 1039
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->remove(Ljava/lang/Object;)V

    .line 1040
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateProfile()V

    .line 1041
    return-object p0
.end method

.method public removeProfileById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 5

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 1051
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1052
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->detach()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 1053
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v1, v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->remove(Ljava/lang/Object;)V

    .line 1054
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateProfile()V

    .line 1058
    :cond_1
    return-object p0
.end method

.method public resetDrawerMaxWidth()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 2

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_drawer_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerMaxWidth:I

    .line 920
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateDrawerWidth()V

    .line 921
    return-object p0
.end method

.method public resetDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 2

    .prologue
    .line 881
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    .line 882
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateTheme()V

    .line 883
    return-object p0
.end method

.method public selectFixedItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->clearSelection()V

    .line 1516
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->select(I)V

    .line 1517
    return-object p0
.end method

.method public selectFixedItemById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 7

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->clearSelection()V

    .line 1537
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getCount()I

    move-result v2

    .line 1538
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_1

    .line 1540
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->select(I)V

    .line 1544
    :cond_0
    return-object p0

    .line 1538
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public selectItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->clearSelection()V

    .line 1271
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->select(I)V

    .line 1272
    return-object p0
.end method

.method public selectItemById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 7

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->clearSelection()V

    .line 1292
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getCount()I

    move-result v2

    .line 1293
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->select(I)V

    .line 1299
    :cond_0
    return-object p0

    .line 1293
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public selectProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 996
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, v3}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 999
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 1000
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->closeProfileList()V

    .line 1001
    invoke-direct {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->animateToProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)V

    .line 1003
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->remove(Ljava/lang/Object;)V

    .line 1004
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, p1, v3}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->insert(Ljava/lang/Object;I)V

    .line 1014
    :cond_0
    :goto_0
    return-object p0

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->remove(Ljava/lang/Object;)V

    .line 1007
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0, p1, v3}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->insert(Ljava/lang/Object;I)V

    .line 1009
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->hasOnProfileSwitchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->onProfileSwitchListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getId()J

    move-result-wide v5

    move-object v4, p1

    invoke-interface/range {v0 .. v6}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;->onSwitch(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;JLcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;J)V

    goto :goto_0
.end method

.method public selectProfileById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 5

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 1024
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1025
    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->selectProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 1029
    :cond_1
    return-object p0
.end method

.method public setDrawerMaxWidth(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 0

    .prologue
    .line 937
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerMaxWidth:I

    .line 938
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateDrawerWidth()V

    .line 939
    return-object p0
.end method

.method public setDrawerMaxWidthResource(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 1

    .prologue
    .line 910
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerMaxWidth:I

    .line 911
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateDrawerWidth()V

    .line 912
    return-object p0
.end method

.method public setDrawerTheme(Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 0

    .prologue
    .line 899
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    .line 900
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateTheme()V

    .line 901
    return-object p0
.end method

.method public setLoggingEnabled(Z)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 0

    .prologue
    .line 873
    iput-boolean p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->loggingEnabled:Z

    .line 874
    return-object p0
.end method

.method public setOnFixedItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 0

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mOnFixedItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    .line 1615
    return-object p0
.end method

.method public setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 0

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    .line 1370
    return-object p0
.end method

.method public setOnProfileClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 0

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->onProfileClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;

    .line 1089
    return-object p0
.end method

.method public setOnProfileSwitchListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 0

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->onProfileSwitchListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;

    .line 1125
    return-object p0
.end method
