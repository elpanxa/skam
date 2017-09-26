.class Lcom/startapp/android/publish/e/b$2$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/e/b$2;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/e/b$2;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/e/b$2;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/startapp/android/publish/e/b$2$1;->a:Lcom/startapp/android/publish/e/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/startapp/android/publish/e/b$2$1;->a:Lcom/startapp/android/publish/e/b$2;

    iget-object v0, v0, Lcom/startapp/android/publish/e/b$2;->a:Lcom/startapp/android/publish/e/b;

    iget-object v0, v0, Lcom/startapp/android/publish/e/b;->d:Lcom/startapp/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/startapp/android/publish/e/b$2$1;->a:Lcom/startapp/android/publish/e/b$2;

    iget-object v1, v1, Lcom/startapp/android/publish/e/b$2;->a:Lcom/startapp/android/publish/e/b;

    iget-object v1, v1, Lcom/startapp/android/publish/e/b;->b:Lcom/startapp/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/AdEventListener;->onReceiveAd(Lcom/startapp/android/publish/Ad;)V

    .line 246
    return-void
.end method
