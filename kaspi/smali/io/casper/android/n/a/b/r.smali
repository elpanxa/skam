.class public Lio/casper/android/n/a/b/r;
.super Lio/casper/android/n/a/b/a/a;
.source "SnapBlobRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/a/b/a/a",
        "<",
        "Lio/casper/android/n/a/a/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private mSnap:Lio/casper/android/n/a/c/b/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/w;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lio/casper/android/n/a/b/r;->mSnap:Lio/casper/android/n/a/c/b/w;

    .line 21
    const-string v0, "id"

    invoke-virtual {p2}, Lio/casper/android/n/a/c/b/w;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lio/casper/android/n/a/b/r;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "/ph/blob"

    .line 31
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/bq/blob"

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 43
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
            "Lio/casper/android/n/a/a/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lio/casper/android/n/a/a/c;

    iget-object v1, p0, Lio/casper/android/n/a/b/r;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/n/a/b/r;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-direct {v0, v1, v2}, Lio/casper/android/n/a/a/c;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/w;)V

    return-object v0
.end method
