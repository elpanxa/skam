.class public Lio/casper/android/n/a/b/s;
.super Lio/casper/android/n/a/b/a/a;
.source "SnapTagRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/a/b/a/a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mSavedMediaManager:Lio/casper/android/l/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Lio/casper/android/l/q;

    iget-object v1, p0, Lio/casper/android/n/a/b/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/n/a/b/s;->mSavedMediaManager:Lio/casper/android/l/q;

    .line 19
    iget-object v0, p0, Lio/casper/android/n/a/b/s;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v0, :cond_0

    .line 20
    const-string v0, "image"

    iget-object v1, p0, Lio/casper/android/n/a/b/s;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v1}, Lio/casper/android/e/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "/bq/snaptag_download"

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 37
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "unknown"

    .line 45
    iget-object v1, p0, Lio/casper/android/n/a/b/s;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v1, :cond_0

    .line 46
    iget-object v0, p0, Lio/casper/android/n/a/b/s;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_0
    new-instance v1, Lio/casper/android/c/c/d/a;

    iget-object v2, p0, Lio/casper/android/n/a/b/s;->mSavedMediaManager:Lio/casper/android/l/q;

    invoke-virtual {v2, v0}, Lio/casper/android/l/q;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/casper/android/c/c/d/a;-><init>(Ljava/io/File;)V

    return-object v1
.end method
