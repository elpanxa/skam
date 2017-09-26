.class public Lcom/startapp/android/publish/banner/banner3d/Banner3D;
.super Landroid/widget/RelativeLayout;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/AdEventListener;
.implements Lcom/startapp/android/publish/BannerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Banner3D"

.field private static final TIMEOUT_RESTORE:I = 0xc8


# instance fields
.field private adDisplayEventRecorded:Z

.field private adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

.field private adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

.field private ads:Lcom/startapp/android/publish/a/a;

.field private adsItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/AdDetails;",
            ">;"
        }
    .end annotation
.end field

.field private animation:Z

.field private attachedToWindow:Z

.field private camera:Landroid/graphics/Camera;

.field private currentBannerIndex:I

.field private defaultLoad:Z

.field private faces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;",
            ">;"
        }
    .end annotation
.end field

.field private firstRotation:Z

.field private firstRotationFinished:Z

.field private listener:Lcom/startapp/android/publish/banner/BannerListener;

.field private loaded:Z

.field private loading:Z

.field private mAutoRotation:Ljava/lang/Runnable;

.field private matrix:Landroid/graphics/Matrix;

.field private options:Lcom/startapp/android/publish/banner/BannerOptions;

.field private overrides:Lcom/startapp/android/publish/adinformation/b;

.field private paint:Landroid/graphics/Paint;

.field private rotating:Z

.field private rotation:F

.field private rotationEnabled:Z

.field private startY:F

