.class public final Lcom/google/android/gms/location/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final MapAttrs:[I

.field public static final MapAttrs_ambientEnabled:I = 0x10

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_liteMode:I = 0x6

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x7

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x8

.field public static final MapAttrs_uiScrollGestures:I = 0x9

.field public static final MapAttrs_uiTiltGestures:I = 0xa

.field public static final MapAttrs_uiZoomControls:I = 0xb

.field public static final MapAttrs_uiZoomGestures:I = 0xc

.field public static final MapAttrs_useViewLifecycle:I = 0xd

.field public static final MapAttrs_zOrderOnTop:I = 0xe

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 208
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/location/R$styleable;->AdsAttrs:[I

    .line 212
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/location/R$styleable;->LoadingImageView:[I

    .line 216
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/location/R$styleable;->MapAttrs:[I

    .line 234
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/gms/location/R$styleable;->SignInButton:[I

    return-void

    .line 208
    :array_0
    .array-data 4
        0x7f010042
        0x7f010043
        0x7f010044
    .end array-data

    .line 212
    :array_1
    .array-data 4
        0x7f010104
        0x7f010105
        0x7f010106
    .end array-data

    .line 216
    :array_2
    .array-data 4
        0x7f010108
        0x7f010109
        0x7f01010a
        0x7f01010b
        0x7f01010c
        0x7f01010d
        0x7f01010e
        0x7f01010f
        0x7f010110
        0x7f010111
        0x7f010112
        0x7f010113
        0x7f010114
        0x7f010115
        0x7f010116
        0x7f010117
        0x7f010118
    .end array-data

    .line 234
    :array_3
    .array-data 4
        0x7f010142
        0x7f010143
        0x7f010144
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
