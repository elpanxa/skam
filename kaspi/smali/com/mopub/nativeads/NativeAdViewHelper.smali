.class Lcom/mopub/nativeads/NativeAdViewHelper;
.super Ljava/lang/Object;
.source "NativeAdViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final sNativeAdMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/NativeAdViewHelper;->sNativeAdMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static clearNativeAd(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    sget-object v0, Lcom/mopub/nativeads/NativeAdViewHelper;->sNativeAdMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeAd;->clear(Landroid/view/View;)V

    .line 78
    :cond_0
    return-void
.end method

.method static getAdView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/app/Activity;Lcom/mopub/nativeads/NativeAd;Lcom/mopub/nativeads/ViewBinder;)Landroid/view/View;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/nativeads/NativeAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/mopub/nativeads/ViewBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    const-string v0, "ViewBinder is null."

    invoke-static {p4, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 47
    if-eqz p0, :cond_0

    .line 48
    invoke-static {p2, p0}, Lcom/mopub/nativeads/NativeAdViewHelper;->clearNativeAd(Landroid/content/Context;Landroid/view/View;)V

    .line 51
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/mopub/nativeads/NativeAd;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_4

    .line 52
    :cond_1
    const-string v0, "NativeAd or viewBinder null or invalid. Returning empty view"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 54
    if-eqz p0, :cond_2

    sget-object v0, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->EMPTY:Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 55
    :cond_2
    new-instance p0, Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    sget-object v0, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->EMPTY:Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_3
    :goto_0
    return-object p0

    .line 61
    :cond_4
    if-eqz p0, :cond_5

    sget-object v0, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->AD:Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 62
    :cond_5
    invoke-virtual {p3, p2, p1}, Lcom/mopub/nativeads/NativeAd;->createAdView(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 63
    sget-object v0, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->AD:Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :cond_6
    invoke-static {p2, p0, p3}, Lcom/mopub/nativeads/NativeAdViewHelper;->prepareNativeAd(Landroid/content/Context;Landroid/view/View;Lcom/mopub/nativeads/NativeAd;)V

    .line 66
    invoke-virtual {p3, p0}, Lcom/mopub/nativeads/NativeAd;->renderAdView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private static prepareNativeAd(Landroid/content/Context;Landroid/view/View;Lcom/mopub/nativeads/NativeAd;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/nativeads/NativeAd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    sget-object v0, Lcom/mopub/nativeads/NativeAdViewHelper;->sNativeAdMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {p2, p1}, Lcom/mopub/nativeads/NativeAd;->prepare(Landroid/view/View;)V

    .line 85
    return-void
.end method
