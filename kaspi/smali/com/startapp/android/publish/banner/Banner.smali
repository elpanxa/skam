.class public Lcom/startapp/android/publish/banner/Banner;
.super Landroid/widget/FrameLayout;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/BannerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/banner/Banner$5;,
        Lcom/startapp/android/publish/banner/Banner$SavedState;,
        Lcom/startapp/android/publish/banner/Banner$BType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Banner"


# instance fields
.field private bFirstTime:Z

.field private bVisible:Z

.field private banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

.field private bannerHtml:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

.field private initBannerCalled:Z

.field private innerBanner3dId:I

.field private innerBannerstandardId:I

.field private options:Lcom/startapp/android/publish/banner/BannerOptions;

.field private type:Lcom/startapp/android/publish/banner/Banner$BType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0, v0}, Lcom/startapp/android/publish/banner/Banner;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/banner/BannerListener;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const v0, 0x9876543

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/startapp/android/publish/banner/Banner;->innerBanner3dId:I

    .line 40
    iget v0, p0, Lcom/startapp/android/publish/banner/Banner;->innerBanner3dId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/startapp/android/publish/banner/Banner;->innerBannerstandardId:I

    .line 47
    iput-boolean v3, p0, Lcom/startapp/android/publish/banner/Banner;->bFirstTime:Z

    .line 49
    iput-object v4, p0, Lcom/startapp/android/publish/banner/Banner;->type:Lcom/startapp/android/publish/banner/Banner$BType;

    .line 50
    iput-boolean v3, p0, Lcom/startapp/android/publish/banner/Banner;->bVisible:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/Banner;->initBannerCalled:Z

    .line 73
    invoke-direct {p0, v4}, Lcom/startapp/android/publish/banner/Banner;->init(Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const v0, 0x9876543

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/startapp/android/publish/banner/Banner;->innerBanner3dId:I

    .line 40
    iget v0, p0, Lcom/startapp/android/publish/banner/Banner;->innerBanner3dId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/startapp/android/publish/banner/Banner;->innerBannerstandardId:I

    .line 47
    iput-boolean v3, p0, Lcom/startapp/android/publish/banner/Banner;->bFirstTime:Z

    .line 49
    iput-object v4, p0, Lcom/startapp/android/publish/banner/Banner;->type:Lcom/startapp/android/publish/banner/Banner$BType;

    .line 50
    iput-boolean v3, p0, Lcom/startapp/android/publish/banner/Banner;->bVisible:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/Banner;->initBannerCalled:Z

    .line 77
    invoke-direct {p0, v4}, Lcom/startapp/android/publish/banner/Banner;->init(Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/banner/BannerListener;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/startapp/android/publish/banner/Banner;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/banner/BannerListener;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/android/publish/banner/Banner;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/banner/BannerListener;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/banner/BannerListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const v0, 0x9876543

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/startapp/android/publish/banner/Banner;->innerBanner3dId:I

    .line 40
    iget v0, p0, Lcom/startapp/android/publish/banner/Banner;->innerBanner3dId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/startapp/android/publish/banner/Banner;->innerBannerstandardId:I

    .line 47
    iput-boolean v3, p0, Lcom/startapp/android/publish/banner/Banner;->bFirstTime:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->type:Lcom/startapp/android/publish/banner/Banner$BType;

    .line 50
    iput-boolean v3, p0, Lcom/startapp/android/publish/banner/Banner;->bVisible:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/Banner;->initBannerCalled:Z

    .line 67
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/banner/Banner;->init(Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 68
    invoke-virtual {p0, p3}, Lcom/startapp/android/publish/banner/Banner;->setBannerListener(Lcom/startapp/android/publish/banner/BannerListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/startapp/android/publish/banner/Banner;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/Banner;->initBanner()V

    return-void
.end method

.method static synthetic access$100(Lcom/startapp/android/publish/banner/Banner;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/Banner;->init_step2()V

    return-void
.end method

.method private init(Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/16 v3, 0xa9

    const/4 v2, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    .line 89
    new-instance v0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->bannerHtml:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 101
    :goto_1
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    iget-object v1, p0, Lcom/startapp/android/publish/banner/Banner;->bannerHtml:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {p0, v1, v0}, Lcom/startapp/android/publish/banner/Banner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v1, p0, Lcom/startapp/android/publish/banner/Banner;->banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {p0, v1, v0}, Lcom/startapp/android/publish/banner/Banner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    iget v1, p0, Lcom/startapp/android/publish/banner/Banner;->innerBanner3dId:I

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setId(I)V

    .line 107
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->bannerHtml:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    iget v1, p0, Lcom/startapp/android/publish/banner/Banner;->innerBannerstandardId:I

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setId(I)V

    .line 109
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setTag(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->bannerHtml:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setTag(Ljava/lang/Object;)V

    .line 113
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/Banner;->setVisibility(I)V

    .line 115
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/banner/Banner$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/banner/Banner$1;-><init>(Lcom/startapp/android/publish/banner/Banner;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 139
    :goto_2
    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/model/AdPreferences;)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    .line 92
    new-instance v0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, p1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/model/AdPreferences;)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->bannerHtml:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/Banner;->setMinimumWidth(I)V

    .line 126
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/Banner;->setMinimumHeight(I)V

    .line 127
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/Banner;->setBackgroundColor(I)V

    .line 129
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 130
    const-string v1, "StartApp Banner"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 135
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 137
    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/banner/Banner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method private initBanner()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 142
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/Banner;->initBannerCalled:Z

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 145
    :cond_0
    iput-boolean v4, p0, Lcom/startapp/android/publish/banner/Banner;->initBannerCalled:Z

    .line 146
    new-instance v5, Lcom/startapp/android/publish/banner/Banner$2;

    invoke-direct {v5, p0}, Lcom/startapp/android/publish/banner/Banner$2;-><init>(Lcom/startapp/android/publish/banner/Banner;)V

    .line 160
    new-instance v2, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v2}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    .line 161
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 162
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getInstance()Lcom/startapp/android/publish/model/adrules/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getSessionRequestReason()Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/startapp/android/publish/model/MetaData;->loadFromServer(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;ZLcom/startapp/android/publish/e/p;)V

    goto :goto_0
.end method

.method private init_step2()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 185
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getBannerOptionsCopy()Lcom/startapp/android/publish/banner/BannerOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    .line 187
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/Banner;->bFirstTime:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/BannerOptions;->i()I

    move-result v0

    .line 190
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 192
    sget-object v2, Lcom/startapp/android/publish/banner/Banner$BType;->REGULAR:Lcom/startapp/android/publish/banner/Banner$BType;

    iput-object v2, p0, Lcom/startapp/android/publish/banner/Banner;->type:Lcom/startapp/android/publish/banner/Banner$BType;

    .line 193
    if-ge v1, v0, :cond_0

    .line 194
    sget-object v2, Lcom/startapp/android/publish/banner/Banner$BType;->THREED:Lcom/startapp/android/publish/banner/Banner$BType;

    iput-object v2, p0, Lcom/startapp/android/publish/banner/Banner;->type:Lcom/startapp/android/publish/banner/Banner$BType;

    .line 197
    :cond_0
    const-string v2, "Banner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BannerProbability ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\\"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    :cond_1
    sget-object v0, Lcom/startapp/android/publish/banner/Banner$5;->$SwitchMap$com$startapp$android$publish$banner$Banner$BType:[I

    iget-object v1, p0, Lcom/startapp/android/publish/banner/Banner;->type:Lcom/startapp/android/publish/banner/Banner$BType;

    invoke-virtual {v1}, Lcom/startapp/android/publish/banner/Banner$BType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/Banner;->bFirstTime:Z

    .line 222
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/Banner;->bVisible:Z

    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->showBanner()V

    .line 226
    :cond_2
    return-void

    .line 202
    :pswitch_0
    const-string v0, "Banner"

    const-string v1, "BannerDisplaying REGULAR"

    invoke-static {v0, v5, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->hideBanner()V

    .line 205
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->bannerHtml:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->load()V

    goto :goto_0

    .line 211
    :pswitch_1
    const-string v0, "Banner"

    const-string v1, "BannerDisplaying 3D"

    invoke-static {v0, v5, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->bannerHtml:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->hideBanner()V

    .line 213
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/Banner;->bFirstTime:Z

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->load()V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->showBanner()V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public hideBanner()V
    .locals 1

    .prologue
    .line 326
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/Banner;->setVisibility(I)V

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/Banner;->bVisible:Z

    .line 328
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 244
    instance-of v0, p1, Lcom/startapp/android/publish/banner/Banner$SavedState;

    if-nez v0, :cond_0

    .line 245
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 258
    :goto_0
    return-void

    .line 248
    :cond_0
    check-cast p1, Lcom/startapp/android/publish/banner/Banner$SavedState;

    .line 249
    iget-object v0, p1, Lcom/startapp/android/publish/banner/Banner$SavedState;->type:Lcom/startapp/android/publish/banner/Banner$BType;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->type:Lcom/startapp/android/publish/banner/Banner$BType;

    .line 250
    iget-boolean v0, p1, Lcom/startapp/android/publish/banner/Banner$SavedState;->bFirstTime:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/Banner;->bFirstTime:Z

    .line 251
    iget v0, p1, Lcom/startapp/android/publish/banner/Banner$SavedState;->banner3dId:I

    iput v0, p0, Lcom/startapp/android/publish/banner/Banner;->innerBanner3dId:I

    .line 252
    iget v0, p1, Lcom/startapp/android/publish/banner/Banner$SavedState;->bannerstandardId:I

    iput v0, p0, Lcom/startapp/android/publish/banner/Banner;->innerBannerstandardId:I

    .line 254
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    iget v1, p0, Lcom/startapp/android/publish/banner/Banner;->innerBanner3dId:I

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setId(I)V

    .line 255
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->bannerHtml:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    iget v1, p0, Lcom/startapp/android/publish/banner/Banner;->innerBannerstandardId:I

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setId(I)V

    .line 257
    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/Banner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 233
    new-instance v1, Lcom/startapp/android/publish/banner/Banner$SavedState;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/banner/Banner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 234
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/Banner;->bFirstTime:Z

    iput-boolean v0, v1, Lcom/startapp/android/publish/banner/Banner$SavedState;->bFirstTime:Z

    .line 235
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->type:Lcom/startapp/android/publish/banner/Banner$BType;

    iput-object v0, v1, Lcom/startapp/android/publish/banner/Banner$SavedState;->type:Lcom/startapp/android/publish/banner/Banner$BType;

    .line 236
    iget v0, p0, Lcom/startapp/android/publish/banner/Banner;->innerBanner3dId:I

    iput v0, v1, Lcom/startapp/android/publish/banner/Banner$SavedState;->banner3dId:I

    .line 237
    iget v0, p0, Lcom/startapp/android/publish/banner/Banner;->innerBannerstandardId:I

    iput v0, v1, Lcom/startapp/android/publish/banner/Banner$SavedState;->bannerstandardId:I

    .line 239
    return-object v1
.end method

.method public setBannerListener(Lcom/startapp/android/publish/banner/BannerListener;)V
    .locals 2

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    if-eqz p1, :cond_0

    .line 334
    new-instance v0, Lcom/startapp/android/publish/banner/Banner$3;

    invoke-direct {v0, p0, p1}, Lcom/startapp/android/publish/banner/Banner$3;-><init>(Lcom/startapp/android/publish/banner/Banner;Lcom/startapp/android/publish/banner/BannerListener;)V

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/startapp/android/publish/banner/Banner;->banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/startapp/android/publish/banner/Banner;->banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setBannerListener(Lcom/startapp/android/publish/banner/BannerListener;)V

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/startapp/android/publish/banner/Banner;->bannerHtml:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    if-eqz v1, :cond_2

    .line 357
    iget-object v1, p0, Lcom/startapp/android/publish/banner/Banner;->bannerHtml:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setBannerListener(Lcom/startapp/android/publish/banner/BannerListener;)V

    .line 359
    :cond_2
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/Banner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 366
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 368
    iget-object v1, p0, Lcom/startapp/android/publish/banner/Banner;->banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/startapp/android/publish/banner/Banner;->banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/startapp/android/publish/banner/Banner;->bannerHtml:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/startapp/android/publish/banner/Banner;->bannerHtml:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    :cond_1
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_2

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_2

    .line 379
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapp/android/publish/banner/Banner$4;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/banner/Banner$4;-><init>(Lcom/startapp/android/publish/banner/Banner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 387
    :cond_2
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 391
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->banner3D:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setTag(Ljava/lang/Object;)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->bannerHtml:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner;->bannerHtml:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setTag(Ljava/lang/Object;)V

    .line 398
    :cond_1
    return-void
.end method

.method public showBanner()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/Banner;->setVisibility(I)V

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/Banner;->bVisible:Z

    .line 322
    return-void
.end method
