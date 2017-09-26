.class Lcom/startapp/android/publish/e/b$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/e/b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/startapp/android/publish/e/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/e/b;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/startapp/android/publish/e/b$3;->b:Lcom/startapp/android/publish/e/b;

    iput-object p2, p0, Lcom/startapp/android/publish/e/b$3;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/startapp/android/publish/e/b$3;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 282
    iget-object v0, p0, Lcom/startapp/android/publish/e/b$3;->b:Lcom/startapp/android/publish/e/b;

    iget-object v0, v0, Lcom/startapp/android/publish/e/b;->d:Lcom/startapp/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/startapp/android/publish/e/b$3;->b:Lcom/startapp/android/publish/e/b;

    iget-object v1, v1, Lcom/startapp/android/publish/e/b;->b:Lcom/startapp/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/AdEventListener;->onReceiveAd(Lcom/startapp/android/publish/Ad;)V

    .line 283
    return-void
.end method
