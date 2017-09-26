.class public Lio/casper/android/o/a;
.super Landroid/os/AsyncTask;
.source "DeleteAllMyStoriesTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/o/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mCompletionListener:Lio/casper/android/o/a$a;

.field private mContext:Landroid/content/Context;

.field private mMyStories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lio/casper/android/o/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/t;",
            ">;",
            "Lio/casper/android/o/a$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    iput-object p1, p0, Lio/casper/android/o/a;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lio/casper/android/o/a;->mMyStories:Ljava/util/List;

    .line 21
    iput-object p3, p0, Lio/casper/android/o/a;->mCompletionListener:Lio/casper/android/o/a$a;

    .line 23
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 28
    iget-object v0, p0, Lio/casper/android/o/a;->mMyStories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/t;

    .line 30
    :try_start_0
    new-instance v2, Lio/casper/android/n/a/b/h;

    iget-object v3, p0, Lio/casper/android/o/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/t;->b()Lio/casper/android/n/a/c/b/x;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lio/casper/android/n/a/b/h;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;)V

    invoke-virtual {v2}, Lio/casper/android/n/a/b/h;->k()Lio/casper/android/c/c/g/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lio/casper/android/o/a;->mCompletionListener:Lio/casper/android/o/a$a;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lio/casper/android/o/a;->mCompletionListener:Lio/casper/android/o/a$a;

    invoke-interface {v0}, Lio/casper/android/o/a$a;->a()V

    .line 45
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/casper/android/o/a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/casper/android/o/a;->a(Ljava/lang/Void;)V

    return-void
.end method
