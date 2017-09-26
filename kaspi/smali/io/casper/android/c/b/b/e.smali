.class public Lio/casper/android/c/b/b/e;
.super Lio/casper/android/c/b/b/b;
.source "SnapchatClientAuthSignRequestResponse.java"


# instance fields
.field private signature:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signature"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lio/casper/android/c/b/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lio/casper/android/c/b/b/e;->signature:Ljava/lang/String;

    return-object v0
.end method
