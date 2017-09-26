.class public Lio/casper/android/c/c/f/a;
.super Lio/casper/android/c/c/f/c;
.source "FileDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/c/c/f/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mDownloadProgressListener:Lio/casper/android/c/c/c/a;

.field private mFile:Ljava/io/File;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/casper/android/c/c/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lio/casper/android/c/c/c/a;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lio/casper/android/c/c/c/a;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lio/casper/android/c/c/f/c;-><init>()V

    .line 23
    iput-object p2, p0, Lio/casper/android/c/c/f/a;->mUrl:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lio/casper/android/c/c/f/a;->mFile:Ljava/io/File;

    .line 25
    iput-object p4, p0, Lio/casper/android/c/c/f/a;->mDownloadProgressListener:Lio/casper/android/c/c/c/a;

    .line 27
    return-void
.end method


# virtual methods
.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lio/casper/android/c/c/f/b;->GET:Lio/casper/android/c/c/f/b;

    return-object v0
.end method

.method public d()Lio/casper/android/c/c/d/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/casper/android/c/c/d/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lio/casper/android/c/c/d/a;

    iget-object v1, p0, Lio/casper/android/c/c/f/a;->mFile:Ljava/io/File;

    iget-object v2, p0, Lio/casper/android/c/c/f/a;->mDownloadProgressListener:Lio/casper/android/c/c/c/a;

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/c/d/a;-><init>(Ljava/io/File;Lio/casper/android/c/c/c/a;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/c/c/f/a;->mUrl:Ljava/lang/String;

    return-object v0
.end method
