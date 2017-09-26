.class public Lcom/startapp/android/publish/slider/sliding/b/j;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/slider/sliding/b/j$b;,
        Lcom/startapp/android/publish/slider/sliding/b/j$a;,
        Lcom/startapp/android/publish/slider/sliding/b/j$c;
    }
.end annotation


# static fields
.field static final a:Lcom/startapp/android/publish/slider/sliding/b/j$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 68
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/j$b;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/j$b;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/j;->a:Lcom/startapp/android/publish/slider/sliding/b/j$c;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/j$a;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/j$a;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/j;->a:Lcom/startapp/android/publish/slider/sliding/b/j$c;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/j;->a:Lcom/startapp/android/publish/slider/sliding/b/j$c;

    invoke-interface {v0, p0, p1}, Lcom/startapp/android/publish/slider/sliding/b/j$c;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/VelocityTracker;I)F
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/j;->a:Lcom/startapp/android/publish/slider/sliding/b/j$c;

    invoke-interface {v0, p0, p1}, Lcom/startapp/android/publish/slider/sliding/b/j$c;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
