.class public Lio/casper/android/c/e/b/b;
.super Lio/casper/android/c/e/b/a/a;
.source "SnapchatiOSLoginResponse.java"


# instance fields
.field private endpoint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endpoint"
    .end annotation
.end field

.field private headers:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "headers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private params:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "params"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private snapchatAuthSettings:Lio/casper/android/c/b/b/a/c;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "settings"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lio/casper/android/c/e/b/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lio/casper/android/c/e/b/b;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lio/casper/android/c/e/b/b;->params:Ljava/util/Map;

    return-object v0
.end method

.method public f()Lio/casper/android/c/b/b/a/c;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lio/casper/android/c/e/b/b;->snapchatAuthSettings:Lio/casper/android/c/b/b/a/c;

    return-object v0
.end method
