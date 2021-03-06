.class public abstract Lio/fabric/sdk/android/services/cache/AbstractValueCache;
.super Ljava/lang/Object;
.source "AbstractValueCache.java"

# interfaces
.implements Lio/fabric/sdk/android/services/cache/ValueCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/cache/ValueCache",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final childCache:Lio/fabric/sdk/android/services/cache/ValueCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/cache/ValueCache",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/cache/AbstractValueCache;-><init>(Lio/fabric/sdk/android/services/cache/ValueCache;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/services/cache/ValueCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/cache/ValueCache",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->childCache:Lio/fabric/sdk/android/services/cache/ValueCache;

    .line 15
    return-void
.end method

.method private cache(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->cacheValue(Landroid/content/Context;Ljava/lang/Object;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected abstract cacheValue(Landroid/content/Context;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected abstract doInvalidate(Landroid/content/Context;)V
.end method

.method public final declared-synchronized get(Landroid/content/Context;Lio/fabric/sdk/android/services/cache/ValueLoader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/services/cache/ValueLoader",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->getCached(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->childCache:Lio/fabric/sdk/android/services/cache/ValueCache;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->childCache:Lio/fabric/sdk/android/services/cache/ValueCache;

    invoke-interface {v0, p1, p2}, Lio/fabric/sdk/android/services/cache/ValueCache;->get(Landroid/content/Context;Lio/fabric/sdk/android/services/cache/ValueLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    :goto_0
    invoke-direct {p0, p1, v0}, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->cache(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    monitor-exit p0

    return-object v0

    .line 22
    :cond_1
    :try_start_1
    invoke-interface {p2, p1}, Lio/fabric/sdk/android/services/cache/ValueLoader;->load(Landroid/content/Context;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getCached(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public final declared-synchronized invalidate(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->doInvalidate(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
