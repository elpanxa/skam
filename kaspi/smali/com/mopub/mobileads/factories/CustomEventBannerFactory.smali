.class public Lcom/mopub/mobileads/factories/CustomEventBannerFactory;
.super Ljava/lang/Object;
.source "CustomEventBannerFactory.java"


# static fields
.field private static instance:Lcom/mopub/mobileads/factories/CustomEventBannerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/mopub/mobileads/factories/CustomEventBannerFactory;

    invoke-direct {v0}, Lcom/mopub/mobileads/factories/CustomEventBannerFactory;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/factories/CustomEventBannerFactory;->instance:Lcom/mopub/mobileads/factories/CustomEventBannerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventBanner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 11
    sget-object v0, Lcom/mopub/mobileads/factories/CustomEventBannerFactory;->instance:Lcom/mopub/mobileads/factories/CustomEventBannerFactory;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/factories/CustomEventBannerFactory;->internalCreate(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventBanner;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/mopub/mobileads/factories/CustomEventBannerFactory;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16
    sput-object p0, Lcom/mopub/mobileads/factories/CustomEventBannerFactory;->instance:Lcom/mopub/mobileads/factories/CustomEventBannerFactory;

    .line 17
    return-void
.end method


# virtual methods
.method protected internalCreate(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventBanner;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/CustomEventBanner;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 22
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 23
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 24
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/CustomEventBanner;

    return-object v0
.end method
