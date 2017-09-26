.class Lcom/startapp/android/publish/c/g$11;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/g;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/c/g;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/c/g;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/startapp/android/publish/c/g$11;->a:Lcom/startapp/android/publish/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$11;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->i(Lcom/startapp/android/publish/c/g;)I

    move-result v0

    .line 319
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/startapp/android/publish/c/g$11;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v1}, Lcom/startapp/android/publish/c/g;->j(Lcom/startapp/android/publish/c/g;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/c/g$11;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v2, v0}, Lcom/startapp/android/publish/c/g;->b(Lcom/startapp/android/publish/c/g;I)J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    :cond_0
    return-void
.end method
