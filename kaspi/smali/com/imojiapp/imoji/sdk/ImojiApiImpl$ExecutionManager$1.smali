.class Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$1;
.super Landroid/os/AsyncTask;
.source "ImojiApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->acquireOauthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;


# direct methods
.method constructor <init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$1;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 311
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 315
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 316
    const/4 v1, 0x1

    aget-object v1, p1, v1

    .line 317
    const/4 v2, 0x2

    aget-object v2, p1, v2

    .line 318
    iget-object v3, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$1;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    # getter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mINetworking:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;
    invoke-static {v3}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$400(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;->getAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_0

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;->expires_in:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 323
    const-string v1, "t"

    iget-object v4, v0, Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;->access_token:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "r"

    iget-object v4, v0, Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;->refresh_token:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v1, "e"

    invoke-static {v1, v2, v3}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->putLong(Ljava/lang/String;J)V

    .line 327
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$1;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    iget-object v4, v0, Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;->access_token:Ljava/lang/String;

    # setter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mOauthToken:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$502(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$1;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    iget-object v4, v0, Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;->refresh_token:Ljava/lang/String;

    # setter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mRefreshToken:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$602(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$1;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    # setter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mExpirationTime:J
    invoke-static {v1, v2, v3}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$702(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;J)J

    .line 331
    iget-object v0, v0, Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;->access_token:Ljava/lang/String;

    .line 334
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 311
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 339
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$1;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    # setter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mIsAcquiringAuthToken:Z
    invoke-static {v0, v4}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$802(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Z)Z

    .line 340
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$1;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    # setter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mOauthToken:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$502(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    if-eqz p1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$1;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    invoke-virtual {v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->executePendingCommands()V

    .line 354
    :goto_0
    return-void

    .line 346
    :cond_0
    const-string v0, "t"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v0, "e"

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->putLong(Ljava/lang/String;J)V

    .line 348
    const-string v0, "external_grant_status"

    invoke-static {v0, v4}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
