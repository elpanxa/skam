.class Lcom/avocarrot/androidsdk/ImageLoadTask;
.super Landroid/os/AsyncTask;
.source "ImageLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_BITMAP_SIZE:I = 0x200000

.field protected static final maxWidth:I


# instance fields
.field protected mImageLoadListener:Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;

.field protected url2load:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 32
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/avocarrot/androidsdk/ImageLoadTask;->maxWidth:I

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImageLoadTask;->mImageLoadListener:Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;

    .line 42
    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImageLoadTask;->url2load:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/avocarrot/androidsdk/ImageLoadTask;->mImageLoadListener:Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;

    .line 40
    return-void
.end method


# virtual methods
.method protected calculateInSampleSize(II)I
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x1

    .line 142
    if-le p1, p2, :cond_0

    .line 143
    div-int/lit8 v1, p1, 0x2

    .line 144
    :goto_0
    div-int v2, v1, v0

    if-lt v2, p2, :cond_0

    .line 145
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 148
    :cond_0
    return v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/avocarrot/androidsdk/ImageLoadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 48
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImageLoadTask;->url2load:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageLoadTask;->url2load:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "Could not load empty url."

    .line 111
    :goto_0
    return-object v0

    .line 55
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/ImageLoadTask;->url2load:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 57
    const-string v1, "general"

    sget-object v3, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->imageReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v1, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getInt(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 61
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 68
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    invoke-static {v3}, Lcom/avocarrot/androidsdk/Utils;->readStream(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 73
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 74
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 76
    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 77
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sget v5, Lcom/avocarrot/androidsdk/ImageLoadTask;->maxWidth:I

    invoke-virtual {p0, v4, v5}, Lcom/avocarrot/androidsdk/ImageLoadTask;->calculateInSampleSize(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 80
    :goto_1
    invoke-virtual {p0, v1}, Lcom/avocarrot/androidsdk/ImageLoadTask;->getMemBytes(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v4

    const-wide/32 v6, 0x200000

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 81
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 105
    :goto_2
    :try_start_3
    invoke-static {v2}, Lcom/avocarrot/androidsdk/Utils;->closeStream(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    goto :goto_0

    .line 83
    :cond_2
    const/4 v4, 0x0

    :try_start_4
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 86
    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 88
    if-nez v1, :cond_3

    .line 105
    :try_start_5
    invoke-static {v3}, Lcom/avocarrot/androidsdk/Utils;->closeStream(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_2

    move-object v0, v2

    goto :goto_0

    .line 93
    :cond_3
    :try_start_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v2, Lcom/avocarrot/androidsdk/ImageLoadTask;->maxWidth:I

    if-le v0, v2, :cond_4

    .line 94
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v4, v0

    sget v0, Lcom/avocarrot/androidsdk/ImageLoadTask;->maxWidth:I

    int-to-double v6, v0

    mul-double/2addr v4, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 96
    sget v2, Lcom/avocarrot/androidsdk/ImageLoadTask;->maxWidth:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 105
    :goto_3
    :try_start_7
    invoke-static {v3}, Lcom/avocarrot/androidsdk/Utils;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 110
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 105
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_4
    invoke-static {v3}, Lcom/avocarrot/androidsdk/Utils;->closeStream(Ljava/io/Closeable;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_2

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 102
    :catch_3
    move-exception v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method

.method protected getMemBytes(Landroid/graphics/BitmapFactory$Options;)J
    .locals 4

    .prologue
    .line 137
    const-wide/16 v0, 0x4

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageLoadTask;->mImageLoadListener:Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;

    if-eqz v0, :cond_0

    .line 119
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageLoadTask;->mImageLoadListener:Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/ImageLoadTask;->url2load:Ljava/lang/String;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, p1}, Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageLoadTask;->mImageLoadListener:Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/ImageLoadTask;->url2load:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1, v3}, Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;->onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    :cond_2
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageLoadTask;->mImageLoadListener:Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/ImageLoadTask;->url2load:Ljava/lang/String;

    const-string v2, "Could not decode bitmap"

    check-cast p1, Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, p1}, Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;->onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageLoadTask;->mImageLoadListener:Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/ImageLoadTask;->url2load:Ljava/lang/String;

    const-string v2, "Could not decode bitmap"

    invoke-interface {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;->onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
