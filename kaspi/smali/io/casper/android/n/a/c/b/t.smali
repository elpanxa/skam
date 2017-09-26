.class public Lio/casper/android/n/a/c/b/t;
.super Ljava/lang/Object;
.source "MyStory.java"


# instance fields
.field private story:Lio/casper/android/n/a/c/b/x;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story"
    .end annotation
.end field

.field private storyExtras:Lio/casper/android/n/a/c/b/y;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story_extras"
    .end annotation
.end field

.field private storyNotes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story_notes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/z;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lio/casper/android/n/a/c/b/t;->storyNotes:Ljava/util/List;

    return-object v0
.end method

.method public b()Lio/casper/android/n/a/c/b/x;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lio/casper/android/n/a/c/b/t;->story:Lio/casper/android/n/a/c/b/x;

    return-object v0
.end method

.method public c()Lio/casper/android/n/a/c/b/y;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/n/a/c/b/t;->storyExtras:Lio/casper/android/n/a/c/b/y;

    return-object v0
.end method
