.class public Lio/casper/android/c/b/b/a/a/a/b/b;
.super Ljava/lang/Object;
.source "AvocarrotIdentifiers.java"


# instance fields
.field private apiKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "api_key"
    .end annotation
.end field

.field private placementKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "placement_key"
    .end annotation
.end field


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/b/b;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/b/b;->placementKey:Ljava/lang/String;

    return-object v0
.end method
