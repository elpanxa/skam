.class Lcom/startapp/android/publish/b$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/b;->onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/Ad;

.field final synthetic b:Lcom/startapp/android/publish/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/b;Lcom/startapp/android/publish/Ad;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/startapp/android/publish/b$2;->b:Lcom/startapp/android/publish/b;

    iput-object p2, p0, Lcom/startapp/android/publish/b$2;->a:Lcom/startapp/android/publish/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/startapp/android/publish/b$2;->b:Lcom/startapp/android/publish/b;

    invoke-static {v0}, Lcom/startapp/android/publish/b;->a(Lcom/startapp/android/publish/b;)Lcom/startapp/android/publish/AdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/b$2;->a:Lcom/startapp/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V

    .line 39
    return-void
.end method
