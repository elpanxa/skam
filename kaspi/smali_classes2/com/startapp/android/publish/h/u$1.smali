.class final Lcom/startapp/android/publish/h/u$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/h/u;->c(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/startapp/android/publish/h/s;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/startapp/android/publish/h/u$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/startapp/android/publish/h/u$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/startapp/android/publish/h/u$1;->c:Lcom/startapp/android/publish/h/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/h/u$1;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/startapp/android/publish/h/u$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/h/u$1;->c:Lcom/startapp/android/publish/h/s;

    invoke-virtual {v2}, Lcom/startapp/android/publish/h/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/startapp/android/publish/h/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/g/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_0
    .catch Lcom/startapp/android/publish/h/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    const/4 v1, 0x6

    const-string v2, "Error sending tracking message"

    invoke-static {v1, v2, v0}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
