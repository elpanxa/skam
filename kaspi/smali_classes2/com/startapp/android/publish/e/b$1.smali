.class Lcom/startapp/android/publish/e/b$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/video/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/e/b;->a(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Lcom/startapp/android/publish/e/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/e/b;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/startapp/android/publish/e/b$1;->b:Lcom/startapp/android/publish/e/b;

    iput-object p2, p0, Lcom/startapp/android/publish/e/b$1;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/startapp/android/publish/e/b$1;->b:Lcom/startapp/android/publish/e/b;

    iget-object v1, p0, Lcom/startapp/android/publish/e/b$1;->a:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/e/b;->a(Lcom/startapp/android/publish/e/b;Ljava/lang/Boolean;)V

    .line 197
    iget-object v0, p0, Lcom/startapp/android/publish/e/b$1;->b:Lcom/startapp/android/publish/e/b;

    invoke-static {v0}, Lcom/startapp/android/publish/e/b;->a(Lcom/startapp/android/publish/e/b;)Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/video/VideoAdDetails;->setLocalVideoPath(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/startapp/android/publish/e/b$1;->b:Lcom/startapp/android/publish/e/b;

    iget-object v1, p0, Lcom/startapp/android/publish/e/b$1;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/e/b;->a(Z)V

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/e/b$1;->b:Lcom/startapp/android/publish/e/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/e/b;->a(Z)V

    .line 201
    iget-object v0, p0, Lcom/startapp/android/publish/e/b$1;->b:Lcom/startapp/android/publish/e/b;

    iget-object v0, v0, Lcom/startapp/android/publish/e/b;->d:Lcom/startapp/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/startapp/android/publish/e/b$1;->b:Lcom/startapp/android/publish/e/b;

    iget-object v1, v1, Lcom/startapp/android/publish/e/b;->b:Lcom/startapp/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V

    goto :goto_0
.end method
