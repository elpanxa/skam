.class public Lio/casper/android/n/a/b/b/d;
.super Ljava/lang/Object;
.source "UploadMediaPayload.java"


# static fields
.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field private file:Ljava/io/File;

.field private mediaId:Ljava/lang/String;

.field private type:I

.field private zipped:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lio/casper/android/n/a/b/b/d;->type:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lio/casper/android/n/a/b/b/d;->type:I

    .line 18
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lio/casper/android/n/a/b/b/d;->file:Ljava/io/File;

    .line 22
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lio/casper/android/n/a/b/b/d;->mediaId:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lio/casper/android/n/a/b/b/d;->zipped:Z

    .line 30
    return-void
.end method

.method public b()Ljava/io/File;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/n/a/b/b/d;->file:Ljava/io/File;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lio/casper/android/n/a/b/b/d;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lio/casper/android/n/a/b/b/d;->zipped:Z

    return v0
.end method
