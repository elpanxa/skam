.class public Lio/casper/android/c/b/a/d;
.super Lio/casper/android/c/b/a/a/a;
.source "SnapchatClientAuthSignRequestRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/c/b/a/a/a",
        "<",
        "Lio/casper/android/c/b/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field private mSnapchatManager:Lio/casper/android/l/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lio/casper/android/c/b/a/a/a;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/c/b/a/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/c/b/a/d;->mSnapchatManager:Lio/casper/android/l/t;

    .line 21
    const-string v0, "username"

    invoke-virtual {p0, v0, p2}, Lio/casper/android/c/b/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v0, "password"

    invoke-virtual {p0, v0, p3}, Lio/casper/android/c/b/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "timestamp"

    invoke-virtual {p0, v0, p4}, Lio/casper/android/c/b/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, "snapchat_version"

    iget-object v1, p0, Lio/casper/android/c/b/a/d;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1}, Lio/casper/android/l/t;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/b/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "/snapchat/clientauth/signrequest"

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 36
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
            "Lio/casper/android/c/b/b/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lio/casper/android/c/c/d/b;

    iget-object v1, p0, Lio/casper/android/c/b/a/d;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/c/b/b/e;

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/c/d/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
