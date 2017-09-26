.class public Lio/casper/android/c/b/b/a/a/g/b;
.super Ljava/lang/Object;
.source "Routing.java"


# instance fields
.field private appsRouting:Lio/casper/android/c/b/b/a/a/g/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apps"
    .end annotation
.end field

.field private casperRouting:Lio/casper/android/c/b/b/a/a/g/a/c;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "casper"
    .end annotation
.end field

.field private facebookRouting:Lio/casper/android/c/b/b/a/a/g/b/b;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebook"
    .end annotation
.end field

.field private instagramRouting:Lio/casper/android/c/b/b/a/a/g/c/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instagram"
    .end annotation
.end field


# virtual methods
.method public a()Lio/casper/android/c/b/b/a/a/g/a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/g/b;->appsRouting:Lio/casper/android/c/b/b/a/a/g/a;

    return-object v0
.end method

.method public b()Lio/casper/android/c/b/b/a/a/g/a/c;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/g/b;->casperRouting:Lio/casper/android/c/b/b/a/a/g/a/c;

    return-object v0
.end method

.method public c()Lio/casper/android/c/b/b/a/a/g/b/b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/g/b;->facebookRouting:Lio/casper/android/c/b/b/a/a/g/b/b;

    return-object v0
.end method

.method public d()Lio/casper/android/c/b/b/a/a/g/c/a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/g/b;->instagramRouting:Lio/casper/android/c/b/b/a/a/g/c/a;

    return-object v0
.end method
