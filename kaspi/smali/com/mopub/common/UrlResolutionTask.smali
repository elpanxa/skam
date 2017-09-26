.class public Lcom/mopub/common/UrlResolutionTask;
.super Landroid/os/AsyncTask;
.source "UrlResolutionTask.java"


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;
    }
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


# static fields
.field private static final REDIRECT_LIMIT:I = 0xa


# instance fields
.field private final mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;)V
    .locals 0
    .param p1    # Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/mopub/common/UrlResolutionTask;->mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;

    .line 38
    return-void
.end method

.method private getRedirectLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 73
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 77
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 80
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 82
    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    const/16 v3, 0x190

    if-ge v2, v3, :cond_1

    .line 83
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    .line 88
    :cond_1
    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    .line 88
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method public static getResolvedUrl(Ljava/lang/String;Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    new-instance v0, Lcom/mopub/common/UrlResolutionTask;

    invoke-direct {v0, p1}, Lcom/mopub/common/UrlResolutionTask;-><init>(Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;)V

    .line 30
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-string v1, "Failed to resolve url"

    invoke-interface {p1, v1, v0}, Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/common/UrlResolutionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 43
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_2

    :cond_0
    move-object v0, v2

    .line 68
    :cond_1
    :goto_0
    return-object v0

    .line 49
    :cond_2
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    move v3, v0

    move-object v0, v1

    move-object v1, v2

    .line 52
    :goto_1
    if-eqz v0, :cond_3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_3

    .line 55
    sget-object v1, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mopub/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-direct {p0, v0}, Lcom/mopub/common/UrlResolutionTask;->getRedirectLocation(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 61
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 65
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 68
    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 109
    iget-object v0, p0, Lcom/mopub/common/UrlResolutionTask;->mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;

    const-string v1, "Task for resolving url was cancelled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/common/UrlResolutionTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lcom/mopub/common/UrlResolutionTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/common/UrlResolutionTask;->onCancelled()V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/mopub/common/UrlResolutionTask;->mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;

    invoke-interface {v0, p1}, Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method
