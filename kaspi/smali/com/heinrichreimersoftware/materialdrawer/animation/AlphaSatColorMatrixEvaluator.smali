.class public Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;
.super Ljava/lang/Object;
.source "AlphaSatColorMatrixEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# static fields
.field private static final MAX_BLACKER:I = 0x32


# instance fields
.field private final colorMatrix:Landroid/graphics/ColorMatrix;

.field private final elements:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->elements:[F

    .line 32
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->colorMatrix:Landroid/graphics/ColorMatrix;

    .line 33
    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 42
    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    .line 45
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v2

    .line 49
    iget-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->elements:[F

    const/16 v3, 0x12

    aput v1, v2, v3

    .line 54
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v4

    sub-float v0, v7, v0

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 55
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->elements:[F

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->elements:[F

    const/16 v4, 0x9

    iget-object v5, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->elements:[F

    const/16 v6, 0xe

    neg-float v0, v0

    aput v0, v5, v6

    aput v0, v3, v4

    aput v0, v1, v2

    .line 58
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v0, v7, v0

    .line 59
    const v1, 0x3e5a1cac    # 0.213f

    mul-float/2addr v1, v0

    .line 60
    const v2, 0x3f370a3d    # 0.715f

    mul-float/2addr v2, v0

    .line 61
    const v3, 0x3d9374bc    # 0.072f

    mul-float/2addr v0, v3

    .line 63
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->elements:[F

    const/4 v4, 0x0

    add-float v5, v1, p1

    aput v5, v3, v4

    .line 64
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->elements:[F

    const/4 v4, 0x1

    aput v2, v3, v4

    .line 65
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->elements:[F

    const/4 v4, 0x2

    aput v0, v3, v4

    .line 66
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->elements:[F

    const/4 v4, 0x5

    aput v1, v3, v4

    .line 67
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->elements:[F

    const/4 v4, 0x6

    add-float v5, v2, p1

    aput v5, v3, v4

    .line 68
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->elements:[F

    const/4 v4, 0x7

    aput v0, v3, v4

    .line 69
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->elements:[F

    const/16 v4, 0xa

    aput v1, v3, v4

    .line 70
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->elements:[F

    const/16 v3, 0xb

    aput v2, v1, v3

    .line 71
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->elements:[F

    const/16 v2, 0xc

    add-float/2addr v0, p1

    aput v0, v1, v2

    .line 73
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->colorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->elements:[F

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 74
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->colorMatrix:Landroid/graphics/ColorMatrix;

    return-object v0
.end method

.method public getColorMatrix()Landroid/graphics/ColorMatrix;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AlphaSatColorMatrixEvaluator;->colorMatrix:Landroid/graphics/ColorMatrix;

    return-object v0
.end method
