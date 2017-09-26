.class public Lcom/mopub/common/UrlHandler$Builder;
.super Ljava/lang/Object;
.source "UrlHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/UrlHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private moPubSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private resultActions:Lcom/mopub/common/UrlHandler$ResultActions;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private skipShowMoPubBrowser:Z

.field private supportedUrlActions:Ljava/util/EnumSet;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/mopub/common/UrlAction;->NOOP:Lcom/mopub/common/UrlAction;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/UrlHandler$Builder;->supportedUrlActions:Ljava/util/EnumSet;

    .line 66
    # getter for: Lcom/mopub/common/UrlHandler;->EMPTY_CLICK_LISTENER:Lcom/mopub/common/UrlHandler$ResultActions;
    invoke-static {}, Lcom/mopub/common/UrlHandler;->access$000()Lcom/mopub/common/UrlHandler$ResultActions;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/UrlHandler$Builder;->resultActions:Lcom/mopub/common/UrlHandler$ResultActions;

    .line 68
    # getter for: Lcom/mopub/common/UrlHandler;->EMPTY_MOPUB_SCHEME_LISTENER:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;
    invoke-static {}, Lcom/mopub/common/UrlHandler;->access$100()Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/UrlHandler$Builder;->moPubSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/common/UrlHandler$Builder;->skipShowMoPubBrowser:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/mopub/common/UrlHandler;
    .locals 6

    .prologue
    .line 141
    new-instance v0, Lcom/mopub/common/UrlHandler;

    iget-object v1, p0, Lcom/mopub/common/UrlHandler$Builder;->supportedUrlActions:Ljava/util/EnumSet;

    iget-object v2, p0, Lcom/mopub/common/UrlHandler$Builder;->resultActions:Lcom/mopub/common/UrlHandler$ResultActions;

    iget-object v3, p0, Lcom/mopub/common/UrlHandler$Builder;->moPubSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    iget-boolean v4, p0, Lcom/mopub/common/UrlHandler$Builder;->skipShowMoPubBrowser:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/mopub/common/UrlHandler;-><init>(Ljava/util/EnumSet;Lcom/mopub/common/UrlHandler$ResultActions;Lcom/mopub/common/UrlHandler$MoPubSchemeListener;ZLcom/mopub/common/UrlHandler$1;)V

    return-object v0
.end method

.method public withMoPubSchemeListener(Lcom/mopub/common/UrlHandler$MoPubSchemeListener;)Lcom/mopub/common/UrlHandler$Builder;
    .locals 0
    .param p1    # Lcom/mopub/common/UrlHandler$MoPubSchemeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mopub/common/UrlHandler$Builder;->moPubSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    .line 120
    return-object p0
.end method

.method public withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;
    .locals 0
    .param p1    # Lcom/mopub/common/UrlHandler$ResultActions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mopub/common/UrlHandler$Builder;->resultActions:Lcom/mopub/common/UrlHandler$ResultActions;

    .line 108
    return-object p0
.end method

.method public varargs withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;
    .locals 1
    .param p1    # Lcom/mopub/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/mopub/common/UrlAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-static {p1, p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/UrlHandler$Builder;->supportedUrlActions:Ljava/util/EnumSet;

    .line 83
    return-object p0
.end method

.method public withSupportedUrlActions(Ljava/util/EnumSet;)Lcom/mopub/common/UrlHandler$Builder;
    .locals 1
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/mopub/common/UrlAction;",
            ">;)",
            "Lcom/mopub/common/UrlHandler$Builder;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/UrlHandler$Builder;->supportedUrlActions:Ljava/util/EnumSet;

    .line 96
    return-object p0
.end method

.method public withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/common/UrlHandler$Builder;->skipShowMoPubBrowser:Z

    .line 131
    return-object p0
.end method
