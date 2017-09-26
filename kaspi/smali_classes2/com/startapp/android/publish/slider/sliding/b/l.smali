.class public Lcom/startapp/android/publish/slider/sliding/b/l;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/slider/sliding/b/l$f;,
        Lcom/startapp/android/publish/slider/sliding/b/l$e;,
        Lcom/startapp/android/publish/slider/sliding/b/l$d;,
        Lcom/startapp/android/publish/slider/sliding/b/l$c;,
        Lcom/startapp/android/publish/slider/sliding/b/l$b;,
        Lcom/startapp/android/publish/slider/sliding/b/l$a;,
        Lcom/startapp/android/publish/slider/sliding/b/l$g;
    }
.end annotation


# static fields
.field static final a:Lcom/startapp/android/publish/slider/sliding/b/l$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 399
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 400
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/l$f;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/l$f;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/l;->a:Lcom/startapp/android/publish/slider/sliding/b/l$g;

    .line 412
    :goto_0
    return-void

    .line 401
    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 402
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/l$e;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/l$e;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/l;->a:Lcom/startapp/android/publish/slider/sliding/b/l$g;

    goto :goto_0

    .line 403
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 404
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/l$d;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/l$d;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/l;->a:Lcom/startapp/android/publish/slider/sliding/b/l$g;

    goto :goto_0

    .line 405
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 406
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/l$c;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/l$c;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/l;->a:Lcom/startapp/android/publish/slider/sliding/b/l$g;

    goto :goto_0

    .line 407
    :cond_3
    const/16 v1, 0x9

    if-lt v0, v1, :cond_4

    .line 408
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/l$b;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/l$b;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/l;->a:Lcom/startapp/android/publish/slider/sliding/b/l$g;

    goto :goto_0

    .line 410
    :cond_4
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/l$a;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/l$a;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/l;->a:Lcom/startapp/android/publish/slider/sliding/b/l$g;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 619
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/l;->a:Lcom/startapp/android/publish/slider/sliding/b/l$g;

    invoke-interface {v0, p0}, Lcom/startapp/android/publish/slider/sliding/b/l$g;->a(Landroid/view/View;)V

    .line 620
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/startapp/android/publish/slider/sliding/b/a;)V
    .locals 1

    .prologue
    .line 583
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/l;->a:Lcom/startapp/android/publish/slider/sliding/b/l$g;

    invoke-interface {v0, p0, p1}, Lcom/startapp/android/publish/slider/sliding/b/l$g;->a(Landroid/view/View;Lcom/startapp/android/publish/slider/sliding/b/a;)V

    .line 584
    return-void
.end method

.method public static b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 878
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/l;->a:Lcom/startapp/android/publish/slider/sliding/b/l$g;

    invoke-interface {v0, p0}, Lcom/startapp/android/publish/slider/sliding/b/l$g;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 910
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/l;->a:Lcom/startapp/android/publish/slider/sliding/b/l$g;

    invoke-interface {v0, p0}, Lcom/startapp/android/publish/slider/sliding/b/l$g;->c(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method
