.class public Lio/casper/android/c/b/b/a/a/a/a/a;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private frequencyInterstitial:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "frequency_interstitial"
    .end annotation
.end field

.field private network:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "network"
    .end annotation
.end field

.field private networkInterstitial:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "network_interstitial"
    .end annotation
.end field

.field private networkOrderBanner:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "network_order_banner"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private networkOrderInterstitial:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "network_order_interstitial"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startAppConfiguration:Lio/casper/android/c/b/b/a/a/a/a/b;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startapp"
    .end annotation
.end field


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lio/casper/android/c/b/b/a/a/a/a/a;->frequencyInterstitial:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/a/a;->network:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/a/a;->networkInterstitial:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/a/a;->networkOrderBanner:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/a/a;->networkOrderInterstitial:Ljava/util/List;

    return-object v0
.end method

.method public f()Lio/casper/android/c/b/b/a/a/a/a/b;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/a/a;->startAppConfiguration:Lio/casper/android/c/b/b/a/a/a/a/b;

    return-object v0
.end method
