.class public Lio/casper/android/o/f;
.super Landroid/os/AsyncTask;
.source "InjectSnapchatSessionTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/o/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lio/casper/android/o/f$a;

.field private mSnapchatAccountManager:Lio/casper/android/l/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/o/f$a;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    iput-object p1, p0, Lio/casper/android/o/f;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lio/casper/android/o/f;->mListener:Lio/casper/android/o/f$a;

    .line 22
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/o/f;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/o/f;->mSnapchatAccountManager:Lio/casper/android/l/s;

    .line 24
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lio/casper/android/o/f;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v0}, Lio/casper/android/e/b/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    invoke-static {v1, v0}, Lio/casper/android/n/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lio/casper/android/o/f;->mListener:Lio/casper/android/o/f$a;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lio/casper/android/o/f;->mListener:Lio/casper/android/o/f$a;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/casper/android/o/f$a;->a(Z)V

    .line 52
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/casper/android/o/f;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/casper/android/o/f;->a(Ljava/lang/Boolean;)V

    return-void
.end method
