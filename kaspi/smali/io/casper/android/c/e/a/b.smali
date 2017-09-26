.class public Lio/casper/android/c/e/a/b;
.super Lio/casper/android/c/e/a/a/a;
.source "SnapchatiOSLoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/c/e/a/a/a",
        "<",
        "Lio/casper/android/c/e/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private mGoogleAuthManager:Lio/casper/android/l/i;

.field private mSnapchatAccountManager:Lio/casper/android/l/s;

.field private mSnapchatManager:Lio/casper/android/l/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lio/casper/android/c/e/a/a/a;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/c/e/a/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/c/e/a/b;->mSnapchatManager:Lio/casper/android/l/t;

    .line 26
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/c/e/a/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/c/e/a/b;->mSnapchatAccountManager:Lio/casper/android/l/s;

    .line 27
    new-instance v0, Lio/casper/android/l/i;

    iget-object v1, p0, Lio/casper/android/c/e/a/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/c/e/a/b;->mGoogleAuthManager:Lio/casper/android/l/i;

    .line 29
    const-string v0, "username"

    invoke-virtual {p0, v0, p2}, Lio/casper/android/c/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "password"

    invoke-virtual {p0, v0, p3}, Lio/casper/android/c/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "timestamp"

    invoke-virtual {p0, v0, p4}, Lio/casper/android/c/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const-string v0, "pre_auth_token"

    invoke-virtual {p0, v0, p5}, Lio/casper/android/c/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lio/casper/android/c/e/a/b;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->b()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lio/casper/android/c/e/a/b;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v1}, Lio/casper/android/l/s;->e()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    const-string v2, "dtoken1i"

    invoke-virtual {p0, v2, v0}, Lio/casper/android/c/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "dtoken1v"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1
    const-string v0, "snapchat_version"

    iget-object v1, p0, Lio/casper/android/c/e/a/b;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1}, Lio/casper/android/l/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "snapchat_user_agent"

    iget-object v1, p0, Lio/casper/android/c/e/a/b;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1}, Lio/casper/android/l/t;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lio/casper/android/c/e/a/b;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lio/casper/android/c/e/a/b;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v1}, Lio/casper/android/l/i;->c()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 52
    const-string v2, "google_email"

    invoke-virtual {p0, v2, v0}, Lio/casper/android/c/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "google_password_encrypted"

    invoke-static {v0, v1}, Lio/casper/android/util/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lio/casper/android/c/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "/snapchat/ios/login"

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
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
            "Lio/casper/android/c/e/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lio/casper/android/c/c/d/b;

    iget-object v1, p0, Lio/casper/android/c/e/a/b;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/c/e/b/b;

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/c/d/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
