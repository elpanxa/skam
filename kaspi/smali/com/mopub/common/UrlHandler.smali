.class public Lcom/mopub/common/UrlHandler;
.super Ljava/lang/Object;
.source "UrlHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/UrlHandler$Builder;,
        Lcom/mopub/common/UrlHandler$MoPubSchemeListener;,
        Lcom/mopub/common/UrlHandler$ResultActions;
    }
.end annotation


# static fields
.field private static final EMPTY_CLICK_LISTENER:Lcom/mopub/common/UrlHandler$ResultActions;

.field private static final EMPTY_MOPUB_SCHEME_LISTENER:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;


# instance fields
.field private mAlreadySucceeded:Z

.field private mMoPubSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mResultActions:Lcom/mopub/common/UrlHandler$ResultActions;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSkipShowMoPubBrowser:Z

.field private mSupportedUrlActions:Ljava/util/EnumSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/mopub/common/UrlAction;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskPending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/mopub/common/UrlHandler$1;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$1;-><init>()V

    sput-object v0, Lcom/mopub/common/UrlHandler;->EMPTY_CLICK_LISTENER:Lcom/mopub/common/UrlHandler$ResultActions;

    .line 153
    new-instance v0, Lcom/mopub/common/UrlHandler$2;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$2;-><init>()V

    sput-object v0, Lcom/mopub/common/UrlHandler;->EMPTY_MOPUB_SCHEME_LISTENER:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumSet;Lcom/mopub/common/UrlHandler$ResultActions;Lcom/mopub/common/UrlHandler$MoPubSchemeListener;Z)V
    .locals 2
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/common/UrlHandler$ResultActions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/common/UrlHandler$MoPubSchemeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/mopub/common/UrlAction;",
            ">;",
            "Lcom/mopub/common/UrlHandler$ResultActions;",
            "Lcom/mopub/common/UrlHandler$MoPubSchemeListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/UrlHandler;->mSupportedUrlActions:Ljava/util/EnumSet;

    .line 181
    iput-object p2, p0, Lcom/mopub/common/UrlHandler;->mResultActions:Lcom/mopub/common/UrlHandler$ResultActions;

    .line 182
    iput-object p3, p0, Lcom/mopub/common/UrlHandler;->mMoPubSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    .line 183
    iput-boolean p4, p0, Lcom/mopub/common/UrlHandler;->mSkipShowMoPubBrowser:Z

    .line 184
    iput-boolean v1, p0, Lcom/mopub/common/UrlHandler;->mAlreadySucceeded:Z

    .line 185
    iput-boolean v1, p0, Lcom/mopub/common/UrlHandler;->mTaskPending:Z

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumSet;Lcom/mopub/common/UrlHandler$ResultActions;Lcom/mopub/common/UrlHandler$MoPubSchemeListener;ZLcom/mopub/common/UrlHandler$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mopub/common/UrlHandler;-><init>(Ljava/util/EnumSet;Lcom/mopub/common/UrlHandler$ResultActions;Lcom/mopub/common/UrlHandler$MoPubSchemeListener;Z)V

    return-void
.end method

.method static synthetic access$000()Lcom/mopub/common/UrlHandler$ResultActions;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/mopub/common/UrlHandler;->EMPTY_CLICK_LISTENER:Lcom/mopub/common/UrlHandler$ResultActions;

    return-object v0
.end method

