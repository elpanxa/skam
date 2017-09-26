.class public Lcom/adsdk/sdk/customevents/CustomEventNativeFactory;
.super Ljava/lang/Object;
.source "CustomEventNativeFactory.java"


# static fields
.field private static instance:Lcom/adsdk/sdk/customevents/CustomEventNativeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/adsdk/sdk/customevents/CustomEventNativeFactory;

    invoke-direct {v0}, Lcom/adsdk/sdk/customevents/CustomEventNativeFactory;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/customevents/CustomEventNativeFactory;->instance:Lcom/adsdk/sdk/customevents/CustomEventNativeFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/adsdk/sdk/customevents/CustomEventNative;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 9
    sget-object v0, Lcom/adsdk/sdk/customevents/CustomEventNativeFactory;->instance:Lcom/adsdk/sdk/customevents/CustomEventNativeFactory;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/customevents/CustomEventNativeFactory;->internalCreate(Ljava/lang/String;)Lcom/adsdk/sdk/customevents/CustomEventNative;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected internalCreate(Ljava/lang/String;)Lcom/adsdk/sdk/customevents/CustomEventNative;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.adsdk.sdk.customevents."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Native"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 15
    const-class v1, Lcom/adsdk/sdk/customevents/CustomEventNative;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 16
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 17
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 18
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/customevents/CustomEventNative;

    return-object v0
.end method
