.class Lcom/imojiapp/imoji/sdk/ImojiApiImpl$10;
.super Ljava/lang/Object;
.source "ImojiApiImpl.java"

# interfaces
.implements Lcom/imojiapp/imoji/sdk/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->initiateUserOauth(Lcom/imojiapp/imoji/sdk/Callback;)V
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
.field final synthetic this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

.field final synthetic val$statusCallback:Lcom/imojiapp/imoji/sdk/Callback;


# direct methods
.method constructor <init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$10;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    iput-object p2, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$10;->val$statusCallback:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 169
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$10;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$10;->val$statusCallback:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-interface {v0, p1}, Lcom/imojiapp/imoji/sdk/Callback;->onFailure(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public onSuccess(Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;)V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p1, Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;->payload:Ljava/lang/String;

    .line 173
    const-string v1, "external_token"

    invoke-static {v1, v0}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "SUCCESS"

    .line 178
    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$10;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    iget-object v2, v2, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/imojiapp/imoji/sdk/Utils;->isImojiAppInstalled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$10;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    iget-object v2, v2, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/imojiapp/imoji/sdk/Utils;->canHandleUserOauth(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 183
    const-string v3, "EXTERNAL_OAUTH_TOKEN_BUNDLE_ARG_KEY"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v0, "com.imojiapp.imoji.oauth.external.REQUEST"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v0, "com.imojiapp.imoji.category.EXTERNAL_CATEGORY"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$10;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    iget-object v0, v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 187
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$10;->val$statusCallback:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-interface {v0, v1}, Lcom/imojiapp/imoji/sdk/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 207
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string v0, "IMOJI_UPDATE_REQUIRED"

    .line 205
    :goto_1
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$10;->val$statusCallback:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-interface {v1, v0}, Lcom/imojiapp/imoji/sdk/Callback;->onFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_1
    const-string v0, "LAUNCH_PLAYSTORE"

    .line 195
    const-string v1, "c"

    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$10;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    iget-object v2, v2, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/imojiapp/imoji/sdk/Utils;->getPlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 196
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$10;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    iget-object v2, v2, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 201
    const-string v0, "PLAYSTORE_NOT_FOUND"

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 169
    check-cast p1, Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;

    invoke-virtual {p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$10;->onSuccess(Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;)V

    return-void
.end method
