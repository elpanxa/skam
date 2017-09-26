.class public Lcom/startapp/android/publish/banner/BannerOptions;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/banner/BannerOptions$Effect;
    }
.end annotation


# static fields
.field private static final a:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adsNumber:I

.field private delayFaceTime:I

.field private effect:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

.field private height:I

.field private heightRatio:F

.field private htmlAdsNumber:I

.field private minScale:F

.field private probability3D:I

.field private refreshRate:I

.field private rotateThroughOnStart:Z

.field private rotateThroughSpeedMult:I

.field private scalePower:I

.field private stepSize:I

.field private timeBetweenFrames:I

.field private width:I

.field private widthRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->ROTATE_3D:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    sput-object v0, Lcom/startapp/android/publish/banner/BannerOptions;->a:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x12c

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->width:I

    .line 68
    const/16 v0, 0x32

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->height:I

    .line 69
    const/16 v0, 0x5a

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->probability3D:I

    .line 72
    const/16 v0, 0x19

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->timeBetweenFrames:I

    .line 73
    const/4 v0, 0x5

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->stepSize:I

    .line 74
    const/16 v0, 0x1388

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->delayFaceTime:I

    .line 75
    iput v2, p0, Lcom/startapp/android/publish/banner/BannerOptions;->adsNumber:I

    .line 76
    const/16 v0, 0xa

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->htmlAdsNumber:I

    .line 79
    iput v1, p0, Lcom/startapp/android/publish/banner/BannerOptions;->widthRatio:F

    .line 80
    iput v1, p0, Lcom/startapp/android/publish/banner/BannerOptions;->heightRatio:F

    .line 81
    const v0, 0x3f6147ae    # 0.88f

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->minScale:F

    .line 82
    iput v2, p0, Lcom/startapp/android/publish/banner/BannerOptions;->scalePower:I

    .line 83
    sget-object v0, Lcom/startapp/android/publish/banner/BannerOptions;->a:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->effect:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->rotateThroughOnStart:Z

    .line 85
    const/4 v0, 0x2

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->rotateThroughSpeedMult:I

    .line 88
    const/16 v0, 0x7530

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->refreshRate:I

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/startapp/android/publish/banner/BannerOptions;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x12c

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->width:I

    .line 68
    const/16 v0, 0x32

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->height:I

    .line 69
    const/16 v0, 0x5a

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->probability3D:I

    .line 72
    const/16 v0, 0x19

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->timeBetweenFrames:I

    .line 73
    const/4 v0, 0x5

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->stepSize:I

    .line 74
    const/16 v0, 0x1388

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->delayFaceTime:I

    .line 75
    iput v2, p0, Lcom/startapp/android/publish/banner/BannerOptions;->adsNumber:I

    .line 76
    const/16 v0, 0xa

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->htmlAdsNumber:I

    .line 79
    iput v1, p0, Lcom/startapp/android/publish/banner/BannerOptions;->widthRatio:F

    .line 80
    iput v1, p0, Lcom/startapp/android/publish/banner/BannerOptions;->heightRatio:F

    .line 81
    const v0, 0x3f6147ae    # 0.88f

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->minScale:F

    .line 82
    iput v2, p0, Lcom/startapp/android/publish/banner/BannerOptions;->scalePower:I

    .line 83
    sget-object v0, Lcom/startapp/android/publish/banner/BannerOptions;->a:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->effect:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->rotateThroughOnStart:Z

    .line 85
    const/4 v0, 0x2

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->rotateThroughSpeedMult:I

    .line 88
    const/16 v0, 0x7530

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->refreshRate:I

    .line 94
    iget v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->width:I

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->width:I

    .line 95
    iget v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->height:I

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->height:I

    .line 96
    iget v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->probability3D:I

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->probability3D:I

    .line 97
    iget v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->timeBetweenFrames:I

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->timeBetweenFrames:I

    .line 98
    iget v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->stepSize:I

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->stepSize:I

    .line 99
    iget v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->delayFaceTime:I

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->delayFaceTime:I

    .line 100
    iget v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->adsNumber:I

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->adsNumber:I

    .line 101
    iget v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->htmlAdsNumber:I

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->htmlAdsNumber:I

    .line 102
    iget v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->widthRatio:F

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->widthRatio:F

    .line 103
    iget v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->heightRatio:F

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->heightRatio:F

    .line 104
    iget v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->minScale:F

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->minScale:F

    .line 105
    iget v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->scalePower:I

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->scalePower:I

    .line 106
    iget-object v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->effect:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->effect:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    .line 107
    iget-boolean v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->rotateThroughOnStart:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->rotateThroughOnStart:Z

    .line 108
    iget v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->rotateThroughSpeedMult:I

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->rotateThroughSpeedMult:I

    .line 109
    iget v0, p1, Lcom/startapp/android/publish/banner/BannerOptions;->refreshRate:I

    iput v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->refreshRate:I

    .line 110
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->timeBetweenFrames:I

    return v0
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/startapp/android/publish/banner/BannerOptions;->width:I

    .line 126
    iput p2, p0, Lcom/startapp/android/publish/banner/BannerOptions;->height:I

    .line 127
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->stepSize:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->delayFaceTime:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->width:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->height:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    check-cast p1, Lcom/startapp/android/publish/banner/BannerOptions;

    .line 241
    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/BannerOptions;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/BannerOptions;->f()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/BannerOptions;->g()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/BannerOptions;->g()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/BannerOptions;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/BannerOptions;->c()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/BannerOptions;->e()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/BannerOptions;->e()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/BannerOptions;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/BannerOptions;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/BannerOptions;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/BannerOptions;->a()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/BannerOptions;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/BannerOptions;->d()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/BannerOptions;->h()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/BannerOptions;->h()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/BannerOptions;->i()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/BannerOptions;->i()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 250
    const/4 v0, 0x1

    .line 253
    :cond_0
    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->adsNumber:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->htmlAdsNumber:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->refreshRate:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->probability3D:I

    return v0
.end method

.method public j()F
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->widthRatio:F

    return v0
.end method

.method public k()F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->heightRatio:F

    return v0
.end method

.method public l()F
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->minScale:F

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->scalePower:I

    return v0
.end method

.method public n()Lcom/startapp/android/publish/banner/BannerOptions$Effect;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->effect:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->rotateThroughOnStart:Z

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/startapp/android/publish/banner/BannerOptions;->rotateThroughSpeedMult:I

    return v0
.end method
