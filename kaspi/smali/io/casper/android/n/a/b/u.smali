.class public Lio/casper/android/n/a/b/u;
.super Lio/casper/android/n/a/b/q;
.source "StoryPrivacySettingsRequest.java"


# static fields
.field public static final PRIVACY_CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final PRIVACY_EVERYONE:Ljava/lang/String; = "EVERYONE"

.field public static final PRIVACY_FRIENDS:Ljava/lang/String; = "FRIENDS"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/casper/android/n/a/b/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/q;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "action"

    const-string v1, "updateStoryPrivacy"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v0, "privacySetting"

    invoke-virtual {p0, v0, p2}, Lio/casper/android/n/a/b/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    if-eqz p3, :cond_0

    .line 22
    const-string v0, "storyFriendsToBlock"

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method
