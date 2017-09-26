.class public Lcom/revmob/ads/internal/ShowAnimationConfiguration;
.super Lcom/revmob/ads/internal/AnimationConfiguration;
.source "ShowAnimationConfiguration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/revmob/ads/internal/AnimationConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public createClockwise()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move v5, v3

    move v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 62
    return-object v0
.end method

.method public createCounterClockwise()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/RotateAnimation;-><init>(FF)V

    .line 68
    return-object v0
.end method

.method public createFadeIn()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 13
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object v0
.end method

.method public createFadeOut()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object v0
.end method

.method public createSlideDown()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 30
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40000000    # -2.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    return-object v0
.end method

.method public createSlideLeft()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 44
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x40000000    # 2.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    return-object v0
.end method

.method public createSlideRight()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 37
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x40000000    # -2.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    return-object v0
.end method

.method public createSlideUp()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 23
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    return-object v0
.end method

.method public createZoomIn()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 51
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    return-object v0
.end method

.method public createZoomOut()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 56
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    return-object v0
.end method
