.class Lcom/startapp/android/publish/adinformation/a$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adinformation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adinformation/a;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adinformation/a;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/startapp/android/publish/adinformation/a$2;->a:Lcom/startapp/android/publish/adinformation/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a$2;->a:Lcom/startapp/android/publish/adinformation/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/a;->c()V

    .line 94
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a$2;->a:Lcom/startapp/android/publish/adinformation/a;

    invoke-static {v0}, Lcom/startapp/android/publish/adinformation/a;->b(Lcom/startapp/android/publish/adinformation/a;)Lcom/startapp/android/publish/adinformation/e;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/a$2;->a:Lcom/startapp/android/publish/adinformation/a;

    invoke-static {v1}, Lcom/startapp/android/publish/adinformation/a;->a(Lcom/startapp/android/publish/adinformation/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/startapp/android/publish/adinformation/e;->a(Landroid/content/Context;Z)V

    .line 95
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a$2;->a:Lcom/startapp/android/publish/adinformation/a;

    invoke-static {v0}, Lcom/startapp/android/publish/adinformation/a;->c(Lcom/startapp/android/publish/adinformation/a;)Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/a$2;->a:Lcom/startapp/android/publish/adinformation/a;

    invoke-static {v1}, Lcom/startapp/android/publish/adinformation/a;->a(Lcom/startapp/android/publish/adinformation/a;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->a(Landroid/content/Context;Z)V

    .line 97
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a$2;->a:Lcom/startapp/android/publish/adinformation/a;

    invoke-static {v0, v3}, Lcom/startapp/android/publish/adinformation/a;->a(Lcom/startapp/android/publish/adinformation/a;Z)V

    .line 98
    return-void
.end method
