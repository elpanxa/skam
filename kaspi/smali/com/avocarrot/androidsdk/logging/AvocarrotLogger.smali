.class public Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;
.super Ljava/lang/Object;
.source "AvocarrotLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$3;,
        Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;
    }
.end annotation


# static fields
.field private static SERVER_LOGGER:Ljava/lang/String;

.field static batchEvents:Ljava/lang/Runnable;

.field static executorService:Ljava/util/concurrent/ExecutorService;

.field private static final handler:Landroid/os/Handler;

.field protected static isLocalLoggerEnabled:Z

.field static pendingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sendEvents:Ljava/lang/Runnable;

.field static timeout:Ljava/lang/Integer;

.field protected static userLevel:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "https://sdklogs.avocarrot.com"

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->SERVER_LOGGER:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->handler:Landroid/os/Handler;

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->isLocalLoggerEnabled:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->userLevel:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->pendingEvents:Ljava/util/List;

    .line 187
    new-instance v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$1;

    invoke-direct {v0}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$1;-><init>()V

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->batchEvents:Ljava/lang/Runnable;

    .line 194
    new-instance v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$2;

    invoke-direct {v0}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$2;-><init>()V

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->sendEvents:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method public static AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static varargs AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(ZLcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static varargs AvocarrotLog(ZLcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->timeout:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 72
    const-string v0, "general"

    sget-object v1, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->loggerBatchTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getIntFallbackToDefault(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->timeout:Ljava/lang/Integer;

    .line 73
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->timeout:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 74
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->timeout:Ljava/lang/Integer;

    .line 78
    :cond_1
    new-instance v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;

    invoke-direct {v0}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;-><init>()V

    .line 80
    if-nez p0, :cond_2

    .line 81
    invoke-virtual {v0, p1, p2, p3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->logToLogCat(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :cond_2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->logToServer(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->SERVER_LOGGER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static disable()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->isLocalLoggerEnabled:Z

    .line 47
    return-void
.end method

.method public static enableWithLevel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    const-string v0, "ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WARN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "INFO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DEBUG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->valueOf(Ljava/lang/String;)Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    move-result-object v0

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->userLevel:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    .line 55
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->isLocalLoggerEnabled:Z

    .line 56
    return-void

    .line 53
    :cond_1
    const-string v0, "ALL"

    invoke-static {v0}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->valueOf(Ljava/lang/String;)Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    move-result-object v0

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->userLevel:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    goto :goto_0
.end method

.method static sendEventToServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 211
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    :try_start_1
    const-string v1, "general"

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->loggerReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v1, v2}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getInt(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 219
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 222
    :cond_0
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 224
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 226
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 227
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 229
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 230
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 239
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v1

    .line 234
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 236
    :catch_1
    move-exception v0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
.end method


# virtual methods
.method logToLogCat(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    sget-boolean v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->isLocalLoggerEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->userLevel:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    invoke-virtual {p1, v0}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 91
    :cond_1
    const-string v0, ""

    .line 92
    if-eqz p3, :cond_2

    .line 93
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_2
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$3;->$SwitchMap$com$avocarrot$androidsdk$logging$AvocarrotLogger$Levels:[I

    invoke-virtual {p1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 108
    const-string v1, "Avocarrot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ALL]:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :pswitch_1
    const-string v1, "Avocarrot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ERROR]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :pswitch_2
    const-string v1, "Avocarrot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WARN]:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :pswitch_3
    const-string v1, "Avocarrot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INFO]:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method varargs logToServer(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 117
    :try_start_0
    const-string v0, "general"

    sget-object v1, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->logger:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getString(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    sget-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->logger:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v0}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getDefaultString(Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 120
    :cond_0
    const/4 v1, 0x0

    .line 122
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->valueOf(Ljava/lang/String;)Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 125
    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_2

    .line 177
    :cond_1
    :goto_1
    return-void

    .line 123
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 128
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 130
    const-string v0, "level"

    invoke-virtual {p1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "message"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "stacktrace"

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {}, Lcom/avocarrot/androidsdk/Avocarrot;->getInstance()Lcom/avocarrot/androidsdk/Avocarrot;

    move-result-object v2

    .line 137
    if-eqz v2, :cond_3

    .line 139
    const-string v0, "apiKey"

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/Avocarrot;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v3, "sandbox"

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/Avocarrot;->isInSandbox()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "TRUE"

    :goto_2
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "sdk"

    invoke-static {}, Lcom/avocarrot/androidsdk/Avocarrot;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/Avocarrot;->getDeviceInfo()Lcom/avocarrot/androidsdk/DeviceInfo;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_3

    .line 146
    const-string v2, "buildVersion"

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/DeviceInfo;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v2, "deviceModel"

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v2, "platform"

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/DeviceInfo;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v2, "os"

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/DeviceInfo;->getOSVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v2, "package"

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/DeviceInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v2, "appName"

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/DeviceInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v2, "appVersion"

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/DeviceInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_3
    if-eqz p4, :cond_6

    .line 160
    const/4 v0, 0x0

    .line 161
    array-length v2, p4

    .line 162
    :goto_3
    if-ge v0, v2, :cond_6

    .line 163
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v2, :cond_5

    .line 164
    aget-object v3, p4, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p4, v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :goto_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 140
    :cond_4
    const-string v0, "FALSE"

    goto :goto_2

    .line 166
    :cond_5
    const-string v3, "extra"

    aget-object v4, p4, v0

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 173
    :catch_1
    move-exception v0

    .line 174
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->INFO:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Could not propagate event to remote endpoint"

    invoke-virtual {p0, v1, v2, v0}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->logToLogCat(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 171
    :cond_6
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->sendEventToServer(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method sendEventToServer(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 182
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->pendingEvents:Ljava/util/List;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->batchEvents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->batchEvents:Ljava/lang/Runnable;

    sget-object v2, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->timeout:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    return-void
.end method
