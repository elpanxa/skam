.class Lcom/startapp/android/publish/adinformation/c$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adinformation/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adinformation/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adinformation/c;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/startapp/android/publish/adinformation/c$2;->a:Lcom/startapp/android/publish/adinformation/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c$2;->a:Lcom/startapp/android/publish/adinformation/c;

    invoke-static {v0}, Lcom/startapp/android/publish/adinformation/c;->b(Lcom/startapp/android/publish/adinformation/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c$2;->a:Lcom/startapp/android/publish/adinformation/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adinformation/c;->a(Lcom/startapp/android/publish/adinformation/c;Z)Z

    .line 50
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c$2;->a:Lcom/startapp/android/publish/adinformation/c;

    invoke-static {v0}, Lcom/startapp/android/publish/adinformation/c;->c(Lcom/startapp/android/publish/adinformation/c;)V

    .line 52
    :cond_0
    return-void
.end method
