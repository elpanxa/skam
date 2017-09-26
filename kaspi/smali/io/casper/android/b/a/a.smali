.class public Lio/casper/android/b/a/a;
.super Lio/casper/android/b/a/a/a;
.source "AppLaunchEvent.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lio/casper/android/b/a/a/a;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v0, "App Launch"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->d(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lio/casper/android/b/a/a;
    .locals 2

    .prologue
    .line 16
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 19
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const-string v0, "Normal Launch"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->e(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 27
    :goto_0
    return-object p0

    .line 21
    :cond_0
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    const-string v0, "Share via App"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->e(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    goto :goto_0

    .line 24
    :cond_1
    const-string v0, "Other"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->e(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    goto :goto_0
.end method
