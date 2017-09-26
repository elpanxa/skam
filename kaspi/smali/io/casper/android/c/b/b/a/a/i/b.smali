.class public Lio/casper/android/c/b/b/a/a/i/b;
.super Ljava/lang/Object;
.source "SuperSonic.java"


# instance fields
.field private appKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_key"
    .end annotation
.end field

.field private enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field private freeAddons:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "free_addons"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/c/b/b/a/a/i/a;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lio/casper/android/c/b/b/a/a/i/b;->enabled:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/i/b;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/c/b/b/a/a/i/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/i/b;->freeAddons:Ljava/util/List;

    return-object v0
.end method
