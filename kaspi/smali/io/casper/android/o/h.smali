.class public Lio/casper/android/o/h;
.super Landroid/os/AsyncTask;
.source "LoadUsernameSavedSnapsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/o/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mCompletionListener:Lio/casper/android/o/h$a;

.field private mContext:Landroid/content/Context;

.field private mSavedMediaManager:Lio/casper/android/l/q;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/casper/android/o/h$a;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lio/casper/android/o/h;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lio/casper/android/o/h;->mUsername:Ljava/lang/String;

    .line 24
    new-instance v0, Lio/casper/android/l/q;

    iget-object v1, p0, Lio/casper/android/o/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/o/h;->mSavedMediaManager:Lio/casper/android/l/q;

    .line 25
    iput-object p3, p0, Lio/casper/android/o/h;->mCompletionListener:Lio/casper/android/o/h$a;

    .line 27
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object v0, p0, Lio/casper/android/o/h;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v0, v0, Lio/casper/android/l/q;->mSavedSnapsFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 35
    if-eqz v2, :cond_2

    .line 37
    new-instance v0, Lio/casper/android/util/b/a;

    invoke-direct {v0}, Lio/casper/android/util/b/a;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 39
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 41
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 42
    iget-object v6, p0, Lio/casper/android/o/h;->mUsername:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    return-object v1
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lio/casper/android/o/h;->mCompletionListener:Lio/casper/android/o/h$a;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lio/casper/android/o/h;->mCompletionListener:Lio/casper/android/o/h$a;

    invoke-interface {v0, p1}, Lio/casper/android/o/h$a;->a(Ljava/util/List;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/casper/android/o/h;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/casper/android/o/h;->a(Ljava/util/List;)V

    return-void
.end method
