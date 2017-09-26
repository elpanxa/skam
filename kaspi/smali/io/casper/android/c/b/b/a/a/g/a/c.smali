.class public Lio/casper/android/c/b/b/a/a/g/a/c;
.super Ljava/lang/Object;
.source "CasperRouting.java"


# instance fields
.field private addonsRouting:Lio/casper/android/c/b/b/a/a/g/a/b;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "addons"
    .end annotation
.end field

.field private apiRouting:Lio/casper/android/c/b/b/a/a/g/a/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "api"
    .end annotation
.end field

.field private emojiRouting:Lio/casper/android/c/b/b/a/a/g/a/d;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emoji"
    .end annotation
.end field

.field private kbRouting:Lio/casper/android/c/b/b/a/a/g/a/e;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kb"
    .end annotation
.end field

.field private termsOfService:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tos"
    .end annotation
.end field


# virtual methods
.method public a()Lio/casper/android/c/b/b/a/a/g/a/b;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/g/a/c;->addonsRouting:Lio/casper/android/c/b/b/a/a/g/a/b;

    return-object v0
.end method

.method public b()Lio/casper/android/c/b/b/a/a/g/a/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/g/a/c;->apiRouting:Lio/casper/android/c/b/b/a/a/g/a/a;

    return-object v0
.end method

.method public c()Lio/casper/android/c/b/b/a/a/g/a/d;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/g/a/c;->emojiRouting:Lio/casper/android/c/b/b/a/a/g/a/d;

    return-object v0
.end method

.method public d()Lio/casper/android/c/b/b/a/a/g/a/e;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/g/a/c;->kbRouting:Lio/casper/android/c/b/b/a/a/g/a/e;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/g/a/c;->termsOfService:Ljava/lang/String;

    return-object v0
.end method
