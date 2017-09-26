.class Lcom/startapp/android/publish/e/b$2$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/e/b$2;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/startapp/android/publish/e/b$2;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/e/b$2;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/startapp/android/publish/e/b$2$2;->c:Lcom/startapp/android/publish/e/b$2;

    iput-object p2, p0, Lcom/startapp/android/publish/e/b$2$2;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/startapp/android/publish/e/b$2$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/startapp/android/publish/e/b$2$2;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 260
    iget-object v0, p0, Lcom/startapp/android/publish/e/b$2$2;->c:Lcom/startapp/android/publish/e/b$2;

    iget-object v0, v0, Lcom/startapp/android/publish/e/b$2;->a:Lcom/startapp/android/publish/e/b;

    iget-object v0, v0, Lcom/startapp/android/publish/e/b;->b:Lcom/startapp/android/publish/Ad;

    iget-object v1, p0, Lcom/startapp/android/publish/e/b$2$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/Ad;->setErrorMessage(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/startapp/android/publish/e/b$2$2;->c:Lcom/startapp/android/publish/e/b$2;

    iget-object v0, v0, Lcom/startapp/android/publish/e/b$2;->a:Lcom/startapp/android/publish/e/b;

    iget-object v0, v0, Lcom/startapp/android/publish/e/b;->d:Lcom/startapp/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/startapp/android/publish/e/b$2$2;->c:Lcom/startapp/android/publish/e/b$2;

    iget-object v1, v1, Lcom/startapp/android/publish/e/b$2;->a:Lcom/startapp/android/publish/e/b;

    iget-object v1, v1, Lcom/startapp/android/publish/e/b;->b:Lcom/startapp/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V

    .line 262
    return-void
.end method
