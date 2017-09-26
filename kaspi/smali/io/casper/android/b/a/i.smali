.class public Lio/casper/android/b/a/i;
.super Lio/casper/android/b/a/a/a;
.source "ResponseCodeEvent.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lio/casper/android/b/a/a/a;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "Response Code"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->d(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 11
    return-void
.end method


# virtual methods
.method public a(I)Lio/casper/android/b/a/i;
    .locals 1

    .prologue
    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/b/a/i;->e(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 20
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lio/casper/android/b/a/i;
    .locals 0

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lio/casper/android/b/a/i;->c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 15
    return-object p0
.end method
