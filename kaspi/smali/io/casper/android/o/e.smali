.class public Lio/casper/android/o/e;
.super Landroid/os/AsyncTask;
.source "GoogleAuthTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/o/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lio/casper/android/o/e$a;

.field private mContext:Landroid/content/Context;

.field private mEmail:Ljava/lang/String;

.field private mGoogleAuthManager:Lio/casper/android/l/i;

.field private mPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/casper/android/o/e$a;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p1, p0, Lio/casper/android/o/e;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lio/casper/android/l/i;

    iget-object v1, p0, Lio/casper/android/o/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/o/e;->mGoogleAuthManager:Lio/casper/android/l/i;

    .line 30
    iput-object p2, p0, Lio/casper/android/o/e;->mEmail:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lio/casper/android/o/e;->mPassword:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lio/casper/android/o/e;->mCallback:Lio/casper/android/o/e$a;

    .line 35
    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 40
    iget-object v0, p0, Lio/casper/android/o/e;->mEmail:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lio/casper/android/o/e;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/o/e;->mEmail:Ljava/lang/String;

    .line 44
    :cond_0
    iget-object v0, p0, Lio/casper/android/o/e;->mPassword:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lio/casper/android/o/e;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/o/e;->mPassword:Ljava/lang/String;

    .line 48
    :cond_1
    iget-object v0, p0, Lio/casper/android/o/e;->mEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/casper/android/o/e;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    :cond_2
    new-instance v0, Lio/casper/android/c/d/a/a;

    sget-object v1, Lio/casper/android/c/d/a/a$a;->BAD_AUTHENTICATION:Lio/casper/android/c/d/a/a$a;

    invoke-direct {v0, v1}, Lio/casper/android/c/d/a/a;-><init>(Lio/casper/android/c/d/a/a$a;)V

    .line 70
    :goto_0
    return-object v0

    .line 52
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    iget-object v2, p0, Lio/casper/android/o/e;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v2}, Lio/casper/android/l/i;->e()J

    move-result-wide v2

    .line 55
    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    iget-object v0, p0, Lio/casper/android/o/e;->mEmail:Ljava/lang/String;

    iget-object v1, p0, Lio/casper/android/o/e;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v1}, Lio/casper/android/l/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/casper/android/o/e;->mPassword:Ljava/lang/String;

    iget-object v1, p0, Lio/casper/android/o/e;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v1}, Lio/casper/android/l/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    iget-object v0, p0, Lio/casper/android/o/e;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_4
    :try_start_0
    new-instance v0, Lio/casper/android/c/d/c/a;

    iget-object v1, p0, Lio/casper/android/o/e;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/o/e;->mEmail:Ljava/lang/String;

    iget-object v3, p0, Lio/casper/android/o/e;->mPassword:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lio/casper/android/c/d/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/casper/android/c/d/c/a;->k()Lio/casper/android/c/c/g/a;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lio/casper/android/c/c/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lio/casper/android/o/e;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v1, v0}, Lio/casper/android/l/i;->c(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lio/casper/android/o/e;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lio/casper/android/o/e;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v4}, Lio/casper/android/l/i;->f()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lio/casper/android/l/i;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/casper/android/o/e;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lio/casper/android/o/e;->mCallback:Lio/casper/android/o/e$a;

    if-eqz v0, :cond_0

    .line 80
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lio/casper/android/o/e;->mCallback:Lio/casper/android/o/e$a;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lio/casper/android/o/e$a;->a(Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lio/casper/android/o/e;->mCallback:Lio/casper/android/o/e$a;

    check-cast p1, Ljava/lang/Exception;

    invoke-interface {v0, p1}, Lio/casper/android/o/e$a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
