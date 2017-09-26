.class public Lcom/startapp/android/publish/slider/sliding/b/f;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/slider/sliding/b/f$c;,
        Lcom/startapp/android/publish/slider/sliding/b/f$b;,
        Lcom/startapp/android/publish/slider/sliding/b/f$a;,
        Lcom/startapp/android/publish/slider/sliding/b/f$d;
    }
.end annotation


# static fields
.field static final a:Lcom/startapp/android/publish/slider/sliding/b/f$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 167
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/f$c;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/f$c;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/f;->a:Lcom/startapp/android/publish/slider/sliding/b/f$d;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/f$a;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/f$a;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/f;->a:Lcom/startapp/android/publish/slider/sliding/b/f$d;

    goto :goto_0
.end method

.method public static a(Landroid/view/KeyEvent;)V
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/f;->a:Lcom/startapp/android/publish/slider/sliding/b/f$d;

    invoke-interface {v0, p0}, Lcom/startapp/android/publish/slider/sliding/b/f$d;->a(Landroid/view/KeyEvent;)V

    .line 197
    return-void
.end method
