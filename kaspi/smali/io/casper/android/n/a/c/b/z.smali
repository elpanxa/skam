.class public Lio/casper/android/n/a/c/b/z;
.super Lio/casper/android/e/a/d;
.source "StoryNote.java"


# instance fields
.field private screenshotted:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "screenshotted"
    .end annotation
.end field

.field private timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private viewer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "viewer"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lio/casper/android/e/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/n/a/c/b/z;->viewer:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lio/casper/android/n/a/c/b/z;->timestamp:Ljava/lang/Long;

    .line 39
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lio/casper/android/n/a/c/b/z;->viewer:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lio/casper/android/n/a/c/b/z;->screenshotted:Z

    .line 35
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lio/casper/android/n/a/c/b/z;->screenshotted:Z

    return v0
.end method

.method public c()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lio/casper/android/n/a/c/b/z;->timestamp:Ljava/lang/Long;

    return-object v0
.end method
