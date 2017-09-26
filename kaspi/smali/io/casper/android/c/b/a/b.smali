.class public Lio/casper/android/c/b/a/b;
.super Lio/casper/android/c/b/a/a/a;
.source "ConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/c/b/a/a/a",
        "<",
        "Lio/casper/android/c/b/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field private mSnapchatAccountManager:Lio/casper/android/l/s;

.field private mUpdateManager:Lio/casper/android/l/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lio/casper/android/c/b/a/a/a;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lio/casper/android/l/x;

    iget-object v1, p0, Lio/casper/android/c/b/a/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/c/b/a/b;->mUpdateManager:Lio/casper/android/l/x;

    .line 23
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/c/b/a/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/c/b/a/b;->mSnapchatAccountManager:Lio/casper/android/l/s;

    .line 25
    const-string v0, "configuration_checksum"

    iget-object v1, p0, Lio/casper/android/c/b/a/b;->mUpdateManager:Lio/casper/android/l/x;

    invoke-virtual {v1}, Lio/casper/android/l/x;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v0, "installer_package"

    iget-object v1, p0, Lio/casper/android/c/b/a/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/c/b/a/b;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lio/casper/android/c/b/a/b;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    const-string v1, "snapchat_username"

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/casper/android/c/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "/config"

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
            "Lio/casper/android/c/b/b/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lio/casper/android/c/c/d/b;

    iget-object v1, p0, Lio/casper/android/c/b/a/b;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/c/b/b/c;

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/c/d/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
