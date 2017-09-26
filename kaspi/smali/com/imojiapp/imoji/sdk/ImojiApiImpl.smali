.class Lcom/imojiapp/imoji/sdk/ImojiApiImpl;
.super Lcom/imojiapp/imoji/sdk/ImojiApi;
.source "ImojiApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExternalAuthDependency;,
        Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;,
        Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;,
        Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;,
        Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

.field private mINetworking:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiApi;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->init(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;

    invoke-direct {v0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;-><init>()V

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mINetworking:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

    .line 35
    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mINetworking:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

    invoke-direct {v0, p1, v1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;-><init>(Landroid/content/Context;Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;)V

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;)Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mINetworking:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

    return-object v0
.end method


# virtual methods
.method public addImojiToUserCollection(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 229
    iget-object v6, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$12;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;

    const/4 v2, 0x0

    new-instance v3, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;

    invoke-direct {v3, p0, v4}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExternalAuthDependency;

    invoke-direct {v3, p0, v4}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExternalAuthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$12;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V

    # invokes: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
    invoke-static {v6, v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$200(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V

    .line 235
    return-void
.end method

.method public createImoji()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/imojiapp/imoji/sdk/Utils;->isImojiAppInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "c"

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/imojiapp/imoji/sdk/Utils;->getPlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 135
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_1
    return-void

    .line 129
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.imojiapp.imoji.CREATE_IMOJI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    const-string v1, "LANDING_PAGE_BUNDLE_ARG_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public createImoji(Landroid/graphics/Bitmap;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v7, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;

    const/4 v2, 0x0

    new-instance v3, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$9;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Landroid/graphics/Bitmap;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V

    # invokes: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
    invoke-static {v7, v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$200(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V

    .line 165
    return-void
.end method

.method executePendingCommands()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    invoke-virtual {v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->executePendingCommands()V

    .line 251
    :cond_0
    return-void
.end method

.method public getFeatured(IILcom/imojiapp/imoji/sdk/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v7, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;

    const/4 v2, 0x0

    new-instance v3, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;IILcom/imojiapp/imoji/sdk/Callback;)V

    # invokes: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
    invoke-static {v7, v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$200(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V

    .line 47
    return-void
.end method

.method public getFeatured(Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    new-instance v1, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$2;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;

    const/4 v3, 0x0

    new-instance v4, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$2;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Lcom/imojiapp/imoji/sdk/Callback;)V

    # invokes: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
    invoke-static {v0, v1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$200(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V

    .line 58
    return-void
.end method

.method public getImojiCategories(Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/ImojiCategory;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    new-instance v1, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$6;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;

    const/4 v3, 0x0

    new-instance v4, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$6;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Lcom/imojiapp/imoji/sdk/Callback;)V

    # invokes: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
    invoke-static {v0, v1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$200(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V

    .line 100
    return-void
.end method

.method public getImojiCategories(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/ImojiCategory;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v6, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$7;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;

    const/4 v2, 0x0

    new-instance v3, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$7;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V

    # invokes: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
    invoke-static {v6, v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$200(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V

    .line 110
    return-void
.end method

.method public getImojisById(Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v6, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$11;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;

    const/4 v2, 0x0

    new-instance v3, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$11;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V

    # invokes: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
    invoke-static {v6, v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$200(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V

    .line 225
    return-void
.end method

.method public getUserImojis(Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 114
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    new-instance v1, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$8;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;

    const/4 v3, 0x0

    new-instance v4, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;

    invoke-direct {v4, p0, v5}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExternalAuthDependency;

    invoke-direct {v4, p0, v5}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExternalAuthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$8;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Lcom/imojiapp/imoji/sdk/Callback;)V

    # invokes: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
    invoke-static {v0, v1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$200(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V

    .line 121
    return-void
.end method

.method public initiateUserOauth(Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mINetworking:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

    const-string v1, "c"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$10;

    invoke-direct {v2, p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$10;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/Callback;)V

    invoke-virtual {v0, v1, v2}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;->requestExternalOauth(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V

    .line 215
    return-void
.end method

.method public reportAbusiveImoji(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v6, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$13;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;

    const/4 v2, 0x0

    new-instance v3, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$13;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V

    # invokes: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
    invoke-static {v6, v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$200(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V

    .line 245
    return-void
.end method

.method public search(Ljava/lang/String;IILcom/imojiapp/imoji/sdk/Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v8, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$4;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;

    const/4 v2, 0x0

    new-instance v3, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$4;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Ljava/lang/String;IILcom/imojiapp/imoji/sdk/Callback;)V

    # invokes: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
    invoke-static {v8, v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$200(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V

    .line 80
    return-void
.end method

.method public search(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v6, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$3;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;

    const/4 v2, 0x0

    new-instance v3, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$3;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V

    # invokes: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
    invoke-static {v6, v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$200(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V

    .line 69
    return-void
.end method

.method public search(Ljava/util/Map;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v6, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;->mExecutionManager:Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;

    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$5;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;

    const/4 v2, 0x0

    new-instance v3, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$5;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/Callback;)V

    # invokes: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->execute(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V
    invoke-static {v6, v0}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$200(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;)V

    .line 90
    return-void
.end method
