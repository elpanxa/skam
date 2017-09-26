.class public Lcom/revmob/android/RevMobScreen;
.super Ljava/lang/Object;
.source "RevMobScreen.java"


# static fields
.field static densityDpi:I

.field static scale:F

.field static screenHeight:I

.field static screenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDensityDpi()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/revmob/android/RevMobScreen;->densityDpi:I

    return v0
.end method

.method public static getScale()F
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/revmob/android/RevMobScreen;->scale:F

    return v0
.end method

.method public static getScreenHeight()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/revmob/android/RevMobScreen;->screenHeight:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/revmob/android/RevMobScreen;->screenWidth:I

    return v0
.end method

.method public static load(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 15
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/revmob/android/RevMobScreen;->screenWidth:I

    .line 16
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/revmob/android/RevMobScreen;->screenHeight:I

    .line 17
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/revmob/android/RevMobScreen;->scale:F

    .line 18
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/revmob/android/RevMobScreen;->densityDpi:I

    .line 19
    return-void
.end method
