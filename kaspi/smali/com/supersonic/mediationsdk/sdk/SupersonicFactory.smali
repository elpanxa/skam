.class public Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;
.super Ljava/lang/Object;
.source "SupersonicFactory.java"


# static fields
.field private static mInsatnce:Lcom/supersonic/mediationsdk/sdk/Supersonic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;
    .locals 2

    .prologue
    .line 11
    const-class v1, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->mInsatnce:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/SupersonicObject;-><init>()V

    sput-object v0, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->mInsatnce:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    .line 15
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->mInsatnce:Lcom/supersonic/mediationsdk/sdk/Supersonic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
