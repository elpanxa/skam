.class public Lio/casper/android/o/d;
.super Landroid/os/AsyncTask;
.source "GenerateAndExportVideoThumbnailTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/o/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GenerateAndExportVideoThumbnailTask"


# instance fields
.field private mCallback:Lio/casper/android/o/d$a;

.field private mFile:Ljava/io/File;

.field private mVideoFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lio/casper/android/o/d$a;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Lio/casper/android/o/d;->mFile:Ljava/io/File;

    .line 24
    iput-object p2, p0, Lio/casper/android/o/d;->mVideoFile:Ljava/io/File;

    .line 25
    iput-object p3, p0, Lio/casper/android/o/d;->mCallback:Lio/casper/android/o/d$a;

    .line 27
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 39
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lio/casper/android/o/d;->mFile:Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :try_start_1
    iget-object v1, p0, Lio/casper/android/o/d;->mVideoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 41
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 51
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 52
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 44
    :goto_1
    :try_start_3
    const-string v3, "GenerateAndExportVideoThumbnailTask"

    const-string v4, "Generating and Exporting Video Thumbnail failed with Exception"

    invoke-static {v3, v4, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 51
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 52
    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 46
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 47
    :goto_2
    :try_start_4
    const-string v3, "GenerateAndExportVideoThumbnailTask"

    const-string v4, "Generating and Exporting Video Thumbnail failed with Error"

    invoke-static {v3, v4, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 51
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 52
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 52
    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw v0

    .line 51
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_3

    .line 46
    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    .line 43
    :catch_4
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/casper/android/o/d;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lio/casper/android/o/d;->mCallback:Lio/casper/android/o/d$a;

    if-eqz v0, :cond_0

    .line 67
    if-nez p1, :cond_1

    .line 68
    iget-object v0, p0, Lio/casper/android/o/d;->mCallback:Lio/casper/android/o/d$a;

    invoke-interface {v0}, Lio/casper/android/o/d$a;->a()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lio/casper/android/o/d;->mCallback:Lio/casper/android/o/d$a;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lio/casper/android/o/d$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
