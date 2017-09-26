.class public Lio/casper/android/util/n;
.super Ljava/lang/Object;
.source "ZipArchive.java"


# instance fields
.field a:Ljava/io/ByteArrayOutputStream;

.field private b:Ljava/util/zip/ZipOutputStream;

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lio/casper/android/util/n;->a:Ljava/io/ByteArrayOutputStream;

    .line 15
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lio/casper/android/util/n;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lio/casper/android/util/n;->b:Ljava/util/zip/ZipOutputStream;

    .line 16
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lio/casper/android/util/n;->c:[B

    .line 17
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p0, Lio/casper/android/util/n;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 30
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x800

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 31
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v2, p0, Lio/casper/android/util/n;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 34
    :goto_0
    iget-object v1, p0, Lio/casper/android/util/n;->c:[B

    const/4 v2, 0x0

    const/16 v3, 0x800

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    .line 35
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 36
    iget-object v2, p0, Lio/casper/android/util/n;->b:Ljava/util/zip/ZipOutputStream;

    iget-object v3, p0, Lio/casper/android/util/n;->c:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    :goto_1
    return-void

    .line 38
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 39
    iget-object v0, p0, Lio/casper/android/util/n;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/util/n;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
