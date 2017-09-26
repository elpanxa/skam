.class Lcom/startapp/android/publish/slider/sliding/b/a$c;
.super Lcom/startapp/android/publish/slider/sliding/b/a$a;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/slider/sliding/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/startapp/android/publish/slider/sliding/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/view/View;)Lcom/startapp/android/publish/slider/sliding/a/d;
    .locals 2

    .prologue
    .line 276
    invoke-static {p1, p2}, Lcom/startapp/android/publish/slider/sliding/b/c;->a(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    .line 278
    if-eqz v1, :cond_0

    .line 279
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/a/d;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/d;-><init>(Ljava/lang/Object;)V

    .line 281
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/startapp/android/publish/slider/sliding/b/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/a$c$1;

    invoke-direct {v0, p0, p1}, Lcom/startapp/android/publish/slider/sliding/b/a$c$1;-><init>(Lcom/startapp/android/publish/slider/sliding/b/a$c;Lcom/startapp/android/publish/slider/sliding/b/a;)V

    invoke-static {v0}, Lcom/startapp/android/publish/slider/sliding/b/c;->a(Lcom/startapp/android/publish/slider/sliding/b/c$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 287
    invoke-static {p1, p2, p3, p4}, Lcom/startapp/android/publish/slider/sliding/b/c;->a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
