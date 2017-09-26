.class public Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/slider/sliding/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field b:F

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 1494
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1480
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->a:I

    .line 1495
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1486
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1480
    iput v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->a:I

    .line 1488
    invoke-static {}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->d()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1489
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->a:I

    .line 1490
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1491
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1508
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1480
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->a:I

    .line 1509
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1512
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1480
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->a:I

    .line 1513
    return-void
.end method

.method public constructor <init>(Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;)V
    .locals 1

    .prologue
    .line 1503
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1480
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->a:I

    .line 1504
    iget v0, p1, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->a:I

    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->a:I

    .line 1505
    return-void
.end method