.field private touchDown:Z

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/model/AdPreferences;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    .line 65
    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    .line 66
    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    .line 68
    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->startY:F

    .line 70
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotationEnabled:Z

    .line 71
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotating:Z

    .line 72
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    .line 73
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z

    .line 75
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->touchDown:Z

    .line 76
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->animation:Z

    .line 78
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->visible:Z

    .line 79
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z

    .line 82
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loaded:Z

    .line 83
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loading:Z

    .line 84
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    .line 85
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adDisplayEventRecorded:Z

    .line 92
    iput v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    .line 109
    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;-><init>(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    .line 182
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->init()V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    .line 65
    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    .line 66
    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    .line 68
    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->startY:F

    .line 70
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotationEnabled:Z

    .line 71
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotating:Z

    .line 72
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    .line 73
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z

    .line 75
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->touchDown:Z

    .line 76
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->animation:Z

    .line 78
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->visible:Z

    .line 79
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z

    .line 82
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loaded:Z

    .line 83
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loading:Z

    .line 84
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    .line 85
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adDisplayEventRecorded:Z

    .line 92
    iput v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    .line 109
    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;-><init>(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    .line 187
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->init()V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/banner/BannerListener;)V
    .locals 2

    .prologue
    .line 158
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/model/AdPreferences;)V

    .line 159
    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setBannerListener(Lcom/startapp/android/publish/banner/BannerListener;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/model/AdPreferences;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/banner/BannerListener;)V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/model/AdPreferences;)V

    .line 164
    invoke-virtual {p0, p3}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setBannerListener(Lcom/startapp/android/publish/banner/BannerListener;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/model/AdPreferences;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/startapp/android/publish/model/AdPreferences;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    .line 65
    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    .line 66
    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    .line 68
    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->startY:F

    .line 70
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotationEnabled:Z

    .line 71
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotating:Z

    .line 72
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    .line 73
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z

    .line 75
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->touchDown:Z

    .line 76
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->animation:Z

    .line 78
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->visible:Z

    .line 79
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z

    .line 82
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loaded:Z

    .line 83
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loading:Z

    .line 84
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    .line 85
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adDisplayEventRecorded:Z

    .line 92
    iput v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    .line 109
    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;-><init>(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    .line 174
    iput-boolean p2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z

    .line 175
    iput-object p3, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    .line 176
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->init()V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loaded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/startapp/android/publish/banner/banner3d/Banner3D;F)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotate(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    return v0
.end method

.method static synthetic access$1200(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/startapp/android/publish/banner/banner3d/Banner3D;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/startapp/android/publish/banner/banner3d/Banner3D;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotating:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getNextBannerIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/startapp/android/publish/banner/banner3d/Banner3D;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loadBanners(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->visible:Z

    return v0
.end method

.method static synthetic access$300(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getCurrentBannerIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adDisplayEventRecorded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/startapp/android/publish/banner/banner3d/Banner3D;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adDisplayEventRecorded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getAdTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotationEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/startapp/android/publish/banner/banner3d/Banner3D;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotationEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Lcom/startapp/android/publish/banner/BannerOptions;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/banner/BannerOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z

    return v0
.end method

.method static synthetic access$900(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Lcom/startapp/android/publish/banner/BannerOptions;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    return-object v0
.end method

.method private addAdInformationLayout()V
    .locals 6

    .prologue
    .line 205
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 206
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getFaceWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getFaceHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 207
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 208
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getFaceStartLeft()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 209
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getFaceStartTop()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 210
    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    new-instance v1, Lcom/startapp/android/publish/adinformation/a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/startapp/android/publish/adinformation/a$b;->a:Lcom/startapp/android/publish/adinformation/a$b;

    sget-object v4, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    iget-object v5, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->overrides:Lcom/startapp/android/publish/adinformation/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/startapp/android/publish/adinformation/a;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adinformation/a$b;Lcom/startapp/android/publish/model/AdPreferences$Placement;Lcom/startapp/android/publish/adinformation/b;)V

    .line 213
    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/adinformation/a;->a(Landroid/widget/RelativeLayout;)V

    .line 214
    return-void
.end method

.method private drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 519
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 527
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    int-to-float v1, p6

    invoke-virtual {v0, v2, v2, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 528
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0, p8}, Landroid/graphics/Camera;->rotateX(F)V

    .line 529
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    neg-int v1, p6

    int-to-float v1, v1

    invoke-virtual {v0, v2, v2, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 532
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 533
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 538
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 541
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    neg-int v1, p5

    int-to-float v1, v1

    neg-int v2, p6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 542
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p7, p7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 543
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    add-int v1, p4, p5

    int-to-float v1, v1

    add-int v2, p3, p6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 548
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 549
    return-void
.end method

.method private drawFrame(Landroid/graphics/Canvas;)V
    .locals 21

    .prologue
    .line 450
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getFaceWidth()I

    move-result v19

    .line 451
    invoke-direct/range {p0 .. p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getFaceHeight()I

    move-result v20

    .line 452
    invoke-direct/range {p0 .. p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getFaceStartLeft()I

    move-result v6

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getFaceStartTop()I

    move-result v5

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v2}, Lcom/startapp/android/publish/banner/BannerOptions;->l()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/high16 v4, 0x42340000    # 45.0f

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42340000    # 45.0f

    div-float/2addr v3, v4

    float-to-double v8, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/startapp/android/publish/banner/BannerOptions;->m()I

    move-result v3

    int-to-double v10, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v3, v8

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v7}, Lcom/startapp/android/publish/banner/BannerOptions;->l()F

    move-result v7

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    add-float v9, v2, v3

    .line 456
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z

    if-nez v2, :cond_0

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v2}, Lcom/startapp/android/publish/banner/BannerOptions;->l()F

    move-result v9

    .line 460
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getPreviousBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 461
    invoke-direct/range {p0 .. p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 462
    if-eqz v4, :cond_2

    if-eqz v12, :cond_2

    .line 464
    move-object/from16 v0, p0

    iget v2, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/high16 v3, 0x42340000    # 45.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 465
    move-object/from16 v0, p0

    iget v2, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 466
    div-int/lit8 v7, v19, 0x2

    div-int/lit8 v8, v20, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/startapp/android/publish/banner/BannerOptions;->n()Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->getRotationMultiplier()I

    move-result v3

    int-to-float v3, v3

    mul-float v10, v2, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    .line 468
    :cond_1
    div-int/lit8 v7, v19, 0x2

    div-int/lit8 v8, v20, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/startapp/android/publish/banner/BannerOptions;->n()Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->getRotationMultiplier()I

    move-result v3

    int-to-float v3, v3

    mul-float v10, v2, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v12

    invoke-direct/range {v2 .. v10}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    .line 484
    :cond_2
    :goto_0
    return-void

    .line 470
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/high16 v3, 0x42ae0000    # 87.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 471
    div-int/lit8 v15, v19, 0x2

    div-int/lit8 v16, v20, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/startapp/android/publish/banner/BannerOptions;->n()Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->getRotationMultiplier()I

    move-result v3

    int-to-float v3, v3

    mul-float v18, v2, v3

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v13, v5

    move v14, v6

    move/from16 v17, v9

    invoke-direct/range {v10 .. v18}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    .line 475
    :cond_4
    div-int/lit8 v7, v19, 0x2

    div-int/lit8 v8, v20, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/startapp/android/publish/banner/BannerOptions;->n()Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->getRotationMultiplier()I

    move-result v3

    int-to-float v3, v3

    mul-float v10, v2, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    .line 476
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    if-nez v2, :cond_2

    .line 477
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 481
    :catch_0
    move-exception v2

    .line 482
    const-string v2, "Banner3D"

    const/4 v3, 0x6

    const-string v4, "Exception onDraw Banner3D"

    invoke-static {v2, v3, v4}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private facesNeedInit()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAdTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBannerOptions()Lcom/startapp/android/publish/banner/BannerOptions;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    return-object v0
.end method

.method private getCurrentBannerIndex()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    return v0
.end method

.method private getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getCurrentBannerIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getFaceHeight()I
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v1}, Lcom/startapp/android/publish/banner/BannerOptions;->e()I

    move-result v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v1}, Lcom/startapp/android/publish/banner/BannerOptions;->k()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getFaceStartLeft()I
    .locals 2

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getFaceWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getFaceStartTop()I
    .locals 2

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getFaceHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getFaceWidth()I
    .locals 2

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v1}, Lcom/startapp/android/publish/banner/BannerOptions;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v1}, Lcom/startapp/android/publish/banner/BannerOptions;->j()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getNextBannerIndex()I
    .locals 2

    .prologue
    .line 417
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getTotalBaners()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private getPreviousBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getCurrentBannerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 409
    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getTotalBaners()I
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->initRuntime()V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->initDebug()V

    goto :goto_0
.end method

.method private initDebug()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/16 v2, 0xa9

    .line 263
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setMinimumWidth(I)V

    .line 264
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setMinimumHeight(I)V

    .line 265
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setBackgroundColor(I)V

    .line 267
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 268
    const-string v1, "StartApp Banner3D"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 273
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 275
    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    return-void
.end method

.method private initFaces(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/AdDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    .line 388
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapp/android/publish/model/AdDetails;

    .line 389
    iget-object v7, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/banner/BannerOptions;

    move-result-object v4

    new-instance v5, Lcom/startapp/android/publish/h/s;

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getAdTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/startapp/android/publish/model/AdDetails;Lcom/startapp/android/publish/banner/BannerOptions;Lcom/startapp/android/publish/h/s;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    .line 393
    return-void
.end method

.method private initRuntime()V
    .locals 4

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loading:Z

    if-nez v0, :cond_1

    .line 234
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getBannerOptionsCopy()Lcom/startapp/android/publish/banner/BannerOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    .line 237
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    .line 241
    :cond_0
    invoke-static {}, Lcom/startapp/android/publish/adinformation/b;->a()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->overrides:Lcom/startapp/android/publish/adinformation/b;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loading:Z

    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setBackgroundColor(I)V

    .line 248
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapp/android/publish/banner/banner3d/Banner3D$2;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$2;-><init>(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    :cond_1
    return-void
.end method

.method private isEventInsideBanner(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getFaceWidth()I

    move-result v0

    .line 607
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getFaceHeight()I

    move-result v1

    .line 608
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getFaceStartLeft()I

    move-result v2

    .line 609
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getFaceStartTop()I

    move-result v3

    .line 611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadBanners(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/AdDetails;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 309
    iput-object p1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    .line 311
    if-eqz p1, :cond_b

    .line 312
    new-instance v0, Lcom/startapp/android/publish/banner/a;

    invoke-direct {v0}, Lcom/startapp/android/publish/banner/a;-><init>()V

    .line 314
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setBannerSize(Lcom/startapp/android/publish/banner/a;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 316
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v2}, Lcom/startapp/android/publish/banner/BannerOptions;->d()I

    move-result v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setMinimumWidth(I)V

    .line 317
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v2}, Lcom/startapp/android/publish/banner/BannerOptions;->e()I

    move-result v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setMinimumHeight(I)V

    .line 319
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v3, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/a;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setMinimumWidth(I)V

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v3, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/a;->b()I

    move-result v0

    invoke-static {v1, v0}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setMinimumHeight(I)V

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 328
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_2

    .line 329
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setMinimumWidth(I)V

    .line 331
    :cond_2
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_3

    .line 332
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setMinimumHeight(I)V

    .line 336
    :cond_3
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->facesNeedInit()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 337
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->initFaces(Ljava/util/List;)V

    .line 344
    :cond_4
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->addAdInformationLayout()V

    .line 347
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_5

    .line 348
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    .line 349
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 350
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 354
    :cond_5
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->animation:Z

    if-nez v0, :cond_6

    .line 355
    iput-boolean v4, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->animation:Z

    .line 356
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->startRotation()V

    .line 360
    :cond_6
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->visible:Z

    if-eqz v0, :cond_7

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setVisibility(I)V

    .line 364
    :cond_7
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    .line 365
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    invoke-interface {v0, p0}, Lcom/startapp/android/publish/banner/BannerListener;->onReceiveAd(Landroid/view/View;)V

    .line 379
    :cond_8
    :goto_0
    return-void

    .line 339
    :cond_9
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    .line 340
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/banner/BannerOptions;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a(Landroid/content/Context;Lcom/startapp/android/publish/banner/BannerOptions;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 368
    :cond_a
    const-string v0, "Banner3D"

    const/4 v1, 0x6

    const-string v2, "Banner3DError in banner screen size"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    .line 371
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    invoke-interface {v0, p0}, Lcom/startapp/android/publish/banner/BannerListener;->onFailedToReceiveAd(Landroid/view/View;)V

    goto :goto_0

    .line 375
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    .line 376
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    invoke-interface {v0, p0}, Lcom/startapp/android/publish/banner/BannerListener;->onFailedToReceiveAd(Landroid/view/View;)V

    goto :goto_0
.end method

.method private nextBanner()V
    .locals 2

    .prologue
    .line 425
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getTotalBaners()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    .line 426
    return-void
.end method

.method private prevBanner()V
    .locals 2

    .prologue
    .line 429
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getTotalBaners()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getTotalBaners()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    .line 430
    return-void
.end method

.method private rotate(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x42b40000    # 90.0f

    .line 623
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    .line 625
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 626
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->nextBanner()V

    .line 627
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    .line 630
    :cond_0
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 631
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->prevBanner()V

    .line 632
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    .line 635
    :cond_1
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->invalidate()V

    .line 636
    return-void
.end method

.method private setBannerSize(Lcom/startapp/android/publish/banner/a;)Z
    .locals 3

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/banner/BannerOptions;

    move-result-object v2

    invoke-static {v0, v1, v2, p0, p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3DSize;->a(Landroid/content/Context;Landroid/view/ViewParent;Lcom/startapp/android/publish/banner/BannerOptions;Lcom/startapp/android/publish/banner/banner3d/Banner3D;Lcom/startapp/android/publish/banner/a;)Z

    move-result v0

    return v0
.end method

.method private startRotation()V
    .locals 1

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 729
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->post(Ljava/lang/Runnable;)Z

    .line 731
    :cond_0
    return-void
.end method


# virtual methods
.method public hideBanner()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->visible:Z

    .line 192
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setVisibility(I)V

    .line 193
    return-void
.end method

.method public load()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 279
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loaded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    if-nez v0, :cond_1

    .line 280
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getAdTag()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/MetaData;->getAdRules()Lcom/startapp/android/publish/model/adrules/AdRules;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v1, v2, v0}, Lcom/startapp/android/publish/model/adrules/AdRules;->shouldDisplayAd(Lcom/startapp/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    .line 282
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->shouldDisplayAd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    new-instance v0, Lcom/startapp/android/publish/a/a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->ads:Lcom/startapp/android/publish/a/a;

    .line 284
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->ads:Lcom/startapp/android/publish/a/a;

    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    invoke-virtual {v0, v1, p0}, Lcom/startapp/android/publish/a/a;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    .line 288
    iput-boolean v3, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loading:Z

    .line 289
    iput-boolean v3, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adDisplayEventRecorded:Z

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    invoke-static {}, Lcom/startapp/android/publish/d;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-static {}, Lcom/startapp/android/publish/h/r;->a()Lcom/startapp/android/publish/h/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/h/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 735
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 736
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    .line 737
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/BannerOptions;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 738
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    .line 739
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z

    .line 741
    :cond_1
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->startRotation()V

    .line 742
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 746
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    .line 748
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 750
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 438
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 440
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->visible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->facesNeedInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->drawFrame(Landroid/graphics/Canvas;)V

    .line 443
    :cond_0
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    invoke-interface {v0, p0}, Lcom/startapp/android/publish/banner/BannerListener;->onFailedToReceiveAd(Landroid/view/View;)V

    .line 651
    :cond_0
    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 640
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loaded:Z

    .line 641
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->ads:Lcom/startapp/android/publish/a/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/a/a;->getAdInfoOverride()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->overrides:Lcom/startapp/android/publish/adinformation/b;

    .line 643
    check-cast p1, Lcom/startapp/android/publish/a/f;

    invoke-virtual {p1}, Lcom/startapp/android/publish/a/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loadBanners(Ljava/util/List;Z)V

    .line 644
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 681
    instance-of v0, p1, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;

    if-nez v0, :cond_0

    .line 682
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 724
    :goto_0
    return-void

    .line 685
    :cond_0
    check-cast p1, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;

    .line 686
    iget-boolean v0, p1, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->bIsVisible:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->visible:Z

    .line 687
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->visible:Z

    if-eqz v0, :cond_2

    .line 688
    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->getDetails()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    .line 689
    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->getRotation()F

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    .line 690
    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->isFirstRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    .line 691
    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->getCurrentImage()I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    .line 693
    iget-object v1, p1, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    .line 695
    if-eqz v1, :cond_1

    .line 696
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 697
    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 700
    :cond_1
    iget-boolean v0, p1, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->loaded:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loaded:Z

    .line 701
    iget-boolean v0, p1, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->loading:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loading:Z

    .line 702
    iget-boolean v0, p1, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->bDefaultLoad:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z

    .line 704
    iget-object v0, p1, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->overrides:Lcom/startapp/android/publish/adinformation/b;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->overrides:Lcom/startapp/android/publish/adinformation/b;

    .line 706
    iget-object v0, p1, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    .line 707
    iget-object v0, p1, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    .line 708
    iget-object v0, p1, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    .line 709
    iget-boolean v0, p1, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->adDisplayEventRecorded:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adDisplayEventRecorded:Z

    .line 711
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z

    .line 713
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->init()V

    .line 723
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 715
    :cond_3
    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$4;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$4;-><init>(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)V

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 657
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 658
    new-instance v2, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;

    invoke-direct {v2, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 659
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->visible:Z

    iput-boolean v0, v2, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->bIsVisible:Z

    .line 660
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->setDetails(Ljava/util/List;)V

    .line 661
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    invoke-virtual {v2, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->setRotation(F)V

    .line 662
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    invoke-virtual {v2, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->setFirstRotation(Z)V

    .line 663
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    invoke-virtual {v2, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->setCurrentImage(I)V

    .line 664
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    iput-object v0, v2, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    .line 665
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    iput-object v0, v2, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    .line 666
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    iput-object v0, v2, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    .line 667
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adDisplayEventRecorded:Z

    iput-boolean v0, v2, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->adDisplayEventRecorded:Z

    .line 668
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    iput-object v0, v2, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    .line 669
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loaded:Z

    iput-boolean v0, v2, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->loaded:Z

    .line 670
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loading:Z

    iput-boolean v0, v2, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->loading:Z

    .line 671
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->overrides:Lcom/startapp/android/publish/adinformation/b;

    iput-object v0, v2, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->overrides:Lcom/startapp/android/publish/adinformation/b;

    .line 672
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 673
    iget-object v3, v2, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    aput-object v0, v3, v1

    .line 672
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 675
    :cond_0
    return-object v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 557
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->isEventInsideBanner(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v0

    .line 560
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    move v0, v1

    .line 600
    goto :goto_0

    .line 562
    :pswitch_0
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->touchDown:Z

    .line 563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->startY:F

    goto :goto_1

    .line 566
    :pswitch_1
    iget v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->startY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 569
    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->touchDown:Z

    .line 571
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->startY:F

    goto :goto_1

    .line 575
    :pswitch_2
    iget-boolean v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->touchDown:Z

    if-eqz v2, :cond_2

    .line 576
    iget v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/high16 v3, 0x42340000    # 45.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 577
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->prevBanner()V

    .line 580
    :cond_3
    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->touchDown:Z

    .line 581
    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotationEnabled:Z

    .line 584
    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$3;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$3;-><init>(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)V

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/MetaData;->getSmartRedirectTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 591
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getCurrentBannerIndex()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b(Landroid/content/Context;)V

    .line 592
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    if-eqz v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    invoke-interface {v0, p0}, Lcom/startapp/android/publish/banner/BannerListener;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 754
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 755
    if-eqz p1, :cond_3

    .line 756
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    .line 757
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/BannerOptions;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 758
    :cond_0
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    .line 759
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z

    .line 761
    :cond_1
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->startRotation()V

    .line 768
    :cond_2
    :goto_0
    return-void

    .line 763
    :cond_3
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    .line 764
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotating:Z

    if-nez v0, :cond_2

    .line 765
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setBannerListener(Lcom/startapp/android/publish/banner/BannerListener;)V
    .locals 0

    .prologue
    .line 950
    iput-object p1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    .line 951
    return-void
.end method

.method public showBanner()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->visible:Z

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->setVisibility(I)V

    .line 198
    return-void
.end method
