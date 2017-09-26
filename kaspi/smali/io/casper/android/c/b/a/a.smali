.class public Lio/casper/android/c/b/a/a;
.super Lio/casper/android/c/b/a/a/a;
.source "AddonsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/c/b/a/a/a",
        "<",
        "Lio/casper/android/c/b/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lio/casper/android/c/b/a/a/a;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, "username"

    invoke-virtual {p0, v0, p2}, Lio/casper/android/c/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "/addons"

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lio/casper/android/c/c/f/b;->POST:Lio/casper/android/c/c/f/b;

    return-object v0
.end method

.method public d()Lio/casper/android/c/c/d/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/casper/android/c/c/d/d",
            "<",
            "Lio/casper/android/c/b/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lio/casper/android/c/c/d/b;

    iget-object v1, p0, Lio/casper/android/c/b/a/a;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/c/b/b/a;

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/c/d/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
