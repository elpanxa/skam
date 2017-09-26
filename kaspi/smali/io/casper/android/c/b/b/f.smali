.class public Lio/casper/android/c/b/b/f;
.super Lio/casper/android/c/b/b/b;
.source "UpdatesResponse.java"


# instance fields
.field private configuration:Lio/casper/android/c/b/b/a/a/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "configuration"
    .end annotation
.end field

.field private configuration_checksum:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "configuration_checksum"
    .end annotation
.end field

.field private updates:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updates"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/c/b/b/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
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
            "Lio/casper/android/c/b/b/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/c/b/b/f;->updates:Ljava/util/List;

    return-object v0
.end method

.method public e()Lio/casper/android/c/b/b/a/a/a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/casper/android/c/b/b/f;->configuration:Lio/casper/android/c/b/b/a/a/a;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lio/casper/android/c/b/b/f;->configuration_checksum:Ljava/lang/String;

    return-object v0
.end method
