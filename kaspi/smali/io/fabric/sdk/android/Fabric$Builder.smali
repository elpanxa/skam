.class public Lio/fabric/sdk/android/Fabric$Builder;
.super Ljava/lang/Object;
.source "Fabric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/Fabric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appIdentifier:Ljava/lang/String;

.field private appInstallIdentifier:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private debuggable:Z

.field private handler:Landroid/os/Handler;

.field private initializationCallback:Lio/fabric/sdk/android/InitializationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/InitializationCallback",
            "<",
            "Lio/fabric/sdk/android/Fabric;",
            ">;"
        }
    .end annotation
.end field

.field private kits:[Lio/fabric/sdk/android/Kit;

.field private logger:Lio/fabric/sdk/android/Logger;

.field private threadPoolExecutor:Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->context:Landroid/content/Context;

    .line 78
    return-void
.end method


# virtual methods
.method public appIdentifier(Ljava/lang/String;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 2

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appIdentifier must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->appIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "appIdentifier already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->appIdentifier:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public appInstallIdentifier(Ljava/lang/String;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 2

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appInstallIdentifier must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->appInstallIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "appInstallIdentifier already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->appInstallIdentifier:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public build()Lio/fabric/sdk/android/Fabric;
    .locals 9

    .prologue
    .line 208
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->kits:[Lio/fabric/sdk/android/Kit;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Kits must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->threadPoolExecutor:Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 213
    invoke-static {}, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->create()Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->threadPoolExecutor:Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    .line 216
    :cond_1
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 217
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->handler:Landroid/os/Handler;

    .line 220
    :cond_2
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;

    if-nez v0, :cond_3

    .line 221
    iget-boolean v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->debuggable:Z

    if-eqz v0, :cond_6

    .line 222
    new-instance v0, Lio/fabric/sdk/android/DefaultLogger;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/DefaultLogger;-><init>(I)V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;

    .line 229
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->appIdentifier:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 230
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->appIdentifier:Ljava/lang/String;

    .line 233
    :cond_4
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    if-nez v0, :cond_5

    .line 234
    sget-object v0, Lio/fabric/sdk/android/InitializationCallback;->EMPTY:Lio/fabric/sdk/android/InitializationCallback;

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    .line 237
    :cond_5
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->kits:[Lio/fabric/sdk/android/Kit;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    # invokes: Lio/fabric/sdk/android/Fabric;->getKitMap(Ljava/util/Collection;)Ljava/util/Map;
    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->access$000(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .line 239
    new-instance v8, Lio/fabric/sdk/android/services/common/IdManager;

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/fabric/sdk/android/Fabric$Builder;->appIdentifier:Ljava/lang/String;

    iget-object v3, p0, Lio/fabric/sdk/android/Fabric$Builder;->appInstallIdentifier:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v8, v0, v1, v3, v4}, Lio/fabric/sdk/android/services/common/IdManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 242
    new-instance v0, Lio/fabric/sdk/android/Fabric;

    iget-object v1, p0, Lio/fabric/sdk/android/Fabric$Builder;->context:Landroid/content/Context;

    iget-object v3, p0, Lio/fabric/sdk/android/Fabric$Builder;->threadPoolExecutor:Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    iget-object v4, p0, Lio/fabric/sdk/android/Fabric$Builder;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;

    iget-boolean v6, p0, Lio/fabric/sdk/android/Fabric$Builder;->debuggable:Z

    iget-object v7, p0, Lio/fabric/sdk/android/Fabric$Builder;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    invoke-direct/range {v0 .. v8}, Lio/fabric/sdk/android/Fabric;-><init>(Landroid/content/Context;Ljava/util/Map;Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;Landroid/os/Handler;Lio/fabric/sdk/android/Logger;ZLio/fabric/sdk/android/InitializationCallback;Lio/fabric/sdk/android/services/common/IdManager;)V

    return-object v0

    .line 224
    :cond_6
    new-instance v0, Lio/fabric/sdk/android/DefaultLogger;

    invoke-direct {v0}, Lio/fabric/sdk/android/DefaultLogger;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;

    goto :goto_0
.end method

.method public debuggable(Z)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 0

    .prologue
    .line 182
    iput-boolean p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->debuggable:Z

    .line 183
    return-object p0
.end method

.method public executorService(Ljava/util/concurrent/ExecutorService;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    return-object p0
.end method

.method public handler(Landroid/os/Handler;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    return-object p0
.end method

.method public initializationCallback(Lio/fabric/sdk/android/InitializationCallback;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/InitializationCallback",
            "<",
            "Lio/fabric/sdk/android/Fabric;",
            ">;)",
            "Lio/fabric/sdk/android/Fabric$Builder;"
        }
    .end annotation

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initializationCallback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    if-eqz v0, :cond_1

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initializationCallback already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    .line 200
    return-object p0
.end method

.method public varargs kits([Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 2

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Kits must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Kits must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->kits:[Lio/fabric/sdk/android/Kit;

    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Kits already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->kits:[Lio/fabric/sdk/android/Kit;

    .line 95
    return-object p0
.end method

.method public logger(Lio/fabric/sdk/android/Logger;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 2

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Logger must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;

    if-eqz v0, :cond_1

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Logger already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;

    .line 143
    return-object p0
.end method

.method public threadPoolExecutor(Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 2

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PriorityThreadPoolExecutor must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->threadPoolExecutor:Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PriorityThreadPoolExecutor already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->threadPoolExecutor:Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    .line 119
    return-object p0
.end method
