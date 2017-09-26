.class public Lio/casper/android/b/a/f;
.super Lio/casper/android/b/a/a/a;
.source "MediaInteractionEvent.java"


# static fields
.field public static final INTERACTION_FORWARD:Ljava/lang/String; = "Forward"

.field public static final INTERACTION_REPLAYED:Ljava/lang/String; = "Replayed"

.field public static final INTERACTION_REPLY:Ljava/lang/String; = "Reply"

.field public static final INTERACTION_SAVE:Ljava/lang/String; = "Save"

.field public static final INTERACTION_SCREENSHOT:Ljava/lang/String; = "Screenshot"

.field public static final INTERACTION_SHARE:Ljava/lang/String; = "Share"

.field public static final INTERACTION_VIEW:Ljava/lang/String; = "View"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lio/casper/android/b/a/a/a;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Lio/casper/android/n/a/c/b/w;)Lio/casper/android/b/a/f;
    .locals 1

    .prologue
    .line 16
    const-string v0, "Snap Interaction"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->d(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 18
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    const-string v0, "Photo"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 24
    :cond_0
    :goto_0
    return-object p0

    .line 20
    :cond_1
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    const-string v0, "Video"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    goto :goto_0
.end method

.method public a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/b/a/f;
    .locals 1

    .prologue
    .line 29
    const-string v0, "Story Interaction"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->d(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 31
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    const-string v0, "Photo"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 37
    :cond_0
    :goto_0
    return-object p0

    .line 33
    :cond_1
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "Video"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lio/casper/android/b/a/f;
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Lio/casper/android/b/a/a/a;->e(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 55
    return-object p0
.end method

.method public a(Z)Lio/casper/android/b/a/f;
    .locals 1

    .prologue
    .line 42
    const-string v0, "SavedSnap Interaction"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->d(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const-string v0, "Photo"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 50
    :goto_0
    return-object p0

    .line 47
    :cond_0
    const-string v0, "Video"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    goto :goto_0
.end method
