.class public final Lcom/gc/materialdesign/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gc/materialdesign/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CustomAttributes:[I

.field public static final CustomAttributes_animate:I = 0xd

.field public static final CustomAttributes_check:I = 0x8

.field public static final CustomAttributes_checkBoxSize:I = 0x9

.field public static final CustomAttributes_clickAfterRipple:I = 0xf

.field public static final CustomAttributes_iconDrawable:I = 0xb

.field public static final CustomAttributes_iconSize:I = 0xc

.field public static final CustomAttributes_max:I = 0x3

.field public static final CustomAttributes_min:I = 0x4

.field public static final CustomAttributes_progress:I = 0x6

.field public static final CustomAttributes_ringWidth:I = 0x7

.field public static final CustomAttributes_rippleBorderRadius:I = 0xe

.field public static final CustomAttributes_rippleColor:I = 0x0

.field public static final CustomAttributes_rippleSpeed:I = 0x1

.field public static final CustomAttributes_showNumberIndicator:I = 0x2

.field public static final CustomAttributes_thumbSize:I = 0xa

.field public static final CustomAttributes_value:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gc/materialdesign/R$styleable;->CustomAttributes:[I

    return-void

    :array_0
    .array-data 4
        0x7f0100d8
        0x7f0100d9
        0x7f0100da
        0x7f0100db
        0x7f0100dc
        0x7f0100dd
        0x7f0100de
        0x7f0100df
        0x7f0100e0
        0x7f0100e1
        0x7f0100e2
        0x7f0100e3
        0x7f0100e4
        0x7f0100e5
        0x7f0100e6
        0x7f0100e7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
