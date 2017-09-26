.class public Lio/casper/android/c/b/b/a/a/g/a/d;
.super Ljava/lang/Object;
.source "EmojiRouting.java"


# instance fields
.field private appleEmojiPack1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apple-emoji-pack-1"
    .end annotation
.end field

.field private googleEmojiPack1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "google-emoji-pack-1"
    .end annotation
.end field


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/g/a/d;->appleEmojiPack1:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/g/a/d;->googleEmojiPack1:Ljava/lang/String;

    return-object v0
.end method
