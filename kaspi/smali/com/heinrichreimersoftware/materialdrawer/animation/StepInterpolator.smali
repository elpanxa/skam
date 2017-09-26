.class public Lcom/heinrichreimersoftware/materialdrawer/animation/StepInterpolator;
.super Ljava/lang/Object;
.source "StepInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private steps:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/StepInterpolator;->steps:I

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/StepInterpolator;->steps:I

    .line 27
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/StepInterpolator;->steps:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/StepInterpolator;->steps:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getSteps()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/StepInterpolator;->steps:I

    return v0
.end method

.method public setSteps(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/StepInterpolator;->steps:I

    .line 40
    return-void
.end method
