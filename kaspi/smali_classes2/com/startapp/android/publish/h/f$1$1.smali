.class Lcom/startapp/android/publish/h/f$1$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/h/f$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/startapp/android/publish/h/f$1;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/h/f$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/startapp/android/publish/h/f$1$1;->b:Lcom/startapp/android/publish/h/f$1;

    iput-object p2, p0, Lcom/startapp/android/publish/h/f$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/startapp/android/publish/h/f$1$1;->b:Lcom/startapp/android/publish/h/f$1;

    iget-object v0, v0, Lcom/startapp/android/publish/h/f$1;->a:Lcom/startapp/android/publish/h/f;

    invoke-static {v0}, Lcom/startapp/android/publish/h/f;->b(Lcom/startapp/android/publish/h/f;)Lcom/startapp/android/publish/h/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/startapp/android/publish/h/f$1$1;->b:Lcom/startapp/android/publish/h/f$1;

    iget-object v0, v0, Lcom/startapp/android/publish/h/f$1;->a:Lcom/startapp/android/publish/h/f;

    invoke-static {v0}, Lcom/startapp/android/publish/h/f;->b(Lcom/startapp/android/publish/h/f;)Lcom/startapp/android/publish/h/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/h/f$1$1;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/startapp/android/publish/h/f$1$1;->b:Lcom/startapp/android/publish/h/f$1;

    iget-object v2, v2, Lcom/startapp/android/publish/h/f$1;->a:Lcom/startapp/android/publish/h/f;

    invoke-static {v2}, Lcom/startapp/android/publish/h/f;->c(Lcom/startapp/android/publish/h/f;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/startapp/android/publish/h/f$a;->a(Landroid/graphics/Bitmap;I)V

    .line 39
    :cond_0
    return-void
.end method
