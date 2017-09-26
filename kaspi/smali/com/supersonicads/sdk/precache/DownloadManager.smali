.class public Lcom/supersonicads/sdk/precache/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;,
        Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;,
        Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;
    }
.end annotation


# static fields
.field public static final CAMPAIGNS:Ljava/lang/String; = "campaigns"

.field public static final FILE_ALREADY_EXIST:Ljava/lang/String; = "file_already_exist"

.field public static final GLOBAL_ASSETS:Ljava/lang/String; = "globalAssets"

.field public static final MESSAGE_EMPTY_URL:I = 0x3ef

.field public static final MESSAGE_FILE_DOWNLOAD_FAIL:I = 0x3f9

.field public static final MESSAGE_FILE_DOWNLOAD_SUCCESS:I = 0x3f8

.field public static final MESSAGE_FILE_NOT_FOUND_EXCEPTION:I = 0x3fa

.field public static final MESSAGE_GENERAL_HTTP_ERROR_CODE:I = 0x3f3

.field public static final MESSAGE_HTTP_EMPTY_RESPONSE:I = 0x3ee

.field public static final MESSAGE_HTTP_NOT_FOUND:I = 0x3ed

.field public static final MESSAGE_INIT_BC_FAIL:I = 0x3f6

.field public static final MESSAGE_IO_EXCEPTION:I = 0x3f1

.field public static final MESSAGE_MALFORMED_URL_EXCEPTION:I = 0x3ec

.field public static final MESSAGE_NUM_OF_BANNERS_TO_CACHE:I = 0x3f5

.field public static final MESSAGE_NUM_OF_BANNERS_TO_INIT_SUCCESS:I = 0x3f4

.field public static final MESSAGE_SOCKET_TIMEOUT_EXCEPTION:I = 0x3f0

.field public static final MESSAGE_URI_SYNTAX_EXCEPTION:I = 0x3f2

.field public static final MESSAGE_ZERO_CAMPAIGNS_TO_INIT_SUCCESS:I = 0x3f7

.field public static final NO_DISK_SPACE:Ljava/lang/String; = "no_disk_space"

.field public static final NO_NETWORK_CONNECTION:Ljava/lang/String; = "no_network_connection"

.field public static final OPERATION_TIMEOUT:I = 0x1388

.field public static final SETTINGS:Ljava/lang/String; = "settings"

.field public static final SOTRAGE_UNAVAILABLE:Ljava/lang/String; = "sotrage_unavailable"

.field public static final UNABLE_TO_CREATE_FOLDER:Ljava/lang/String; = "unable_to_create_folder"

.field public static final UTF8_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static mDownloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;


# instance fields
.field private final FILE_NOT_FOUND_EXCEPTION:Ljava/lang/String;

.field private final HTTP_EMPTY_RESPONSE:Ljava/lang/String;

.field private final HTTP_ERROR_CODE:Ljava/lang/String;

.field private final HTTP_NOT_FOUND:Ljava/lang/String;

.field private final HTTP_OK:Ljava/lang/String;

.field private final IO_EXCEPTION:Ljava/lang/String;

.field private final MALFORMED_URL_EXCEPTION:Ljava/lang/String;

.field private final SOCKET_TIMEOUT_EXCEPTION:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final URI_SYNTAX_EXCEPTION:Ljava/lang/String;

.field private downloadHandler:Landroid/os/Handler;

.field private mCacheRootDirectory:Ljava/lang/String;

.field private mListener:Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;

