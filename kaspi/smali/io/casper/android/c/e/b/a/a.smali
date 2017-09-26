.class public Lio/casper/android/c/e/b/a/a;
.super Lio/casper/android/c/b/b/b;
.source "HerokuResponse.java"


# instance fields
.field private server:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server"
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
.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lio/casper/android/c/e/b/a/a;->server:Ljava/lang/String;

    return-object v0
.end method
