.class public abstract Lcom/flipboard/bottomsheet/BaseViewTransformer;
.super Ljava/lang/Object;
.source "BaseViewTransformer.java"

# interfaces
.implements Lcom/flipboard/bottomsheet/ViewTransformer;


# static fields
.field public static final MAX_DIM_ALPHA:F = 0.7f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDimAlpha(FFFLcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)F
    .locals 2

    .prologue
    .line 14
    div-float v0, p1, p2

    .line 15
    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    return v0
.end method
