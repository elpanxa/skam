.class public Lio/casper/android/n/a/b/y;
.super Lio/casper/android/n/a/b/a/a;
.source "UploadMediaRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/a/b/a/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/a/b/b/d;)V
    .locals 4

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;-><init>(Landroid/content/Context;)V

    .line 17
    const-string v0, "type"

    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/d;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v0, "media_id"

    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v0, "data"

    new-instance v1, Lio/casper/android/c/c/e/a;

    const-string v2, "application/octet-stream"

    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/d;->b()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/casper/android/c/c/e/a;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/y;->a(Ljava/lang/String;Lio/casper/android/c/c/e/a;)V

    .line 21
    invoke-virtual {p0}, Lio/casper/android/n/a/b/y;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    const-string v1, "zipped"

    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lio/casper/android/n/a/b/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void

    .line 22
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lio/casper/android/n/a/b/y;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "/ph/upload"

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/bq/upload"

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lio/casper/android/c/c/f/b;->POST:Lio/casper/android/c/c/f/b;

    return-object v0
.end method

.method public d()Lio/casper/android/c/c/d/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/casper/android/c/c/d/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lio/casper/android/c/c/d/c;

    invoke-direct {v0}, Lio/casper/android/c/c/d/c;-><init>()V

    return-object v0
.end method
