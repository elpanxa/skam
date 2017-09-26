.class Lcom/adsdk/sdk/nativeads/NativeAdManager$2;
.super Ljava/lang/Object;
.source "NativeAdManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/nativeads/NativeAdManager;->requestAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/nativeads/NativeAdManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$2;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 74
    const-string v0, "ADSDK"

    const-string v1, "Exception in native ad request thread"

    invoke-static {v0, v1, p2}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method
