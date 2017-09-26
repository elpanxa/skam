.class public Lio/casper/android/c/b/a/e;
.super Lio/casper/android/c/b/a/a/a;
.source "UpdatesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/c/b/a/a/a",
        "<",
        "Lio/casper/android/c/b/b/f;",
        ">;"
    }
.end annotation


# instance fields
.field private mSettingsManager:Lio/casper/android/l/r;

.field private mUpdateManager:Lio/casper/android/l/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lio/casper/android/c/b/a/a/a;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lio/casper/android/l/r;

    iget-object v1, p0, Lio/casper/android/c/b/a/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/c/b/a/e;->mSettingsManager:Lio/casper/android/l/r;

    .line 23
    new-instance v0, Lio/casper/android/l/x;

    iget-object v1, p0, Lio/casper/android/c/b/a/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/c/b/a/e;->mUpdateManager:Lio/casper/android/l/x;

    .line 25
    iget-object v0, p0, Lio/casper/android/c/b/a/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/casper/android/util/a;->b(Landroid/content/Context;)I

    move-result v0

    .line 27
    const-string v1, "version_code"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/casper/android/c/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "configuration_checksum"

    iget-object v1, p0, Lio/casper/android/c/b/a/e;->mUpdateManager:Lio/casper/android/l/x;

    invoke-virtual {v1}, Lio/casper/android/l/x;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lio/casper/android/c/b/a/e;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "beta_versions"

    const-string v1, "1"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "/updates"

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 42
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
            "Lio/casper/android/c/b/b/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lio/casper/android/c/c/d/b;

    iget-object v1, p0, Lio/casper/android/c/b/a/e;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/c/b/b/f;

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/c/d/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
