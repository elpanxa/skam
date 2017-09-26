.class public Lio/casper/android/c/e/a/a;
.super Lio/casper/android/c/e/a/a/a;
.source "SnapchatiOSEndpointAuthRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/c/e/a/a/a",
        "<",
        "Lio/casper/android/c/e/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private mGoogleAuthManager:Lio/casper/android/l/i;

.field private mSnapchatAccount:Lio/casper/android/e/b/b;

.field private mSnapchatAccountManager:Lio/casper/android/l/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/casper/android/c/e/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lio/casper/android/c/e/a/a/a;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lio/casper/android/l/i;

    iget-object v1, p0, Lio/casper/android/c/e/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/c/e/a/a;->mGoogleAuthManager:Lio/casper/android/l/i;

    .line 31
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/c/e/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/c/e/a/a;->mSnapchatAccountManager:Lio/casper/android/l/s;

    .line 32
    iget-object v0, p0, Lio/casper/android/c/e/a/a;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/c/e/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    .line 34
    const-string v0, "endpoint"

    invoke-virtual {p0, v0, p2}, Lio/casper/android/c/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 37
    const-string v0, "timestamp"

    invoke-virtual {p0, v0, p3}, Lio/casper/android/c/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :goto_0
    iget-object v0, p0, Lio/casper/android/c/e/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "username"

    iget-object v1, p0, Lio/casper/android/c/e/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v1}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "password"

    iget-object v1, p0, Lio/casper/android/c/e/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v1}, Lio/casper/android/e/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "auth_token"

    iget-object v1, p0, Lio/casper/android/c/e/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v1}, Lio/casper/android/e/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lio/casper/android/c/e/a/a;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lio/casper/android/c/e/a/a;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v1}, Lio/casper/android/l/i;->c()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    const-string v2, "google_email"

    invoke-virtual {p0, v2, v0}, Lio/casper/android/c/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "google_password_encrypted"

    invoke-static {v0, v1}, Lio/casper/android/util/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lio/casper/android/c/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    return-void

    .line 39
    :cond_2
    const-string v0, "timestamp"

    invoke-static {}, Lio/casper/android/n/e/b;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "/snapchat/ios/endpointauth"

    return-object v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 65
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
            "Lio/casper/android/c/e/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lio/casper/android/c/c/d/b;

    iget-object v1, p0, Lio/casper/android/c/e/a/a;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/c/e/b/a;

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/c/d/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
