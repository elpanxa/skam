.class Lcom/startapp/android/publish/nativead/NativeAdDetails$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/nativead/NativeAdDetails;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/nativead/NativeAdDetails;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/nativead/NativeAdDetails;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails$1;->a:Lcom/startapp/android/publish/nativead/NativeAdDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    const-string v0, "StartAppNativeAd"

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SingleAd ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails$1;->a:Lcom/startapp/android/publish/nativead/NativeAdDetails;

    invoke-static {v3}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a(Lcom/startapp/android/publish/nativead/NativeAdDetails;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Loaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails$1;->a:Lcom/startapp/android/publish/nativead/NativeAdDetails;

    invoke-static {v0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->b(Lcom/startapp/android/publish/nativead/NativeAdDetails;)Lcom/startapp/android/publish/nativead/NativeAdDetails$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails$1;->a:Lcom/startapp/android/publish/nativead/NativeAdDetails;

    invoke-static {v0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->b(Lcom/startapp/android/publish/nativead/NativeAdDetails;)Lcom/startapp/android/publish/nativead/NativeAdDetails$a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails$1;->a:Lcom/startapp/android/publish/nativead/NativeAdDetails;

    invoke-static {v1}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a(Lcom/startapp/android/publish/nativead/NativeAdDetails;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/nativead/NativeAdDetails$a;->onNativeAdDetailsLoaded(I)V

    .line 100
    :cond_0
    return-void
.end method
