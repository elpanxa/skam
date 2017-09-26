.class public Lio/casper/android/c/c/e/a;
.super Ljava/lang/Object;
.source "FilePart.java"


# instance fields
.field private file:Ljava/io/File;

.field private mime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lio/casper/android/c/c/e/a;->mime:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lio/casper/android/c/c/e/a;->file:Ljava/io/File;

    .line 13
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lio/casper/android/c/c/e/a;->mime:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/io/File;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lio/casper/android/c/c/e/a;->file:Ljava/io/File;

    return-object v0
.end method
