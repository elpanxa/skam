.class public Lio/fabric/sdk/android/Fabric;
.super Ljava/lang/Object;
.source "Fabric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/Fabric$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_DEBUGGABLE:Z = false

.field static final DEFAULT_LOGGER:Lio/fabric/sdk/android/Logger;

.field static final ROOT_DIR:Ljava/lang/String; = ".Fabric"

.field public static final TAG:Ljava/lang/String; = "Fabric"

.field static volatile singleton:Lio/fabric/sdk/android/Fabric;


# instance fields
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private activityLifecycleManager:Lio/fabric/sdk/android/ActivityLifecycleManager;

.field private final context:Landroid/content/Context;

.field final debuggable:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final idManager:Lio/fabric/sdk/android/services/common/IdManager;

.field private final initializationCallback:Lio/fabric/sdk/android/InitializationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/InitializationCallback",
            "<",
            "Lio/fabric/sdk/android/Fabric;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final kitInitializationCallback:Lio/fabric/sdk/android/InitializationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/InitializationCallback",
            "<*>;"
        }
    .end annotation
.end field

.field private final kits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation
.end field

.field final logger:Lio/fabric/sdk/android/Logger;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lio/fabric/sdk/android/DefaultLogger;

    invoke-direct {v0}, Lio/fabric/sdk/android/DefaultLogger;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/Fabric;->DEFAULT_LOGGER:Lio/fabric/sdk/android/Logger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;Landroid/os/Handler;Lio/fabric/sdk/android/Logger;ZLio/fabric/sdk/android/InitializationCallback;Lio/fabric/sdk/android/services/common/IdManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;",
            "Landroid/os/Handler;",
            "Lio/fabric/sdk/android/Logger;",
            "Z",
            "Lio/fabric/sdk/android/InitializationCallback;",
            "Lio/fabric/sdk/android/services/common/IdManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric;->context:Landroid/content/Context;

    .line 265
    iput-object p2, p0, Lio/fabric/sdk/android/Fabric;->kits:Ljava/util/Map;

    .line 266
    iput-object p3, p0, Lio/fabric/sdk/android/Fabric;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 267
    iput-object p4, p0, Lio/fabric/sdk/android/Fabric;->mainHandler:Landroid/os/Handler;

    .line 268
    iput-object p5, p0, Lio/fabric/sdk/android/Fabric;->logger:Lio/fabric/sdk/android/Logger;

    .line 269
    iput-boolean p6, p0, Lio/fabric/sdk/android/Fabric;->debuggable:Z

    .line 270
    iput-object p7, p0, Lio/fabric/sdk/android/Fabric;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    .line 271
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 272
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/Fabric;->createKitInitializationCallback(I)Lio/fabric/sdk/android/InitializationCallback;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric;->kitInitializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    .line 273
    iput-object p8, p0, Lio/fabric/sdk/android/Fabric;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 274
    return-void
.end method

.method static synthetic access$000(Ljava/util/Collection;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lio/fabric/sdk/android/Fabric;->getKitMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/fabric/sdk/android/Fabric;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lio/fabric/sdk/android/Fabric;)Lio/fabric/sdk/android/InitializationCallback;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    return-object v0
.end method

