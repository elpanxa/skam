.class public Lio/casper/android/o/g;
.super Landroid/os/AsyncTask;
.source "LoadSavedSnapsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/o/g$a;
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
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/io/File;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mCompletionListener:Lio/casper/android/o/g$a;

.field private mContext:Landroid/content/Context;

.field private mSavedMediaManager:Lio/casper/android/l/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/o/g$a;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lio/casper/android/o/g;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Lio/casper/android/l/q;

    iget-object v1, p0, Lio/casper/android/o/g;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/o/g;->mSavedMediaManager:Lio/casper/android/l/q;

    .line 24
    iput-object p2, p0, Lio/casper/android/o/g;->mCompletionListener:Lio/casper/android/o/g$a;

    .line 26
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object v0, p0, Lio/casper/android/o/g;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v0, v0, Lio/casper/android/l/q;->mSavedSnapsFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 35
    if-eqz v3, :cond_2

    .line 37
    new-instance v0, Lio/casper/android/util/b/a;

    invoke-direct {v0}, Lio/casper/android/util/b/a;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 39
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 41
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 42
    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 43
    :cond_0
    new-instance v7, Lio/casper/android/util/g;

    invoke-direct {v7, v6}, Lio/casper/android/util/g;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v7}, Lio/casper/android/util/g;->a()Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 46
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_2
    return-object v2
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lio/casper/android/o/g;->mCompletionListener:Lio/casper/android/o/g$a;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lio/casper/android/o/g;->mCompletionListener:Lio/casper/android/o/g$a;

    invoke-interface {v0, p1}, Lio/casper/android/o/g$a;->a(Ljava/util/List;)V

    .line 65
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/casper/android/o/g;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/casper/android/o/g;->a(Ljava/util/List;)V

    return-void
.end method
