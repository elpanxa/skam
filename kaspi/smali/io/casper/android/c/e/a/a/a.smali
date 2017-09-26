.class public abstract Lio/casper/android/c/e/a/a/a;
.super Lio/casper/android/c/b/a/a/a;
.source "HerokuRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/casper/android/c/b/a/a/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lio/casper/android/c/b/a/a/a;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lio/casper/android/c/e/a/a/a;->mGson:Lcom/google/gson/Gson;

    .line 16
    iget-object v0, p0, Lio/casper/android/c/e/a/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lio/casper/android/c/e/a/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->h()Lio/casper/android/n/a/c/b/u;

    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    const-string v1, "snapchat_user_sec_info"

    iget-object v2, p0, Lio/casper/android/c/e/a/a/a;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/casper/android/c/e/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/casper/android/c/e/a/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1}, Lio/casper/android/l/t;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/casper/android/c/e/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
