.class public Lio/casper/android/l/d;
.super Lio/casper/android/l/a/a;
.source "AuthManager.java"


# static fields
.field public static final PREFERENCE_AUTH_SERVER:Ljava/lang/String; = "pref_auth_server"

.field private static final TAG:Ljava/lang/String; = "AuthManager"


# instance fields
.field private mBitStampManager:Lio/casper/android/l/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lio/casper/android/l/e;

    iget-object v1, p0, Lio/casper/android/l/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/d;->mBitStampManager:Lio/casper/android/l/e;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lio/casper/android/c/b/b/a/a/c/a;)V
    .locals 3

    .prologue
    .line 32
    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/c/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/c/a;->b()Lio/casper/android/c/b/b/a/a/c/b;

    move-result-object v1

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    invoke-virtual {p0, v0}, Lio/casper/android/l/d;->a(Ljava/lang/String;)V

    .line 41
    :cond_0
    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/c/b;->a()Z

    move-result v0

    .line 44
    iget-object v1, p0, Lio/casper/android/l/d;->mBitStampManager:Lio/casper/android/l/e;

    invoke-virtual {v1, v0}, Lio/casper/android/l/e;->a(Z)V

    .line 50
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    const-string v0, "pref_auth_server"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method
