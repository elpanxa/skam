.class public Lio/casper/android/c/b/b/a/a/a/a;
.super Ljava/lang/Object;
.source "Advertising.java"


# instance fields
.field private configuration:Lio/casper/android/c/b/b/a/a/a/a/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "configuration"
    .end annotation
.end field

.field private fallbackAds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fallback_ads"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/c/b/b/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private identifiers:Lio/casper/android/c/b/b/a/a/a/b/c;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "identifiers"
    .end annotation
.end field


# virtual methods
.method public a()Lio/casper/android/c/b/b/a/a/a/b/c;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/a;->identifiers:Lio/casper/android/c/b/b/a/a/a/b/c;

    return-object v0
.end method

.method public b()Lio/casper/android/c/b/b/a/a/a/a/a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/a;->configuration:Lio/casper/android/c/b/b/a/a/a/a/a;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/c/b/b/a/a/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/a;->fallbackAds:Ljava/util/List;

    return-object v0
.end method