.field private mMobileControllerThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "DownloadManager"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->TAG:Ljava/lang/String;

    .line 65
    const-string v0, "malformed url exception"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->MALFORMED_URL_EXCEPTION:Ljava/lang/String;

    .line 66
    const-string v0, "http not found"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->HTTP_NOT_FOUND:Ljava/lang/String;

    .line 67
    const-string v0, "http empty response"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->HTTP_EMPTY_RESPONSE:Ljava/lang/String;

    .line 68
    const-string v0, "uri syntax exception"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->URI_SYNTAX_EXCEPTION:Ljava/lang/String;

    .line 69
    const-string v0, "http error code"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->HTTP_ERROR_CODE:Ljava/lang/String;

    .line 70
    const-string v0, "socket timeout exception"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->SOCKET_TIMEOUT_EXCEPTION:Ljava/lang/String;

    .line 71
    const-string v0, "io exception"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->IO_EXCEPTION:Ljava/lang/String;

    .line 72
    const-string v0, "file not found exception"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->FILE_NOT_FOUND_EXCEPTION:Ljava/lang/String;

    .line 73
    const-string v0, "http ok"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->HTTP_OK:Ljava/lang/String;

    .line 443
    new-instance v0, Lcom/supersonicads/sdk/precache/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/precache/DownloadManager$1;-><init>(Lcom/supersonicads/sdk/precache/DownloadManager;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->downloadHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/supersonicads/sdk/precache/DownloadManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/supersonicads/sdk/precache/DownloadManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->downloadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/supersonicads/sdk/precache/DownloadManager;)Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mListener:Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/supersonicads/sdk/precache/DownloadManager;
    .locals 2

    .prologue
    .line 99
    const-class v1, Lcom/supersonicads/sdk/precache/DownloadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/precache/DownloadManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    .line 103
    :cond_0
    sget-object v0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public downloadContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 323
    const/4 v4, 0x0

    .line 324
    const/4 v3, 0x0

    .line 326
    const/4 v2, 0x0

    .line 328
    const/4 v5, 0x0

    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    const/16 v0, 0x3ef

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 439
    :goto_0
    return-object v0

    .line 340
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 346
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :try_start_1
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 349
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 350
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 352
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 353
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 356
    :try_start_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    invoke-static {v2, p4}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 363
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v2

    .line 365
    const v3, 0x19000

    :try_start_4
    new-array v7, v3, [B
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1b
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 368
    const/4 v3, 0x0

    move v4, v3

    .line 371
    :goto_1
    :try_start_5
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    .line 372
    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1b
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_17
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 373
    add-int/2addr v3, v4

    move v4, v3

    goto :goto_1

    :cond_2
    move v3, v6

    .line 380
    :goto_2
    if-nez v4, :cond_3

    .line 382
    const/16 v3, 0x3ee

    .line 409
    :cond_3
    if-eqz v5, :cond_4

    .line 410
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 412
    :cond_4
    if-eqz v2, :cond_5

    .line 413
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1c

    .line 418
    :cond_5
    :goto_3
    if-nez v3, :cond_1d

    .line 419
    const/16 v2, 0xc8

    if-ge v3, v2, :cond_1d

    const/16 v2, 0x18f

    if-le v3, v2, :cond_1d

    .line 420
    const/16 v2, 0x3f3

    .line 424
    :goto_4
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_6

    .line 425
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RESPONSE CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ATTEMPT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_6
    if-eqz v0, :cond_7

    .line 432
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 435
    :cond_7
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    move-object v0, v1

    .line 439
    goto/16 :goto_0

    .line 376
    :catch_0
    move-exception v3

    .line 377
    const/16 v3, 0x3f1

    goto :goto_2

    .line 386
    :catch_1
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    .line 387
    :goto_6
    const/16 v4, 0x3ec

    .line 409
    if-eqz v3, :cond_8

    .line 410
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 412
    :cond_8
    if-eqz v2, :cond_9

    .line 413
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_18

    :cond_9
    :goto_7
    move v2, v4

    .line 425
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RESPONSE CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ATTEMPT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    if-eqz v0, :cond_a

    .line 432
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 435
    :cond_a
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 389
    :catch_2
    move-exception v0

    move-object v0, v2

    .line 390
    :goto_8
    const/16 v2, 0x3f2

    .line 409
    if-eqz v4, :cond_b

    .line 410
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 412
    :cond_b
    if-eqz v3, :cond_c

    .line 413
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_14

    .line 425
    :cond_c
    :goto_9
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RESPONSE CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ATTEMPT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    if-eqz v0, :cond_d

    .line 432
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 435
    :cond_d
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 392
    :catch_3
    move-exception v0

    move-object v0, v2

    .line 393
    :goto_a
    const/16 v2, 0x3f0

    .line 409
    if-eqz v4, :cond_e

    .line 410
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 412
    :cond_e
    if-eqz v3, :cond_f

    .line 413
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10

    .line 425
    :cond_f
    :goto_b
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RESPONSE CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ATTEMPT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    if-eqz v0, :cond_10

    .line 432
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 435
    :cond_10
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 395
    :catch_4
    move-exception v0

    move-object v0, v2

    .line 396
    :goto_c
    const/16 v2, 0x3fa

    .line 409
    if-eqz v4, :cond_11

    .line 410
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 412
    :cond_11
    if-eqz v3, :cond_12

    .line 413
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    .line 425
    :cond_12
    :goto_d
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RESPONSE CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ATTEMPT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    if-eqz v0, :cond_13

    .line 432
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 435
    :cond_13
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 398
    :catch_5
    move-exception v0

    move v9, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v9

    .line 399
    :goto_e
    if-eqz v0, :cond_14

    .line 400
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 401
    const-string v6, "DownloadManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 404
    :cond_14
    const/16 v0, 0x3f1

    .line 409
    if-eqz v5, :cond_15

    .line 410
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 412
    :cond_15
    if-eqz v4, :cond_16

    .line 413
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 425
    :cond_16
    :goto_f
    const-string v2, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RESPONSE CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ATTEMPT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    if-eqz v3, :cond_17

    .line 432
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 435
    :cond_17
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 408
    :catchall_0
    move-exception v0

    move v6, v5

    .line 409
    :goto_10
    if-eqz v4, :cond_18

    .line 410
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 412
    :cond_18
    if-eqz v3, :cond_19

    .line 413
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 418
    :cond_19
    :goto_11
    if-nez v6, :cond_1a

    .line 419
    const/16 v3, 0xc8

    if-ge v6, v3, :cond_1a

    const/16 v3, 0x18f

    if-le v6, v3, :cond_1a

    .line 420
    const/16 v6, 0x3f3

    .line 424
    :cond_1a
    const/16 v3, 0xc8

    if-eq v6, v3, :cond_1b

    .line 425
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RESPONSE CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ATTEMPT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_1b
    if-eqz v2, :cond_1c

    .line 432
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 435
    :cond_1c
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    throw v0

    .line 415
    :catch_6
    move-exception v3

    goto :goto_11

    .line 408
    :catchall_1
    move-exception v2

    move v6, v5

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_10

    :catchall_2
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_10

    :catchall_3
    move-exception v2

    move-object v4, v5

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    goto :goto_10

    :catchall_4
    move-exception v3

    move-object v4, v5

    move-object v9, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_10

    :catchall_5
    move-exception v0

    move v6, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_10

    .line 415
    :catch_7
    move-exception v2

    goto/16 :goto_f

    .line 398
    :catch_8
    move-exception v2

    move-object v9, v2

    move v2, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v0

    move-object v0, v9

    goto/16 :goto_e

    :catch_9
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    move-object v3, v0

    move-object v0, v2

    move v2, v6

    goto/16 :goto_e

    :catch_a
    move-exception v2

    move-object v4, v3

    move-object v3, v0

    move-object v0, v2

    move v2, v6

    goto/16 :goto_e

    :catch_b
    move-exception v3

    move-object v4, v2

    move v2, v6

    move-object v9, v0

    move-object v0, v3

    move-object v3, v9

    goto/16 :goto_e

    .line 415
    :catch_c
    move-exception v3

    goto/16 :goto_d

    .line 395
    :catch_d
    move-exception v2

    goto/16 :goto_c

    :catch_e
    move-exception v2

    move-object v4, v5

    goto/16 :goto_c

    :catch_f
    move-exception v3

    move-object v3, v2

    move-object v4, v5

    goto/16 :goto_c

    .line 415
    :catch_10
    move-exception v3

    goto/16 :goto_b

    .line 392
    :catch_11
    move-exception v2

    goto/16 :goto_a

    :catch_12
    move-exception v2

    move-object v4, v5

    goto/16 :goto_a

    :catch_13
    move-exception v3

    move-object v3, v2

    move-object v4, v5

    goto/16 :goto_a

    .line 415
    :catch_14
    move-exception v3

    goto/16 :goto_9

    .line 389
    :catch_15
    move-exception v2

    goto/16 :goto_8

    :catch_16
    move-exception v2

    move-object v4, v5

    goto/16 :goto_8

    :catch_17
    move-exception v3

    move-object v3, v2

    move-object v4, v5

    goto/16 :goto_8

    .line 415
    :catch_18
    move-exception v2

    goto/16 :goto_7

    .line 386
    :catch_19
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_6

    :catch_1a
    move-exception v2

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_6

    :catch_1b
    move-exception v3

    move-object v3, v5

    goto/16 :goto_6

    .line 415
    :catch_1c
    move-exception v2

    goto/16 :goto_3

    :cond_1d
    move v2, v3

    goto/16 :goto_4
.end method

.method public downloadFile(Lcom/supersonicads/sdk/data/SSAFile;)V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;

    invoke-direct {v0, p0, p1}, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;-><init>(Lcom/supersonicads/sdk/precache/DownloadManager;Lcom/supersonicads/sdk/data/SSAFile;)V

    .line 129
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 130
    return-void
.end method

.method public downloadMobileControllerFile(Lcom/supersonicads/sdk/data/SSAFile;)V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;

    invoke-direct {v0, p0, p1}, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;-><init>(Lcom/supersonicads/sdk/precache/DownloadManager;Lcom/supersonicads/sdk/data/SSAFile;)V

    .line 135
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    .line 136
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 137
    return-void
.end method

.method public isMobileControllerThreadLive()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    sput-object v0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    .line 123
    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mListener:Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;

    .line 124
    return-void
.end method

.method public setOnPreCacheCompletion(Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mListener:Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;

    .line 119
    return-void
.end method
