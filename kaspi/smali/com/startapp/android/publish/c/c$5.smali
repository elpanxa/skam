.class Lcom/startapp/android/publish/c/c$5;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/c;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/c/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/c/c;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/startapp/android/publish/c/c$5;->a:Lcom/startapp/android/publish/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/startapp/android/publish/c/c$5;->a:Lcom/startapp/android/publish/c/c;

    iget-object v0, v0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/startapp/android/publish/c/c$5;->a:Lcom/startapp/android/publish/c/c;

    iget-object v0, v0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/startapp/android/publish/h/b;->b(Landroid/webkit/WebView;)V

    .line 204
    :cond_0
    return-void
.end method
