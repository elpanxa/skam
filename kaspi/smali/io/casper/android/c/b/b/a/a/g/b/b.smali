.class public Lio/casper/android/c/b/b/a/a/g/b/b;
.super Ljava/lang/Object;
.source "FacebookRouting.java"


# instance fields
.field private externalRouting:Lio/casper/android/c/b/b/a/a/g/b/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external"
    .end annotation
.end field

.field private internalRouting:Lio/casper/android/c/b/b/a/a/g/b/c;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "internal"
    .end annotation
.end field


# virtual methods
.method public a()Lio/casper/android/c/b/b/a/a/g/b/a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/g/b/b;->externalRouting:Lio/casper/android/c/b/b/a/a/g/b/a;

    return-object v0
.end method

.method public b()Lio/casper/android/c/b/b/a/a/g/b/c;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/g/b/b;->internalRouting:Lio/casper/android/c/b/b/a/a/g/b/c;

    return-object v0
.end method
