.class public Lcom/mopub/mobileads/AdAlertReporter;
.super Ljava/lang/Object;
.source "AdAlertReporter.java"


# static fields
.field private static final BODY_SEPARATOR:Ljava/lang/String; = "\n=================\n"

.field private static final DATE_FORMAT_PATTERN:Ljava/lang/String; = "M/d/yy hh:mm:ss a z"

.field private static final EMAIL_RECIPIENT:Ljava/lang/String; = "creative-review@mopub.com"

.field private static final EMAIL_SCHEME:Ljava/lang/String; = "mailto:"

.field private static final IMAGE_QUALITY:I = 0x19

.field private static final MARKUP_FILENAME:Ljava/lang/String; = "mp_adalert_markup.html"

.field private static final PARAMETERS_FILENAME:Ljava/lang/String; = "mp_adalert_parameters.txt"

.field private static final SCREEN_SHOT_FILENAME:Ljava/lang/String; = "mp_adalert_screenshot.png"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDateString:Ljava/lang/String;

.field private mEmailAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailIntent:Landroid/content/Intent;

.field private mParameters:Ljava/lang/String;

.field private mResponse:Ljava/lang/String;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/common/AdReport;)V
    .locals 5
    .param p3    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mView:Landroid/view/View;

    .line 44
    iput-object p1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailAttachments:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/d/yy hh:mm:ss a z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 49
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->now()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mDateString:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertReporter;->initEmailIntent()V

    .line 52
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertReporter;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdAlertReporter;->convertBitmapInWEBPToBase64EncodedString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, ""

    iput-object v2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mParameters:Ljava/lang/String;

    .line 55
    const-string v2, ""

    iput-object v2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mResponse:Ljava/lang/String;

    .line 56
    if-eqz p3, :cond_0

    .line 57
    invoke-virtual {p3}, Lcom/mopub/common/AdReport;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mParameters:Ljava/lang/String;

    .line 58
    invoke-virtual {p3}, Lcom/mopub/common/AdReport;->getResponseString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mResponse:Ljava/lang/String;

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertReporter;->addEmailSubject()V

    .line 62
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mopub/mobileads/AdAlertReporter;->mParameters:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mopub/mobileads/AdAlertReporter;->mResponse:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-direct {p0, v2}, Lcom/mopub/mobileads/AdAlertReporter;->addEmailBody([Ljava/lang/String;)V

    .line 63
    const-string v1, "mp_adalert_parameters.txt"

    iget-object v2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mParameters:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/mopub/mobileads/AdAlertReporter;->addTextAttachment(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "mp_adalert_markup.html"

    iget-object v2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mResponse:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/mopub/mobileads/AdAlertReporter;->addTextAttachment(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "mp_adalert_screenshot.png"

    invoke-direct {p0, v1, v0}, Lcom/mopub/mobileads/AdAlertReporter;->addImageAttachment(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 66
    return-void
.end method

.method private varargs addEmailBody([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const/4 v0, 0x0

    .line 125
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 126
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    .line 128
    const-string v2, "\n=================\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method private addEmailSubject()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New creative violation report - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdAlertReporter;->mDateString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method private addImageAttachment(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 145
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x19

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 147
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mopub/mobileads/AdAlertReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write text attachment to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method private addTextAttachment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 159
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 165
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 167
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mopub/mobileads/AdAlertReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write text attachment to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method private convertBitmapInWEBPToBase64EncodedString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    if-eqz p1, :cond_0

    .line 107
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 108
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x19

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 109
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 110
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initEmailIntent()V
    .locals 5

    .prologue
    .line 77
    const-string v0, "mailto:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v2, "plain/text"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "creative-review@mopub.com"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    return-void
.end method

.method private takeScreenShot()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    .line 90
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 93
    if-eqz v3, :cond_0

    .line 97
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method getEmailAttachments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method getEmailIntent()Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getParameters()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mParameters:Ljava/lang/String;

    return-object v0
.end method

.method getResponse()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public send()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v1, "Send Email..."

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method
