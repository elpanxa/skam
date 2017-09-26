.class public Lio/casper/android/c/b/b/d;
.super Lio/casper/android/c/b/b/b;
.source "FontsResponse.java"


# instance fields
.field private fonts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fonts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/c/b/b/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lio/casper/android/c/b/b/b;-><init>()V

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
            "Lio/casper/android/c/b/b/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lio/casper/android/c/b/b/d;->fonts:Ljava/util/List;

    return-object v0
.end method
