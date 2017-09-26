.class public Lio/casper/android/c/a/b/b;
.super Lio/casper/android/c/a/b/a;
.source "TokenResponse.java"


# instance fields
.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lio/casper/android/c/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lio/casper/android/c/a/b/b;->token:Ljava/lang/String;

    return-object v0
.end method
