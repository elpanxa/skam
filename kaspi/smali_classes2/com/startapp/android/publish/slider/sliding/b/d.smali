.class public Lcom/startapp/android/publish/slider/sliding/b/d;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/slider/sliding/b/d$c;,
        Lcom/startapp/android/publish/slider/sliding/b/d$b;,
        Lcom/startapp/android/publish/slider/sliding/b/d$a;
    }
.end annotation


# static fields
.field static final a:Lcom/startapp/android/publish/slider/sliding/b/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/d$c;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/d$c;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/d;->a:Lcom/startapp/android/publish/slider/sliding/b/d$a;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/d$b;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/d$b;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/d;->a:Lcom/startapp/android/publish/slider/sliding/b/d$a;

    goto :goto_0
.end method

.method public static a(II)I
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/d;->a:Lcom/startapp/android/publish/slider/sliding/b/d$a;

    invoke-interface {v0, p0, p1}, Lcom/startapp/android/publish/slider/sliding/b/d$a;->a(II)I

    move-result v0

    return v0
.end method
