.class public Lio/casper/android/c/f/b/a;
.super Lio/casper/android/c/f/b/a/a;
.source "SnapchatAndroidEndpointAuthResponse.java"


# instance fields
.field private endpoints:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endpoints"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/c/e/b/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private zeltaSettings:Lio/casper/android/c/e/b/b/b;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "settings"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lio/casper/android/c/f/b/a/a;-><init>()V

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
            "Lio/casper/android/c/e/b/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lio/casper/android/c/f/b/a;->endpoints:Ljava/util/List;

    return-object v0
.end method

.method public e()Lio/casper/android/c/e/b/b/b;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lio/casper/android/c/f/b/a;->zeltaSettings:Lio/casper/android/c/e/b/b/b;

    return-object v0
.end method
