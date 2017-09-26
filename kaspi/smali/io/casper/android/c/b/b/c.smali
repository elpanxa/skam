.class public Lio/casper/android/c/b/b/c;
.super Lio/casper/android/c/b/b/b;
.source "ConfigResponse.java"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lio/casper/android/c/b/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/casper/android/c/b/b/a/a/a;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lio/casper/android/c/b/b/c;->configuration:Lio/casper/android/c/b/b/a/a/a;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lio/casper/android/c/b/b/c;->configuration_checksum:Ljava/lang/String;

    return-object v0
.end method
