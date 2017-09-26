.class public Lio/casper/android/c/b/b/a/a/a/b/a;
.super Ljava/lang/Object;
.source "AdmobIdentifiers.java"


# instance fields
.field private banner:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner"
    .end annotation
.end field

.field private interstitial:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interstitial"
    .end annotation
.end field


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/b/a;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/b/a;->interstitial:Ljava/lang/String;

    return-object v0
.end method
