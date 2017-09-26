.class public Lio/casper/android/c/b/b/a/a/a/b/e;
.super Ljava/lang/Object;
.source "MobFoxIdentifiers.java"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private idInterstitial:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id_interstitial"
    .end annotation
.end field


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/b/e;->id:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/b/e;->idInterstitial:Ljava/lang/String;

    return-object v0
.end method
