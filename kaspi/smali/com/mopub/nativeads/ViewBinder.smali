.class public Lcom/mopub/nativeads/ViewBinder;
.super Ljava/lang/Object;
.source "ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/ViewBinder$1;,
        Lcom/mopub/nativeads/ViewBinder$Builder;
    }
.end annotation


# instance fields
.field final callToActionId:I

.field final extras:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final iconImageId:I

.field final layoutId:I

.field final mainImageId:I

.field final privacyInformationIconImageId:I

.field final textId:I

.field final titleId:I


# direct methods
.method private constructor <init>(Lcom/mopub/nativeads/ViewBinder$Builder;)V
    .locals 1
    .param p1    # Lcom/mopub/nativeads/ViewBinder$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    # getter for: Lcom/mopub/nativeads/ViewBinder$Builder;->layoutId:I
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$100(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->layoutId:I

    .line 90
    # getter for: Lcom/mopub/nativeads/ViewBinder$Builder;->titleId:I
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$200(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->titleId:I

    .line 91
    # getter for: Lcom/mopub/nativeads/ViewBinder$Builder;->textId:I
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$300(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->textId:I

    .line 92
    # getter for: Lcom/mopub/nativeads/ViewBinder$Builder;->callToActionId:I
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$400(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->callToActionId:I

    .line 93
    # getter for: Lcom/mopub/nativeads/ViewBinder$Builder;->mainImageId:I
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$500(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->mainImageId:I

    .line 94
    # getter for: Lcom/mopub/nativeads/ViewBinder$Builder;->iconImageId:I
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$600(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->iconImageId:I

    .line 95
    # getter for: Lcom/mopub/nativeads/ViewBinder$Builder;->privacyInformationIconImageId:I
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$700(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->privacyInformationIconImageId:I

    .line 96
    # getter for: Lcom/mopub/nativeads/ViewBinder$Builder;->extras:Ljava/util/Map;
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$800(Lcom/mopub/nativeads/ViewBinder$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/ViewBinder;->extras:Ljava/util/Map;

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/nativeads/ViewBinder$Builder;Lcom/mopub/nativeads/ViewBinder$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/ViewBinder;-><init>(Lcom/mopub/nativeads/ViewBinder$Builder;)V

    return-void
.end method
