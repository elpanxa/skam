.class public Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/startapp/android/publish/h/f$a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/startapp/android/publish/model/AdDetails;

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Ljava/lang/Boolean;

.field private f:Lcom/startapp/android/publish/h/s;

.field private g:Lcom/startapp/android/publish/banner/banner3d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace$1;

    invoke-direct {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace$1;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/startapp/android/publish/model/AdDetails;Lcom/startapp/android/publish/banner/BannerOptions;Lcom/startapp/android/publish/h/s;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->c:Landroid/graphics/Bitmap;

    .line 32
    iput-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->d:Landroid/graphics/Bitmap;

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->e:Ljava/lang/Boolean;

    .line 36
    iput-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->g:Lcom/startapp/android/publish/banner/banner3d/a;

    .line 39
    iput-object p3, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a:Lcom/startapp/android/publish/model/AdDetails;

    .line 40
    iput-object p5, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/startapp/android/publish/h/s;

    .line 41
    invoke-virtual {p0, p1, p4, p2}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a(Landroid/content/Context;Lcom/startapp/android/publish/banner/BannerOptions;Landroid/view/ViewGroup;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->c:Landroid/graphics/Bitmap;

    .line 32
    iput-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->d:Landroid/graphics/Bitmap;

    .line 33
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->e:Ljava/lang/Boolean;

    .line 36
    iput-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->g:Lcom/startapp/android/publish/banner/banner3d/a;

    .line 180
    const-class v0, Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/AdDetails;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a:Lcom/startapp/android/publish/model/AdDetails;

    .line 182
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    .line 183
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 184
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 185
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->c:Landroid/graphics/Bitmap;

    .line 186
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->d:Landroid/graphics/Bitmap;

    .line 187
    new-array v0, v2, [Z

    .line 188
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 189
    aget-boolean v0, v0, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->e:Ljava/lang/Boolean;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/h/s;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/startapp/android/publish/h/s;

    .line 191
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 118
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 119
    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->g:Lcom/startapp/android/publish/banner/banner3d/a;

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->d:Landroid/graphics/Bitmap;

    .line 100
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->d:Landroid/graphics/Bitmap;

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/startapp/android/publish/model/AdDetails;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a:Lcom/startapp/android/publish/model/AdDetails;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const-string v0, "Banner3DFace"

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending Impression: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/model/AdDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getTrackingUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/startapp/android/publish/h/s;

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 141
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->e:Ljava/lang/Boolean;

    .line 143
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/startapp/android/publish/banner/BannerOptions;Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    .line 61
    invoke-virtual {p2}, Lcom/startapp/android/publish/banner/BannerOptions;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-static {p1, v0}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v0

    .line 64
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p2}, Lcom/startapp/android/publish/banner/BannerOptions;->d()I

    move-result v2

    invoke-static {p1, v2}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Lcom/startapp/android/publish/banner/BannerOptions;->j()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/startapp/android/publish/banner/BannerOptions;->e()I

    move-result v3

    invoke-static {p1, v3}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/startapp/android/publish/banner/BannerOptions;->k()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    .line 69
    new-instance v1, Lcom/startapp/android/publish/banner/banner3d/a;

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p2}, Lcom/startapp/android/publish/banner/BannerOptions;->d()I

    move-result v3

    invoke-virtual {p2}, Lcom/startapp/android/publish/banner/BannerOptions;->e()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v1, p1, v2}, Lcom/startapp/android/publish/banner/banner3d/a;-><init>(Landroid/content/Context;Landroid/graphics/Point;)V

    iput-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->g:Lcom/startapp/android/publish/banner/banner3d/a;

    .line 72
    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->g:Lcom/startapp/android/publish/banner/banner3d/a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/AdDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/banner/banner3d/a;->setText(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->g:Lcom/startapp/android/publish/banner/banner3d/a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/AdDetails;->getRating()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/banner/banner3d/a;->setRating(F)V

    .line 74
    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->g:Lcom/startapp/android/publish/banner/banner3d/a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/AdDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/banner/banner3d/a;->setDescription(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->g:Lcom/startapp/android/publish/banner/banner3d/a;

    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/AdDetails;->isCPE()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/banner/banner3d/a;->setButtonText(Z)V

    .line 76
    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->g:Lcom/startapp/android/publish/banner/banner3d/a;

    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0, v0}, Lcom/startapp/android/publish/banner/banner3d/a;->a(Landroid/graphics/Bitmap;II)V

    .line 86
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->g:Lcom/startapp/android/publish/banner/banner3d/a;

    invoke-virtual {p3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->g:Lcom/startapp/android/publish/banner/banner3d/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/banner/banner3d/a;->setVisibility(I)V

    .line 92
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->c()V

    .line 93
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->g:Lcom/startapp/android/publish/banner/banner3d/a;

    const v2, 0x1080093

    invoke-virtual {v1, v2, v0, v0}, Lcom/startapp/android/publish/banner/banner3d/a;->a(III)V

    .line 81
    new-instance v0, Lcom/startapp/android/publish/h/f;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/AdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/startapp/android/publish/h/f;-><init>(Ljava/lang/String;Lcom/startapp/android/publish/h/f$a;I)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/h/f;->a()V

    .line 82
    const-string v0, "Banner3DFace"

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Banner Face Image Async Request: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/model/AdDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;I)V
    .locals 1

    .prologue
    .line 127
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->g:Lcom/startapp/android/publish/banner/banner3d/a;

    if-eqz v0, :cond_0

    .line 128
    iput-object p1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->c:Landroid/graphics/Bitmap;

    .line 129
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->g:Lcom/startapp/android/publish/banner/banner3d/a;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/banner/banner3d/a;->setImage(Landroid/graphics/Bitmap;)V

    .line 130
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->c()V

    .line 132
    :cond_0
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getIntentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/AdDetails;->getIntentDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/startapp/android/publish/h/s;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/startapp/android/publish/h/s;)V

    .line 158
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->isSmartRedirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getTrackingClickUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/startapp/android/publish/h/s;

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getSmartRedirectTimeout()J

    move-result-wide v6

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/h/s;J)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/AdDetails;->getTrackingClickUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/startapp/android/publish/h/s;

    invoke-static {p1, v0, v1, v2}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 171
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 174
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 175
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 176
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/startapp/android/publish/h/s;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 177
    return-void
.end method
