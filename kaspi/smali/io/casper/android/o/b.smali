.class public Lio/casper/android/o/b;
.super Landroid/os/AsyncTask;
.source "ExportBitmapTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/o/b$a;
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
.field private static final TAG:Ljava/lang/String; = "ExportBitmapTask"


# instance fields
.field private mAutoRecycle:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCallback:Lio/casper/android/o/b$a;

.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/graphics/Bitmap;ZLio/casper/android/o/b$a;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p1, p0, Lio/casper/android/o/b;->mFile:Ljava/io/File;

    .line 27
    iput-object p2, p0, Lio/casper/android/o/b;->mBitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-boolean p3, p0, Lio/casper/android/o/b;->mAutoRecycle:Z

    .line 29
    iput-object p4, p0, Lio/casper/android/o/b;->mCallback:Lio/casper/android/o/b$a;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 42
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lio/casper/android/o/b;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    iget-object v2, p0, Lio/casper/android/o/b;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 55
    iget-object v1, p0, Lio/casper/android/o/b;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lio/casper/android/o/b;->mAutoRecycle:Z

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lio/casper/android/o/b;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 46
    :goto_1
    :try_start_2
    const-string v2, "ExportBitmapTask"

    const-string v3, "Exporting Bitmap failed with Exception"

    invoke-static {v2, v3, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 55
    iget-object v1, p0, Lio/casper/android/o/b;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lio/casper/android/o/b;->mAutoRecycle:Z

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lio/casper/android/o/b;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 48
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 49
    :goto_2
    :try_start_3
    const-string v2, "ExportBitmapTask"

    const-string v3, "Exporting Bitmap failed with Error"

    invoke-static {v2, v3, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 55
    iget-object v1, p0, Lio/casper/android/o/b;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lio/casper/android/o/b;->mAutoRecycle:Z

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lio/casper/android/o/b;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 55
    iget-object v1, p0, Lio/casper/android/o/b;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lio/casper/android/o/b;->mAutoRecycle:Z

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lio/casper/android/o/b;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw v0

    .line 53
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 48
    :catch_2
    move-exception v0

    goto :goto_2

    .line 45
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/casper/android/o/b;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/o/b;->mCallback:Lio/casper/android/o/b$a;

    if-eqz v0, :cond_0

    .line 70
    if-nez p1, :cond_1

    .line 71
    iget-object v0, p0, Lio/casper/android/o/b;->mCallback:Lio/casper/android/o/b$a;

    invoke-interface {v0}, Lio/casper/android/o/b$a;->a()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lio/casper/android/o/b;->mCallback:Lio/casper/android/o/b$a;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lio/casper/android/o/b$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
