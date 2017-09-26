.class Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$2;
.super Ljava/lang/Object;
.source "ImojiApiImpl.java"

# interfaces
.implements Lcom/imojiapp/imoji/sdk/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->startExternalOauth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/imojiapp/imoji/sdk/Callback",
        "<",
        "Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;",
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
    .line 370
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$2;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 370
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$2;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$2;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    const/4 v1, 0x0

    # setter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mIsAcquiringExternalToken:Z
    invoke-static {v0, v1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$1002(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Z)Z

    .line 415
    return-void
.end method

.method public onSuccess(Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;)V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p1, Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;->payload:Ljava/lang/String;

    .line 374
    const-string v1, "external_token"

    invoke-static {v1, v0}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v1, "SUCCESS"

    .line 379
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$2;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    # getter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$900(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/imojiapp/imoji/sdk/Utils;->isImojiAppInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$2;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    # getter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$900(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/imojiapp/imoji/sdk/Utils;->canHandleUserOauth(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 384
    const-string v2, "EXTERNAL_OAUTH_TOKEN_BUNDLE_ARG_KEY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v0, "com.imojiapp.imoji.oauth.external.REQUEST"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v0, "com.imojiapp.imoji.category.EXTERNAL_CATEGORY"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$2;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    # getter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$900(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 409
    :goto_0
    return-void

    .line 391
    :cond_0
    const-string v0, "IMOJI_UPDATE_REQUIRED"

    .line 407
    :goto_1
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$2;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    const/4 v1, 0x0

    # setter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mIsAcquiringExternalToken:Z
    invoke-static {v0, v1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$1002(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Z)Z

    goto :goto_0

    .line 395
    :cond_1
    const-string v0, "LAUNCH_PLAYSTORE"

    .line 396
    const-string v0, "c"

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$2;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    # getter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$900(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/imojiapp/imoji/sdk/Utils;->getPlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 397
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$2;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    # getter for: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$900(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 402
    :catch_0
    move-exception v0

    .line 403
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 370
    check-cast p1, Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;

    invoke-virtual {p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager$2;->onSuccess(Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;)V

    return-void
.end method
