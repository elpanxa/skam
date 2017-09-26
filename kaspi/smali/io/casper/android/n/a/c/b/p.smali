.class public Lio/casper/android/n/a/c/b/p;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field private filters:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filters"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private weather:Lio/casper/android/n/a/c/b/aa;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weather"
    .end annotation
.end field


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lio/casper/android/n/a/c/b/p;->filters:Ljava/util/List;

    return-object v0
.end method
