.class public Lcom/startapp/android/publish/slider/sliding/b/q;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/slider/sliding/b/q$b;,
        Lcom/startapp/android/publish/slider/sliding/b/q$a;,
        Lcom/startapp/android/publish/slider/sliding/b/q$d;,
        Lcom/startapp/android/publish/slider/sliding/b/q$c;
    }
.end annotation


# static fields
.field static final a:Lcom/startapp/android/publish/slider/sliding/b/q$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 67
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/q$b;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/q$b;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/q;->a:Lcom/startapp/android/publish/slider/sliding/b/q$c;

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 69
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/q$a;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/q$a;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/q;->a:Lcom/startapp/android/publish/slider/sliding/b/q$c;

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/q$d;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/q$d;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/q;->a:Lcom/startapp/android/publish/slider/sliding/b/q$c;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/q;->a:Lcom/startapp/android/publish/slider/sliding/b/q$c;

    invoke-interface {v0, p0, p1}, Lcom/startapp/android/publish/slider/sliding/b/q$c;->a(Landroid/view/ViewGroup;Z)V

    .line 120
    return-void
.end method
