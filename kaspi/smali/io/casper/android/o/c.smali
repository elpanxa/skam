.class public Lio/casper/android/o/c;
.super Landroid/os/AsyncTask;
.source "ExportViewTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/o/c$a;
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
.field private static final DEFAULT_COMPRESSION:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "ExportViewTask"


# instance fields
.field private mCallback:Lio/casper/android/o/c$a;

.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mCompression:I

.field private mFile:Ljava/io/File;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/view/View;Landroid/graphics/Bitmap$CompressFormat;ILio/casper/android/o/c$a;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lio/casper/android/o/c;->mFile:Ljava/io/File;

    .line 37
    iput-object p2, p0, Lio/casper/android/o/c;->mView:Landroid/view/View;

    .line 38
    iput-object p5, p0, Lio/casper/android/o/c;->mCallback:Lio/casper/android/o/c$a;

    .line 40
    iput p4, p0, Lio/casper/android/o/c;->mCompression:I

    .line 41
    iput-object p3, p0, Lio/casper/android/o/c;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/view/View;Landroid/graphics/Bitmap$CompressFormat;Lio/casper/android/o/c$a;)V
    .locals 6

    .prologue
    .line 31
    const/16 v4, 0x3c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/casper/android/o/c;-><init>(Ljava/io/File;Landroid/view/View;Landroid/graphics/Bitmap$CompressFormat;ILio/casper/android/o/c$a;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 55
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lio/casper/android/o/c;->mFile:Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 58
    iget-object v1, p0, Lio/casper/android/o/c;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v4, p0, Lio/casper/android/o/c;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 59
    :try_start_2
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 62
    iget-object v4, p0, Lio/casper/android/o/c;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 63
    iget-object v3, p0, Lio/casper/android/o/c;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v4, p0, Lio/casper/android/o/c;->mCompression:I

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 74
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 66
    :goto_1
    :try_start_3
    const-string v3, "ExportViewTask"

    const-string v4, "Exporting View as Bitmap failed with Exception"

    invoke-static {v3, v4, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 73
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 74
    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 68
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 69
    :goto_2
    :try_start_4
    const-string v3, "ExportViewTask"

    const-string v4, "Exporting View as Bitmap failed with Error"

    invoke-static {v3, v4, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 73
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 74
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 74
    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw v0

    .line 73
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_3

    .line 68
    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    .line 65
    :catch_4
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/casper/android/o/c;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lio/casper/android/o/c;->mCallback:Lio/casper/android/o/c$a;

    if-eqz v0, :cond_0

    .line 89
    if-nez p1, :cond_1

    .line 90
    iget-object v0, p0, Lio/casper/android/o/c;->mCallback:Lio/casper/android/o/c$a;

    invoke-interface {v0}, Lio/casper/android/o/c$a;->a()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lio/casper/android/o/c;->mCallback:Lio/casper/android/o/c$a;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lio/casper/android/o/c$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
