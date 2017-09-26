.class public final Lio/casper/android/util/c/d;
.super Lio/casper/android/util/c/c;
.source "ZippedEmojiLoader.java"


# static fields
.field private static mEmojiZippedAssetReader:Lio/casper/android/util/o;

.field private static mInstance:Lio/casper/android/util/c/d;

.field private static mSVGEmojiZippedAssetReader:Lio/casper/android/util/o;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lio/casper/android/util/c/d;->mInstance:Lio/casper/android/util/c/d;

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lio/casper/android/util/c/c;-><init>()V

    .line 37
    iput-object p1, p0, Lio/casper/android/util/c/d;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lio/casper/android/util/o;

    const v1, 0xdbba0

    invoke-direct {v0, p1, p2, v1}, Lio/casper/android/util/o;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/util/c/d;->mEmojiZippedAssetReader:Lio/casper/android/util/o;

    .line 39
    new-instance v0, Lio/casper/android/util/o;

    const v1, 0x2ab980

    invoke-direct {v0, p1, p3, v1}, Lio/casper/android/util/o;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/util/c/d;->mSVGEmojiZippedAssetReader:Lio/casper/android/util/o;

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/casper/android/util/c/d;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lio/casper/android/util/c/d;->mInstance:Lio/casper/android/util/c/d;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lio/casper/android/util/c/d;

    invoke-direct {v0, p0, p1, p2}, Lio/casper/android/util/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/casper/android/util/c/d;->mInstance:Lio/casper/android/util/c/d;

    .line 33
    :cond_0
    sget-object v0, Lio/casper/android/util/c/d;->mInstance:Lio/casper/android/util/c/d;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    sget-object v0, Lio/casper/android/util/c/d;->mEmojiZippedAssetReader:Lio/casper/android/util/o;

    iget-boolean v0, v0, Lio/casper/android/util/o;->mIsUnzipped:Z

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lio/casper/android/util/c/d;->mEmojiZippedAssetReader:Lio/casper/android/util/o;

    invoke-virtual {v0}, Lio/casper/android/util/o;->a()V

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lio/casper/android/util/c/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    sget-object v1, Lio/casper/android/util/c/d;->mEmojiZippedAssetReader:Lio/casper/android/util/o;

    invoke-virtual {v1, v0}, Lio/casper/android/util/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    sget-object v1, Lio/casper/android/util/c/d;->mEmojiZippedAssetReader:Lio/casper/android/util/o;

    invoke-virtual {v1, v0}, Lio/casper/android/util/o;->b(Ljava/lang/String;)Lio/casper/android/util/o$a;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 56
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 57
    iget-object v2, v0, Lio/casper/android/util/o$a;->data:[B

    iget v3, v0, Lio/casper/android/util/o$a;->offset:I

    iget v0, v0, Lio/casper/android/util/o$a;->length:I

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 61
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find PNG Emoji: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    sget-object v0, Lio/casper/android/util/c/d;->mSVGEmojiZippedAssetReader:Lio/casper/android/util/o;

    iget-boolean v0, v0, Lio/casper/android/util/o;->mIsUnzipped:Z

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lio/casper/android/util/c/d;->mSVGEmojiZippedAssetReader:Lio/casper/android/util/o;

    invoke-virtual {v0}, Lio/casper/android/util/o;->a()V

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lio/casper/android/util/c/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".svg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    sget-object v1, Lio/casper/android/util/c/d;->mSVGEmojiZippedAssetReader:Lio/casper/android/util/o;

    invoke-virtual {v1, v0}, Lio/casper/android/util/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    sget-object v1, Lio/casper/android/util/c/d;->mSVGEmojiZippedAssetReader:Lio/casper/android/util/o;

    invoke-virtual {v1, v0}, Lio/casper/android/util/o;->b(Ljava/lang/String;)Lio/casper/android/util/o$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 78
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, v0, Lio/casper/android/util/o$a;->data:[B

    iget v3, v0, Lio/casper/android/util/o$a;->offset:I

    iget v0, v0, Lio/casper/android/util/o$a;->length:I

    invoke-direct {v1, v2, v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static {v1}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v0

    .line 79
    const/16 v1, 0x1f4

    const/16 v2, 0x1f4

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 80
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;)V

    .line 82
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lio/casper/android/util/c/d;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse SVG file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89
    :cond_1
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find SVG Emoji: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
