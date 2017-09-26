.class public Lcom/imojiapp/imoji/sdk/ExternalGrantReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExternalGrantReceiver.java"


# instance fields
.field protected mForUs:Z

.field protected mGranted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 16
    invoke-static {p1}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->init(Landroid/content/Context;)V

    .line 17
    iput-boolean v3, p0, Lcom/imojiapp/imoji/sdk/ExternalGrantReceiver;->mGranted:Z

    .line 18
    iput-boolean v3, p0, Lcom/imojiapp/imoji/sdk/ExternalGrantReceiver;->mForUs:Z

    .line 20
    const-string v0, "EXTERNAL_OAUTH_TOKEN_BUNDLE_ARG_KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    const-string v0, "EXTERNAL_OAUTH_TOKEN_BUNDLE_ARG_KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v1, "external_token"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/imojiapp/imoji/sdk/ExternalGrantReceiver;->mForUs:Z

    .line 27
    const-string v0, "granted"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "granted"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/imojiapp/imoji/sdk/ExternalGrantReceiver;->mGranted:Z

    .line 29
    const-string v0, "external_grant_status"

    iget-boolean v1, p0, Lcom/imojiapp/imoji/sdk/ExternalGrantReceiver;->mGranted:Z

    invoke-static {v0, v1}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    iget-boolean v0, p0, Lcom/imojiapp/imoji/sdk/ExternalGrantReceiver;->mGranted:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p1}, Lcom/imojiapp/imoji/sdk/ImojiApi;->with(Landroid/content/Context;)Lcom/imojiapp/imoji/sdk/ImojiApi;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    invoke-virtual {v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->executePendingCommands()V

    .line 36
    :cond_0
    return-void
.end method
