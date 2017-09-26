.class Lcom/adsdk/sdk/nativeads/NativeAdView$LoadUrlTask;
.super Landroid/os/AsyncTask;
.source "NativeAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/nativeads/NativeAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadUrlTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/nativeads/NativeAdView;

.field userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/nativeads/NativeAdView;)V
    .locals 1

    .prologue
    .line 142
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$LoadUrlTask;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 143
    # getter for: Lcom/adsdk/sdk/nativeads/NativeAdView;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/adsdk/sdk/nativeads/NativeAdView;->access$0(Lcom/adsdk/sdk/nativeads/NativeAdView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$LoadUrlTask;->userAgent:Ljava/lang/String;

    .line 144
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/nativeads/NativeAdView$LoadUrlTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 148
    aget-object v0, p1, v0

    .line 151
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Checking URL redirect:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    .line 159
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 162
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    .line 166
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    :try_start_2
    const-string v2, "User-Agent"

    .line 168
    iget-object v4, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$LoadUrlTask;->userAgent:Ljava/lang/String;

    .line 167
    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 171
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 172
    const/16 v2, 0xc8

    if-ne v4, v2, :cond_3

    .line 173
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :cond_0
    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    move-object v0, v1

    .line 196
    :cond_2
    :goto_1
    return-object v0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_1

    .line 176
    :cond_3
    :try_start_3
    const-string v2, "location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 178
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 179
    const-string v2, "URL redirect cycle detected"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    if-eqz v0, :cond_4

    .line 193
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 180
    :cond_4
    const-string v0, ""

    goto :goto_1

    .line 183
    :cond_5
    :try_start_4
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 185
    const/16 v5, 0x12e

    if-eq v4, v5, :cond_6

    .line 186
    const/16 v5, 0x12d

    if-eq v4, v5, :cond_6

    .line 187
    const/16 v5, 0x133

    if-eq v4, v5, :cond_6

    .line 188
    const/16 v5, 0x12f

    if-ne v4, v5, :cond_0

    :cond_6
    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    goto :goto_0

    .line 189
    :catch_1
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 190
    :goto_2
    if-eqz v0, :cond_7

    .line 192
    :goto_3
    if-eqz v1, :cond_2

    .line 193
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 190
    :cond_7
    :try_start_5
    const-string v0, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 191
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 192
    :goto_4
    if-eqz v2, :cond_8

    .line 193
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 194
    :cond_8
    throw v0

    .line 191
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 189
    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/nativeads/NativeAdView$LoadUrlTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 201
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    const-string v0, "about:blank"

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 207
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$LoadUrlTask;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdView;

    # getter for: Lcom/adsdk/sdk/nativeads/NativeAdView;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/adsdk/sdk/nativeads/NativeAdView;->access$0(Lcom/adsdk/sdk/nativeads/NativeAdView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
