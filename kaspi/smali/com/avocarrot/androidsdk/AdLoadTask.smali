.class Lcom/avocarrot/androidsdk/AdLoadTask;
.super Landroid/os/AsyncTask;
.source "AdLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;
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
.field static URL:Ljava/lang/String;


# instance fields
.field adLoadTaskListener:Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;

.field apiKey:Ljava/lang/String;

.field cachedJson:Lorg/json/JSONObject;

.field context:Landroid/content/Context;

.field request:Lcom/avocarrot/androidsdk/BaseAdRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "https://ads.avocarrot.com/requests"

    sput-object v0, Lcom/avocarrot/androidsdk/AdLoadTask;->URL:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->adLoadTaskListener:Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;

    .line 29
    iput-object v0, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->request:Lcom/avocarrot/androidsdk/BaseAdRequest;

    .line 30
    iput-object v0, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->cachedJson:Lorg/json/JSONObject;

    .line 31
    iput-object v0, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->context:Landroid/content/Context;

    .line 34
    iput-object p1, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->apiKey:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->adLoadTaskListener:Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;

    .line 36
    iput-object p2, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->request:Lcom/avocarrot/androidsdk/BaseAdRequest;

    .line 37
    iput-object p4, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->context:Landroid/content/Context;

    .line 40
    iget-object v0, p2, Lcom/avocarrot/androidsdk/BaseAdRequest;->placementName:Ljava/lang/String;

    iget-object v1, p2, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    iget-object v1, v1, Lcom/avocarrot/androidsdk/DeviceInfo;->orientation:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/DynamicLayoutManager;->getLayoutForPlacement(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->cachedJson:Lorg/json/JSONObject;

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avocarrot/androidsdk/AdLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 45
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->request:Lcom/avocarrot/androidsdk/BaseAdRequest;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->request:Lcom/avocarrot/androidsdk/BaseAdRequest;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/avocarrot/androidsdk/DeviceInfo;->requestAdvertisingIdNotInUIThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->context:Landroid/content/Context;

    .line 59
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/avocarrot/androidsdk/AdLoadTask;->URL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 62
    :try_start_2
    const-string v1, "general"

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->adReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v1, v2}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getInt(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 66
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 69
    :cond_1
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "Authorization"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 72
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 75
    iget-object v2, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->request:Lcom/avocarrot/androidsdk/BaseAdRequest;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/BaseAdRequest;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 77
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 79
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 81
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 101
    :catch_0
    move-exception v1

    .line 104
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    .line 111
    :goto_2
    return-object v0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    const/4 v1, 0x1

    sget-object v2, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->DEBUG:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v3, "Failure in getting Advertising Id"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(ZLcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 107
    :catch_2
    move-exception v0

    goto :goto_2

    .line 89
    :cond_2
    :try_start_4
    new-instance v1, Lcom/avocarrot/androidsdk/BaseAdResponse;

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/avocarrot/androidsdk/BaseAdResponse;-><init>(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    :try_start_5
    invoke-virtual {v1}, Lcom/avocarrot/androidsdk/BaseAdResponse;->getDynamicLayout()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 95
    iget-object v2, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->request:Lcom/avocarrot/androidsdk/BaseAdRequest;

    iget-object v2, v2, Lcom/avocarrot/androidsdk/BaseAdRequest;->placementName:Ljava/lang/String;

    iget-object v3, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->request:Lcom/avocarrot/androidsdk/BaseAdRequest;

    iget-object v3, v3, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    iget-object v3, v3, Lcom/avocarrot/androidsdk/DeviceInfo;->orientation:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/avocarrot/androidsdk/BaseAdResponse;->getDynamicLayout()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/avocarrot/androidsdk/DynamicLayoutManager;->addLayoutForPlacement(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 104
    :cond_3
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    .line 111
    goto :goto_2

    .line 90
    :catch_3
    move-exception v1

    .line 104
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v0, v1

    goto :goto_2

    .line 96
    :cond_4
    :try_start_7
    iget-object v2, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->cachedJson:Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    .line 97
    iget-object v2, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->cachedJson:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/avocarrot/androidsdk/BaseAdResponse;->setCachedDynamicLayout(Lorg/json/JSONObject;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 104
    :catchall_0
    move-exception v1

    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 118
    if-eqz p1, :cond_3

    .line 119
    :try_start_0
    instance-of v0, p1, Lcom/avocarrot/androidsdk/BaseAdResponse;

    if-eqz v0, :cond_1

    .line 120
    check-cast p1, Lcom/avocarrot/androidsdk/BaseAdResponse;

    .line 121
    invoke-virtual {p1}, Lcom/avocarrot/androidsdk/BaseAdResponse;->isFilled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->adLoadTaskListener:Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->request:Lcom/avocarrot/androidsdk/BaseAdRequest;

    invoke-interface {v0, v1, p1}, Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;->onLoadAdSuccess(Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/BaseAdResponse;)V

    .line 138
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->adLoadTaskListener:Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;->onLoadAdFailure(Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/AdError;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->WARN:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "AdResponse was fetched but controller could not be notified"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    :try_start_1
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->adLoadTaskListener:Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->request:Lcom/avocarrot/androidsdk/BaseAdRequest;

    sget-object v2, Lcom/avocarrot/androidsdk/AdError;->GENERIC:Lcom/avocarrot/androidsdk/AdError;

    check-cast p1, Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, p1}, Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;->onLoadAdFailure(Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/AdError;Ljava/lang/Exception;)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->adLoadTaskListener:Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->request:Lcom/avocarrot/androidsdk/BaseAdRequest;

    sget-object v2, Lcom/avocarrot/androidsdk/AdError;->GENERIC:Lcom/avocarrot/androidsdk/AdError;

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdLoadTask returns unknown object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;->onLoadAdFailure(Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/AdError;Ljava/lang/Exception;)V

    goto :goto_0

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->adLoadTaskListener:Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AdLoadTask;->request:Lcom/avocarrot/androidsdk/BaseAdRequest;

    sget-object v2, Lcom/avocarrot/androidsdk/AdError;->GENERIC:Lcom/avocarrot/androidsdk/AdError;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "AdLoadTask returns null"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;->onLoadAdFailure(Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/AdError;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
