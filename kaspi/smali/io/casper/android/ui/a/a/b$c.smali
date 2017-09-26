.class public Lio/casper/android/ui/a/a/b$c;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/ui/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private angle:F

.field private scale:F

.field private scaleX:F

.field private scaleY:F

.field private updateAngle:Z

.field private updateScale:Z

.field private updateScaleXY:Z

.field private xOff:F

.field private yOff:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/casper/android/ui/a/a/b$c;)Z
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$c;->updateScale:Z

    return v0
.end method

.method static synthetic b(Lio/casper/android/ui/a/a/b$c;)Z
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$c;->updateScaleXY:Z

    return v0
.end method

.method static synthetic c(Lio/casper/android/ui/a/a/b$c;)Z
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$c;->updateAngle:Z

    return v0
.end method

.method static synthetic d(Lio/casper/android/ui/a/a/b$c;)F
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lio/casper/android/ui/a/a/b$c;->scale:F

    return v0
.end method

.method static synthetic e(Lio/casper/android/ui/a/a/b$c;)F
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lio/casper/android/ui/a/a/b$c;->xOff:F

    return v0
.end method

.method static synthetic f(Lio/casper/android/ui/a/a/b$c;)F
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lio/casper/android/ui/a/a/b$c;->yOff:F

    return v0
.end method

.method static synthetic g(Lio/casper/android/ui/a/a/b$c;)F
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lio/casper/android/ui/a/a/b$c;->scaleX:F

    return v0
.end method

.method static synthetic h(Lio/casper/android/ui/a/a/b$c;)F
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lio/casper/android/ui/a/a/b$c;->scaleY:F

    return v0
.end method

.method static synthetic i(Lio/casper/android/ui/a/a/b$c;)F
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lio/casper/android/ui/a/a/b$c;->angle:F

    return v0
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Lio/casper/android/ui/a/a/b$c;->xOff:F

    return v0
.end method

.method protected a(FFFFFF)V
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 936
    iput p1, p0, Lio/casper/android/ui/a/a/b$c;->xOff:F

    .line 937
    iput p2, p0, Lio/casper/android/ui/a/a/b$c;->yOff:F

    .line 938
    cmpl-float v1, p3, v2

    if-nez v1, :cond_0

    move p3, v0

    :cond_0
    iput p3, p0, Lio/casper/android/ui/a/a/b$c;->scale:F

    .line 939
    cmpl-float v1, p4, v2

    if-nez v1, :cond_1

    move p4, v0

    :cond_1
    iput p4, p0, Lio/casper/android/ui/a/a/b$c;->scaleX:F

    .line 940
    cmpl-float v1, p5, v2

    if-nez v1, :cond_2

    :goto_0
    iput v0, p0, Lio/casper/android/ui/a/a/b$c;->scaleY:F

    .line 941
    iput p6, p0, Lio/casper/android/ui/a/a/b$c;->angle:F

    .line 942
    return-void

    :cond_2
    move v0, p5

    .line 940
    goto :goto_0
.end method

.method public a(FFZFZFFZF)V
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 921
    iput p1, p0, Lio/casper/android/ui/a/a/b$c;->xOff:F

    .line 922
    iput p2, p0, Lio/casper/android/ui/a/a/b$c;->yOff:F

    .line 923
    iput-boolean p3, p0, Lio/casper/android/ui/a/a/b$c;->updateScale:Z

    .line 924
    cmpl-float v1, p4, v2

    if-nez v1, :cond_0

    move p4, v0

    :cond_0
    iput p4, p0, Lio/casper/android/ui/a/a/b$c;->scale:F

    .line 925
    iput-boolean p5, p0, Lio/casper/android/ui/a/a/b$c;->updateScaleXY:Z

    .line 926
    cmpl-float v1, p6, v2

    if-nez v1, :cond_1

    move p6, v0

    :cond_1
    iput p6, p0, Lio/casper/android/ui/a/a/b$c;->scaleX:F

    .line 927
    cmpl-float v1, p7, v2

    if-nez v1, :cond_2

    :goto_0
    iput v0, p0, Lio/casper/android/ui/a/a/b$c;->scaleY:F

    .line 928
    iput-boolean p8, p0, Lio/casper/android/ui/a/a/b$c;->updateAngle:Z

    .line 929
    iput p9, p0, Lio/casper/android/ui/a/a/b$c;->angle:F

    .line 930
    return-void

    :cond_2
    move v0, p7

    .line 927
    goto :goto_0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 949
    iget v0, p0, Lio/casper/android/ui/a/a/b$c;->yOff:F

    return v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 953
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$c;->updateScale:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lio/casper/android/ui/a/a/b$c;->scale:F

    goto :goto_0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 958
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$c;->updateScaleXY:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lio/casper/android/ui/a/a/b$c;->scaleX:F

    goto :goto_0
.end method

.method public e()F
    .locals 1

    .prologue
    .line 963
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$c;->updateScaleXY:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lio/casper/android/ui/a/a/b$c;->scaleY:F

    goto :goto_0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 967
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$c;->updateAngle:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lio/casper/android/ui/a/a/b$c;->angle:F

    goto :goto_0
.end method
