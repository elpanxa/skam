.class public Lio/casper/android/c/b/b/a/a;
.super Lio/casper/android/c/b/b/a/b;
.source "CustomFont.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lio/casper/android/c/b/b/a/b;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 9
    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lio/casper/android/c/b/b/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