.method private static addToKitMap(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/Kit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 557
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/Kit;

    .line 558
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    instance-of v2, v0, Lio/fabric/sdk/android/KitGroup;

    if-eqz v2, :cond_0

    .line 561
    check-cast v0, Lio/fabric/sdk/android/KitGroup;

    invoke-interface {v0}, Lio/fabric/sdk/android/KitGroup;->getKits()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lio/fabric/sdk/android/Fabric;->addToKitMap(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    .line 564
    :cond_1
    return-void
.end method

.method private extractActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 465
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 466
    check-cast p1, Landroid/app/Activity;

    .line 468
    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/fabric/sdk/android/Kit;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 501
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->singleton()Lio/fabric/sdk/android/Fabric;

    move-result-object v0

    iget-object v0, v0, Lio/fabric/sdk/android/Fabric;->kits:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/Kit;

    return-object v0
.end method

.method private static getKitMap(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/Kit;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 549
    invoke-static {v0, p0}, Lio/fabric/sdk/android/Fabric;->addToKitMap(Ljava/util/Map;Ljava/util/Collection;)V

    .line 551
    return-object v0
.end method

.method public static getLogger()Lio/fabric/sdk/android/Logger;
    .locals 1

    .prologue
    .line 508
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_0

    .line 509
    sget-object v0, Lio/fabric/sdk/android/Fabric;->DEFAULT_LOGGER:Lio/fabric/sdk/android/Logger;

    .line 511
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    iget-object v0, v0, Lio/fabric/sdk/android/Fabric;->logger:Lio/fabric/sdk/android/Logger;

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/Fabric;->extractActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/Fabric;->setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/Fabric;

    .line 344
    new-instance v0, Lio/fabric/sdk/android/ActivityLifecycleManager;

    iget-object v1, p0, Lio/fabric/sdk/android/Fabric;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/ActivityLifecycleManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric;->activityLifecycleManager:Lio/fabric/sdk/android/ActivityLifecycleManager;

    .line 345
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->activityLifecycleManager:Lio/fabric/sdk/android/ActivityLifecycleManager;

    new-instance v1, Lio/fabric/sdk/android/Fabric$1;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/Fabric$1;-><init>(Lio/fabric/sdk/android/Fabric;)V

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/ActivityLifecycleManager;->registerCallbacks(Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;)Z

    .line 363
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/Fabric;->initializeKits(Landroid/content/Context;)V

    .line 364
    return-void
.end method

.method public static isDebuggable()Z
    .locals 1

    .prologue
    .line 518
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_0

    .line 519
    const/4 v0, 0x0

    .line 521
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    iget-boolean v0, v0, Lio/fabric/sdk/android/Fabric;->debuggable:Z

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 528
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-eqz v0, :cond_0

    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    iget-object v0, v0, Lio/fabric/sdk/android/Fabric;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setFabric(Lio/fabric/sdk/android/Fabric;)V
    .locals 0

    .prologue
    .line 319
    sput-object p0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    .line 320
    invoke-direct {p0}, Lio/fabric/sdk/android/Fabric;->init()V

    .line 321
    return-void
.end method

.method static singleton()Lio/fabric/sdk/android/Fabric;
    .locals 2

    .prologue
    .line 252
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must Initialize Fabric before using singleton()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    return-object v0
.end method

.method public static varargs with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_1

    .line 289
    const-class v1, Lio/fabric/sdk/android/Fabric;

    monitor-enter v1

    .line 290
    :try_start_0
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lio/fabric/sdk/android/Fabric$Builder;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/Fabric$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/Fabric$Builder;->kits([Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/Fabric$Builder;->build()Lio/fabric/sdk/android/Fabric;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->setFabric(Lio/fabric/sdk/android/Fabric;)V

    .line 293
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_1
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    return-object v0

    .line 293
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static with(Lio/fabric/sdk/android/Fabric;)Lio/fabric/sdk/android/Fabric;
    .locals 2

    .prologue
    .line 308
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_1

    .line 309
    const-class v1, Lio/fabric/sdk/android/Fabric;

    monitor-enter v1

    .line 310
    :try_start_0
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_0

    .line 311
    invoke-static {p0}, Lio/fabric/sdk/android/Fabric;->setFabric(Lio/fabric/sdk/android/Fabric;)V

    .line 313
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_1
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    return-object v0

    .line 313
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method addAnnotatedDependencies(Ljava/util/Map;Lio/fabric/sdk/android/Kit;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/fabric/sdk/android/services/concurrency/DependsOn;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/DependsOn;

    .line 438
    if-eqz v0, :cond_4

    .line 439
    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/DependsOn;->value()[Ljava/lang/Class;

    move-result-object v2

    .line 440
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 441
    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/Kit;

    .line 444
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 445
    iget-object v6, p2, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    iget-object v0, v0, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    invoke-virtual {v6, v0}, Lio/fabric/sdk/android/InitializationTask;->addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V

    goto :goto_1

    .line 451
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/Kit;

    .line 452
    if-nez v0, :cond_2

    .line 453
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;

    const-string v1, "Referenced Kit was null, does the kit exist?"

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_2
    iget-object v5, p2, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/Kit;

    iget-object v0, v0, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    invoke-virtual {v5, v0}, Lio/fabric/sdk/android/InitializationTask;->addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V

    .line 440
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 462
    :cond_4
    return-void
.end method

.method createKitInitializationCallback(I)Lio/fabric/sdk/android/InitializationCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/fabric/sdk/android/InitializationCallback",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 567
    new-instance v0, Lio/fabric/sdk/android/Fabric$2;

    invoke-direct {v0, p0, p1}, Lio/fabric/sdk/android/Fabric$2;-><init>(Lio/fabric/sdk/android/Fabric;I)V

    return-object v0
.end method

.method public getActivityLifecycleManager()Lio/fabric/sdk/android/ActivityLifecycleManager;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->activityLifecycleManager:Lio/fabric/sdk/android/ActivityLifecycleManager;

    return-object v0
.end method

.method public getAppIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->getAppIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppInstallIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->getAppInstallIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 339
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public getKits()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->kits:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    const-string v0, "1.3.1.42"

    return-object v0
.end method

.method initializeKits(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 383
    invoke-virtual {p0}, Lio/fabric/sdk/android/Fabric;->getKits()Ljava/util/Collection;

    move-result-object v0

    .line 384
    new-instance v2, Lio/fabric/sdk/android/Onboarding;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/Onboarding;-><init>(Ljava/util/Collection;)V

    .line 385
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 386
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 390
    sget-object v0, Lio/fabric/sdk/android/InitializationCallback;->EMPTY:Lio/fabric/sdk/android/InitializationCallback;

    iget-object v1, p0, Lio/fabric/sdk/android/Fabric;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v2, p1, p0, v0, v1}, Lio/fabric/sdk/android/Onboarding;->injectParameters(Landroid/content/Context;Lio/fabric/sdk/android/Fabric;Lio/fabric/sdk/android/InitializationCallback;Lio/fabric/sdk/android/services/common/IdManager;)V

    .line 391
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/Kit;

    .line 392
    iget-object v4, p0, Lio/fabric/sdk/android/Fabric;->kitInitializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    iget-object v5, p0, Lio/fabric/sdk/android/Fabric;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v0, p1, p0, v4, v5}, Lio/fabric/sdk/android/Kit;->injectParameters(Landroid/content/Context;Lio/fabric/sdk/android/Fabric;Lio/fabric/sdk/android/InitializationCallback;Lio/fabric/sdk/android/services/common/IdManager;)V

    goto :goto_0

    .line 397
    :cond_0
    invoke-virtual {v2}, Lio/fabric/sdk/android/Onboarding;->initialize()V

    .line 401
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Fabric"

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4}, Lio/fabric/sdk/android/Logger;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/fabric/sdk/android/Fabric;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/fabric/sdk/android/Fabric;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], with the following kits:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, v0

    .line 411
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/Kit;

    .line 412
    iget-object v4, v0, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    iget-object v5, v2, Lio/fabric/sdk/android/Onboarding;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    invoke-virtual {v4, v5}, Lio/fabric/sdk/android/InitializationTask;->addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V

    .line 414
    iget-object v4, p0, Lio/fabric/sdk/android/Fabric;->kits:Ljava/util/Map;

    invoke-virtual {p0, v4, v0}, Lio/fabric/sdk/android/Fabric;->addAnnotatedDependencies(Ljava/util/Map;Lio/fabric/sdk/android/Kit;)V

    .line 416
    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->initialize()V

    .line 418
    if-eqz v1, :cond_1

    .line 419
    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 408
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 426
    :cond_3
    if-eqz v1, :cond_4

    .line 427
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v2, "Fabric"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_4
    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/Fabric;
    .locals 1

    .prologue
    .line 327
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric;->activity:Ljava/lang/ref/WeakReference;

    .line 328
    return-object p0
.end method
