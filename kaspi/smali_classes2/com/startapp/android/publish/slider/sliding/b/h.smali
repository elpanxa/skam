.class public Lcom/startapp/android/publish/slider/sliding/b/h;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/slider/sliding/b/h$b;,
        Lcom/startapp/android/publish/slider/sliding/b/h$a;,
        Lcom/startapp/android/publish/slider/sliding/b/h$c;
    }
.end annotation


# static fields
.field static final a:Lcom/startapp/android/publish/slider/sliding/b/h$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 109
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/h$b;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/h$b;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/h;->a:Lcom/startapp/android/publish/slider/sliding/b/h$c;

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/h$a;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/h$a;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/h;->a:Lcom/startapp/android/publish/slider/sliding/b/h$c;

    goto :goto_0
.end method

.method public static a(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static a(Landroid/view/MotionEvent;I)I
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/h;->a:Lcom/startapp/android/publish/slider/sliding/b/h$c;

    invoke-interface {v0, p0, p1}, Lcom/startapp/android/publish/slider/sliding/b/h$c;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;)I
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;I)I
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/h;->a:Lcom/startapp/android/publish/slider/sliding/b/h$c;

    invoke-interface {v0, p0, p1}, Lcom/startapp/android/publish/slider/sliding/b/h$c;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/h;->a:Lcom/startapp/android/publish/slider/sliding/b/h$c;

    invoke-interface {v0, p0, p1}, Lcom/startapp/android/publish/slider/sliding/b/h$c;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/h;->a:Lcom/startapp/android/publish/slider/sliding/b/h$c;

    invoke-interface {v0, p0}, Lcom/startapp/android/publish/slider/sliding/b/h$c;->a(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/h;->a:Lcom/startapp/android/publish/slider/sliding/b/h$c;

    invoke-interface {v0, p0, p1}, Lcom/startapp/android/publish/slider/sliding/b/h$c;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
