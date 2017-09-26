.class public Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;
.super Ljava/lang/Object;
.source "AnimatableColorMatrixColorFilter.java"


# instance fields
.field private mFilter:Landroid/graphics/ColorMatrixColorFilter;


# direct methods
.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;->setColorMatrix(Landroid/graphics/ColorMatrix;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getColorFilter()Landroid/graphics/ColorMatrixColorFilter;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;->mFilter:Landroid/graphics/ColorMatrixColorFilter;

    return-object v0
.end method

.method public setColorMatrix(Landroid/graphics/ColorMatrix;)V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;->mFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 19
    return-void
.end method