.method static synthetic access$100()Lcom/mopub/common/UrlHandler$MoPubSchemeListener;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/mopub/common/UrlHandler;->EMPTY_MOPUB_SCHEME_LISTENER:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mopub/common/UrlHandler;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/mopub/common/UrlHandler;->mTaskPending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mopub/common/UrlHandler;Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mopub/common/UrlHandler;->failUrlHandling(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private failUrlHandling(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/common/UrlAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 322
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 324
    if-nez p2, :cond_0

    .line 325
    sget-object p2, Lcom/mopub/common/UrlAction;->NOOP:Lcom/mopub/common/UrlAction;

    .line 328
    :cond_0
    invoke-static {p3, p4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    iget-object v0, p0, Lcom/mopub/common/UrlHandler;->mResultActions:Lcom/mopub/common/UrlHandler$ResultActions;

    invoke-interface {v0, p1, p2}, Lcom/mopub/common/UrlHandler$ResultActions;->urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V

    .line 330
    return-void
.end method


# virtual methods
.method getMoPubSchemeListener()Lcom/mopub/common/UrlHandler$MoPubSchemeListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mopub/common/UrlHandler;->mMoPubSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    return-object v0
.end method

.method getResultActions()Lcom/mopub/common/UrlHandler$ResultActions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mopub/common/UrlHandler;->mResultActions:Lcom/mopub/common/UrlHandler$ResultActions;

    return-object v0
.end method

.method getSupportedUrlActions()Ljava/util/EnumSet;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/mopub/common/UrlAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mopub/common/UrlHandler;->mSupportedUrlActions:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public handleResolvedUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)Z
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Iterable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 286
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "Attempted to handle empty url."

    invoke-direct {p0, p2, v7, v0, v7}, Lcom/mopub/common/UrlHandler;->failUrlHandling(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 317
    :goto_0
    return v0

    .line 291
    :cond_0
    sget-object v0, Lcom/mopub/common/UrlAction;->NOOP:Lcom/mopub/common/UrlAction;

    .line 292
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 294
    iget-object v1, p0, Lcom/mopub/common/UrlHandler;->mSupportedUrlActions:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/UrlAction;

    .line 295
    invoke-virtual {v0, v4}, Lcom/mopub/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 297
    :try_start_0
    invoke-virtual {v0, p0, p1, v4, p3}, Lcom/mopub/common/UrlAction;->handleUrl(Lcom/mopub/common/UrlHandler;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 299
    iget-boolean v1, p0, Lcom/mopub/common/UrlHandler;->mAlreadySucceeded:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mopub/common/UrlHandler;->mTaskPending:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    invoke-virtual {v1, v0}, Lcom/mopub/common/UrlAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/mopub/common/UrlAction;->HANDLE_MOPUB_SCHEME:Lcom/mopub/common/UrlAction;

    invoke-virtual {v1, v0}, Lcom/mopub/common/UrlAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    sget-object v1, Lcom/mopub/common/event/BaseEvent$Name;->CLICK_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    invoke-static {p4, p1, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 304
    iget-object v1, p0, Lcom/mopub/common/UrlHandler;->mResultActions:Lcom/mopub/common/UrlHandler$ResultActions;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v0}, Lcom/mopub/common/UrlHandler$ResultActions;->urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V

    .line 306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mopub/common/UrlHandler;->mAlreadySucceeded:Z
    :try_end_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v3

    .line 308
    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 310
    invoke-virtual {v1}, Lcom/mopub/exceptions/IntentNotResolvableException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-object v1, v0

    .line 315
    goto :goto_1

    .line 316
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Link ignored. Unable to handle url: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v1, v0, v7}, Lcom/mopub/common/UrlHandler;->failUrlHandling(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 317
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public handleUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 215
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 218
    return-void
.end method

.method public handleUrl(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 230
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V

    .line 233
    return-void
.end method

.method public handleUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Iterable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 247
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "Attempted to handle empty url."

    invoke-direct {p0, p2, v1, v0, v1}, Lcom/mopub/common/UrlHandler;->failUrlHandling(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    :goto_0
    return-void

    .line 252
    :cond_0
    new-instance v0, Lcom/mopub/common/UrlHandler$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mopub/common/UrlHandler$3;-><init>(Lcom/mopub/common/UrlHandler;Landroid/content/Context;ZLjava/lang/Iterable;Ljava/lang/String;)V

    .line 269
    invoke-static {p2, v0}, Lcom/mopub/common/UrlResolutionTask;->getResolvedUrl(Ljava/lang/String;Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;)V

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/common/UrlHandler;->mTaskPending:Z

    goto :goto_0
.end method

.method shouldSkipShowMoPubBrowser()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/mopub/common/UrlHandler;->mSkipShowMoPubBrowser:Z

    return v0
.end method
