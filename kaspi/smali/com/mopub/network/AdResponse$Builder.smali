.class public Lcom/mopub/network/AdResponse$Builder;
.super Ljava/lang/Object;
.source "AdResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/AdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adTimeoutDelayMillis:Ljava/lang/Integer;

.field private adType:Ljava/lang/String;

.field private adUnitId:Ljava/lang/String;

.field private clickTrackingUrl:Ljava/lang/String;

.field private customEventClassName:Ljava/lang/String;

.field private dspCreativeId:Ljava/lang/String;

.field private eventDetails:Lcom/mopub/common/event/EventDetails;

.field private failoverUrl:Ljava/lang/String;

.field private fullAdType:Ljava/lang/String;

.field private height:Ljava/lang/Integer;

.field private impressionTrackingUrl:Ljava/lang/String;

.field private jsonBody:Lorg/json/JSONObject;

.field private networkType:Ljava/lang/String;

.field private redirectUrl:Ljava/lang/String;

.field private refreshTimeMillis:Ljava/lang/Integer;

.field private requestId:Ljava/lang/String;

.field private responseBody:Ljava/lang/String;

.field private scrollable:Z

.field private serverExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/network/AdResponse$Builder;->scrollable:Z

    .line 247
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->serverExtras:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->adType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->adTimeoutDelayMillis:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->refreshTimeMillis:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->dspCreativeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mopub/network/AdResponse$Builder;)Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/mopub/network/AdResponse$Builder;->scrollable:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->responseBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mopub/network/AdResponse$Builder;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->jsonBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mopub/network/AdResponse$Builder;)Lcom/mopub/common/event/EventDetails;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->eventDetails:Lcom/mopub/common/event/EventDetails;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->customEventClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->serverExtras:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->fullAdType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->clickTrackingUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->impressionTrackingUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->failoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->width:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/mopub/network/AdResponse;
    .locals 2

    .prologue
    .line 351
    new-instance v0, Lcom/mopub/network/AdResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/network/AdResponse;-><init>(Lcom/mopub/network/AdResponse$Builder;Lcom/mopub/network/AdResponse$1;)V

    return-object v0
.end method

.method public setAdTimeoutDelayMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 302
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->adTimeoutDelayMillis:Ljava/lang/Integer;

    .line 303
    return-object p0
.end method

.method public setAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 250
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->adType:Ljava/lang/String;

    .line 251
    return-object p0
.end method

.method public setAdUnitId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 255
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->adUnitId:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public setClickTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 275
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->clickTrackingUrl:Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method public setCustomEventClassName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 337
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->customEventClassName:Ljava/lang/String;

    .line 338
    return-object p0
.end method

.method public setDimensions(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 296
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->width:Ljava/lang/Integer;

    .line 297
    iput-object p2, p0, Lcom/mopub/network/AdResponse$Builder;->height:Ljava/lang/Integer;

    .line 298
    return-object p0
.end method

.method public setDspCreativeId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 317
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->dspCreativeId:Ljava/lang/String;

    .line 318
    return-object p0
.end method

.method public setEventDetails(Lcom/mopub/common/event/EventDetails;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Lcom/mopub/common/event/EventDetails;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 332
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->eventDetails:Lcom/mopub/common/event/EventDetails;

    .line 333
    return-object p0
.end method

.method public setFailoverUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 285
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->failoverUrl:Ljava/lang/String;

    .line 286
    return-object p0
.end method

.method public setFullAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 260
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->fullAdType:Ljava/lang/String;

    .line 261
    return-object p0
.end method

.method public setImpressionTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 280
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->impressionTrackingUrl:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public setJsonBody(Lorg/json/JSONObject;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 327
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->jsonBody:Lorg/json/JSONObject;

    .line 328
    return-object p0
.end method

.method public setNetworkType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 265
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->networkType:Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method public setRedirectUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 270
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->redirectUrl:Ljava/lang/String;

    .line 271
    return-object p0
.end method

.method public setRefreshTimeMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 307
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->refreshTimeMillis:Ljava/lang/Integer;

    .line 308
    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 290
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->requestId:Ljava/lang/String;

    .line 291
    return-object p0
.end method

.method public setResponseBody(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 322
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->responseBody:Ljava/lang/String;

    .line 323
    return-object p0
.end method

.method public setScrollable(Ljava/lang/Boolean;)Lcom/mopub/network/AdResponse$Builder;
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 312
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/mopub/network/AdResponse$Builder;->scrollable:Z

    :goto_0
    iput-boolean v0, p0, Lcom/mopub/network/AdResponse$Builder;->scrollable:Z

    .line 313
    return-object p0

    .line 312
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setServerExtras(Ljava/util/Map;)Lcom/mopub/network/AdResponse$Builder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->serverExtras:Ljava/util/Map;

    .line 347
    :goto_0
    return-object p0

    .line 345
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->serverExtras:Ljava/util/Map;

    goto :goto_0
.end method
