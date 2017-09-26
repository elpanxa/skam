.class public Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplayer/drm/DrmSessionManager;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    }
.end annotation


# static fields
.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field public static final PLAYREADY_CUSTOM_DATA_KEY:Ljava/lang/String; = "PRCustomData"

.field public static final PLAYREADY_UUID:Ljava/util/UUID;

.field public static final WIDEVINE_UUID:Ljava/util/UUID;


# instance fields
.field final callback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

.field private lastException:Ljava/lang/Exception;

.field private mediaCrypto:Landroid/media/MediaCrypto;

.field private final mediaDrm:Landroid/media/MediaDrm;

.field final mediaDrmHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

.field private mimeType:Ljava/lang/String;

.field private openCount:I

.field private final optionalKeyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private postRequestHandler:Landroid/os/Handler;

.field final postResponseHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

.field private provisioningInProgress:Z

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field private schemeData:[B

.field private sessionId:[B

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 65
    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v4, -0x5c37d8232ae2de13L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 73
    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x65fb0f8667bfbd7aL

    const-wide v4, -0x546d19a41f77a06bL    # -8.640911267670052E-99

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->PLAYREADY_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    .line 170
    iput-object p3, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->callback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    .line 171
    iput-object p4, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 172
    iput-object p5, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    .line 173
    iput-object p6, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    .line 175
    :try_start_0
    new-instance v0, Landroid/media/MediaDrm;

    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    new-instance v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 182
    new-instance v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    .line 183
    new-instance v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postResponseHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    .line 184
    iput v3, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 185
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    new-instance v1, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;

    invoke-direct {v1, v3, v0}, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v1

    .line 178
    :catch_1
    move-exception v0

    .line 179
    new-instance v1, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v1
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onProvisionResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeyResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public static newPlayReadyInstance(Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 146
    const-string v0, "PRCustomData"

    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    sget-object v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->PLAYREADY_UUID:Ljava/util/UUID;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;-><init>(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)V

    return-object v0

    .line 148
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static newWidevineInstance(Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    sget-object v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;-><init>(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)V

    return-object v0
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 403
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    .line 404
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 415
    :cond_1
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 376
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-eq v0, v2, :cond_0

    .line 392
    :goto_0
    return-void

    .line 381
    :cond_0
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 382
    check-cast p1, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 387
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    .line 388
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private onKeysError(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 395
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private onProvisionResponse(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    .line 342
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 362
    :goto_0
    return-void

    .line 347
    :cond_0
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 348
    check-cast p1, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 353
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    .line 354
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-ne v0, v2, :cond_2

    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openInternal(Z)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 357
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V
    :try_end_1
    .catch Landroid/media/DeniedByServerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private openInternal(Z)V
    .locals 3

    .prologue
    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    .line 317
    new-instance v0, Landroid/media/MediaCrypto;

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    invoke-direct {v0, v1, v2}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 318
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 319
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    if-eqz p1, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    goto :goto_0

    .line 324
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 326
    :catch_1
    move-exception v0

    .line 327
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private postKeyRequest()V
    .locals 6

    .prologue
    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeData:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mimeType:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private postProvisionRequest()V
    .locals 3

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    if-eqz v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    .line 336
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postResponseHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 302
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 304
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 305
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeData:[B

    .line 306
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 307
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 310
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    goto :goto_0
.end method

.method public final getError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMediaCrypto()Landroid/media/MediaCrypto;
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method public final getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return v0
.end method

.method public final open(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 263
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    if-eq v0, v2, :cond_0

    .line 290
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 267
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmRequestHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 269
    new-instance v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeData:[B

    if-nez v0, :cond_3

    .line 272
    iget-object v0, p1, Lcom/google/android/exoplayer/drm/DrmInitData;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mimeType:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/drm/DrmInitData;->get(Ljava/util/UUID;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeData:[B

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeData:[B

    if-nez v0, :cond_2

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media does not support uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 278
    :cond_2
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeData:[B

    sget-object v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    .line 281
    if-nez v0, :cond_4

    .line 288
    :cond_3
    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 289
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openInternal(Z)V

    goto :goto_0

    .line 284
    :cond_4
    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeData:[B

    goto :goto_1
.end method

.method public requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v0, p1}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    .line 259
    return-void
.end method

.method public final setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method
