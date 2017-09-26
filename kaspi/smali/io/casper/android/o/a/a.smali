.class public Lio/casper/android/o/a/a;
.super Ljava/lang/Object;
.source "DownloadStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/o/a/a$b;,
        Lio/casper/android/o/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Lio/casper/android/o/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private mStateChangedListener:Lio/casper/android/o/a/a$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/casper/android/o/a/a;->mItems:Ljava/util/Map;

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lio/casper/android/o/a/a$b;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lio/casper/android/o/a/a;->mStateChangedListener:Lio/casper/android/o/a/a$b;

    .line 18
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/o/a/a;->mItems:Ljava/util/Map;

    sget-object v1, Lio/casper/android/o/a/a$a;->NONE:Lio/casper/android/o/a/a$a;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/casper/android/o/a/a$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/o/a/a;->mItems:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lio/casper/android/o/a/a;->mStateChangedListener:Lio/casper/android/o/a/a$b;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lio/casper/android/o/a/a;->mStateChangedListener:Lio/casper/android/o/a/a$b;

    invoke-interface {v0}, Lio/casper/android/o/a/a$b;->a()V

    .line 35
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)Lio/casper/android/o/a/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/casper/android/o/a/a$a;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lio/casper/android/o/a/a;->mItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lio/casper/android/o/a/a;->mItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/o/a/a$a;

    .line 41
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/casper/android/o/a/a$a;->NONE:Lio/casper/android/o/a/a$a;

    goto :goto_0
.end method
