.class public abstract Lcom/imojiapp/imoji/sdk/ImojiApi;
.super Ljava/lang/Object;
.source "ImojiApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imojiapp/imoji/sdk/ImojiApi$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_OFFSET:I = 0x0

.field static final DEFAULT_RESULTS:I = 0x3c

.field protected static volatile sInstance:Lcom/imojiapp/imoji/sdk/ImojiApi;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDefaultNumResults:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/imojiapp/imoji/sdk/ImojiApi;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/imojiapp/imoji/sdk/ImojiApi;)V

    .line 146
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/imojiapp/imoji/sdk/ImojiApi;)V
    .locals 1

    .prologue
    .line 157
    invoke-static {p0}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->init(Landroid/content/Context;)V

    .line 158
    const-string v0, "c"

    invoke-static {v0, p1}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "s"

    invoke-static {v0, p2}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    if-nez p3, :cond_0

    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiApi$Builder;

    invoke-direct {v0, p0}, Lcom/imojiapp/imoji/sdk/ImojiApi$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/imojiapp/imoji/sdk/ImojiApi$Builder;->build()Lcom/imojiapp/imoji/sdk/ImojiApi;

    move-result-object p3

    :cond_0
    invoke-static {p3}, Lcom/imojiapp/imoji/sdk/ImojiApi;->setInstance(Lcom/imojiapp/imoji/sdk/ImojiApi;)V

    .line 161
    return-void
.end method

.method static setInstance(Lcom/imojiapp/imoji/sdk/ImojiApi;)V
    .locals 3

    .prologue
    .line 164
    const-class v1, Lcom/imojiapp/imoji/sdk/ImojiApi;

    monitor-enter v1

    .line 165
    :try_start_0
    sget-object v0, Lcom/imojiapp/imoji/sdk/ImojiApi;->sInstance:Lcom/imojiapp/imoji/sdk/ImojiApi;

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "instance has already been initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 169
    :cond_0
    :try_start_1
    sput-object p0, Lcom/imojiapp/imoji/sdk/ImojiApi;->sInstance:Lcom/imojiapp/imoji/sdk/ImojiApi;

    .line 170
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/imojiapp/imoji/sdk/ImojiApi;
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/imojiapp/imoji/sdk/ImojiApi;->sInstance:Lcom/imojiapp/imoji/sdk/ImojiApi;

    if-nez v0, :cond_1

    .line 180
    const-class v1, Lcom/imojiapp/imoji/sdk/ImojiApi;

    monitor-enter v1

    .line 181
    :try_start_0
    sget-object v0, Lcom/imojiapp/imoji/sdk/ImojiApi;->sInstance:Lcom/imojiapp/imoji/sdk/ImojiApi;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiApi$Builder;

    invoke-direct {v0, p0}, Lcom/imojiapp/imoji/sdk/ImojiApi$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/imojiapp/imoji/sdk/ImojiApi$Builder;->build()Lcom/imojiapp/imoji/sdk/ImojiApi;

    move-result-object v0

    sput-object v0, Lcom/imojiapp/imoji/sdk/ImojiApi;->sInstance:Lcom/imojiapp/imoji/sdk/ImojiApi;

    .line 184
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_1
    sget-object v0, Lcom/imojiapp/imoji/sdk/ImojiApi;->sInstance:Lcom/imojiapp/imoji/sdk/ImojiApi;

    return-object v0

    .line 184
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract addImojiToUserCollection(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
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
.end method

.method public abstract createImoji()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract createImoji(Landroid/graphics/Bitmap;Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V
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
.end method

.method public abstract getFeatured(IILcom/imojiapp/imoji/sdk/Callback;)V
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
.end method

.method public abstract getFeatured(Lcom/imojiapp/imoji/sdk/Callback;)V
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
.end method

.method public abstract getImojiCategories(Lcom/imojiapp/imoji/sdk/Callback;)V
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
.end method

.method public abstract getImojiCategories(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
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
.end method

.method public abstract getImojisById(Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V
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
.end method

.method public abstract getUserImojis(Lcom/imojiapp/imoji/sdk/Callback;)V
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
.end method

.method public abstract initiateUserOauth(Lcom/imojiapp/imoji/sdk/Callback;)V
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
.end method

.method public abstract reportAbusiveImoji(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
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
.end method

.method public abstract search(Ljava/lang/String;IILcom/imojiapp/imoji/sdk/Callback;)V
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
.end method

.method public abstract search(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
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
.end method

.method public abstract search(Ljava/util/Map;Lcom/imojiapp/imoji/sdk/Callback;)V
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
.end method
