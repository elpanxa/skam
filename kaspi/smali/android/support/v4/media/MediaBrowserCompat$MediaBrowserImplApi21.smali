.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;
.implements Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;
.implements Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserImplApi21"
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field protected mBrowserObj:Ljava/lang/Object;

.field private mCallbacksMessenger:Landroid/os/Messenger;

.field private final mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

.field private mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

.field private final mServiceComponent:Landroid/content/ComponentName;

.field private final mSubscriptions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserCompat$Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1225
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    .line 1226
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    .line 1233
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceComponent:Landroid/content/ComponentName;

    .line 1234
    invoke-virtual {p3, p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->setInternalConnectionCallback(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;)V

    .line 1235
    iget-object v0, p3, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackObj:Ljava/lang/Object;

    invoke-static {p1, p2, v0, p4}, Landroid/support/v4/media/MediaBrowserCompatApi21;->createBrowser(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    .line 1237
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21;->connect(Ljava/lang/Object;)V

    .line 1242
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 1246
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 1248
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->unregisterCallbackMessenger(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21;->disconnect(Ljava/lang/Object;)V

    .line 1254
    return-void

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    const-string v0, "MediaBrowserCompat"

    const-string v1, "Remote error unregistering client messenger."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1275
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mediaId is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1350
    :cond_0
    if-nez p2, :cond_1

    .line 1351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cb is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1353
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21;->isConnected(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1354
    const-string v0, "MediaBrowserCompat"

    const-string v1, "Not connected, unable to retrieve the MediaItem."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$1;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 1385
    :goto_0
    return-void

    .line 1363
    :cond_2
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v0, :cond_3

    .line 1364
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$2;

    invoke-direct {v1, p0, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$2;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1373
    :cond_3
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;-><init>(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Landroid/os/Handler;)V

    .line 1375
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote error getting media item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$3;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1269
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21;->getRoot(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21;->getServiceComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1281
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21;->getSessionToken(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21;->isConnected(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1389
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    .line 1390
    if-nez v0, :cond_1

    .line 1405
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    const-string v1, "extra_messenger"

    invoke-static {v0, v1}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1394
    if-eqz v0, :cond_0

    .line 1395
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-direct {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    .line 1396
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1397
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    .line 1399
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->registerCallbackMessenger(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    :goto_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v0, v2, v2, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->onServiceConnected(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1400
    :catch_0
    move-exception v0

    .line 1401
    const-string v0, "MediaBrowserCompat"

    const-string v1, "Remote error registering client messenger."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onConnectionFailed()V
    .locals 0

    .prologue
    .line 1417
    return-void
.end method

.method public onConnectionFailed(Landroid/os/Messenger;)V
    .locals 0

    .prologue
    .line 1452
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1409
    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    .line 1410
    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1411
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    .line 1412
    return-void
.end method

.method public onLoadChildren(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1457
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eq v0, p1, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1467
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    .line 1468
    if-eqz v0, :cond_0

    .line 1476
    invoke-virtual {v0, p4}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getCallback(Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 1425
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1426
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1427
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    .line 1428
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v4

    .line 1429
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v5

    .line 1430
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1431
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1432
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->mSubscriptionCallbackObj:Ljava/lang/Object;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->access$1800(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v1, v0}, Landroid/support/v4/media/MediaBrowserCompatApi21;->subscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1430
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1437
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v7, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v6, v1, v0, v7}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->addSubscription(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1439
    :catch_0
    move-exception v0

    .line 1442
    const-string v0, "MediaBrowserCompat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1447
    :cond_2
    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1289
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;

    invoke-direct {v1, p3, p2}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;-><init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;Landroid/os/Bundle;)V

    .line 1290
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    .line 1291
    if-nez v0, :cond_0

    .line 1292
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    invoke-direct {v0}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;-><init>()V

    .line 1293
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    :cond_0
    invoke-virtual {v0, v1, p2}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->setCallbackForOptions(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;Landroid/os/Bundle;)V

    .line 1296
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21;->isConnected(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1297
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v0, :cond_3

    .line 1298
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->mSubscriptionCallbackObj:Ljava/lang/Object;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->access$1800(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompatApi21;->subscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1311
    :cond_2
    :goto_0
    return-void

    .line 1302
    :cond_3
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->addSubscription(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1304
    :catch_0
    move-exception v0

    .line 1307
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote error subscribing media item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unsubscribe(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    .line 1322
    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->remove(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1324
    if-eqz p2, :cond_1

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v1, :cond_5

    .line 1325
    :cond_1
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1326
    :cond_2
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v1, p1}, Landroid/support/v4/media/MediaBrowserCompatApi21;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1340
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1341
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    :cond_4
    return-void

    .line 1328
    :cond_5
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v1, :cond_3

    .line 1330
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->removeSubscription(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1332
    :catch_0
    move-exception v1

    .line 1335
    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSubscription failed with RemoteException parentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
