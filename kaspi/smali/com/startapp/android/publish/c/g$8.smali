.class Lcom/startapp/android/publish/c/g$8;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/h/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/g;->y()V
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
    .line 195
    iput-object p1, p0, Lcom/startapp/android/publish/c/g$8;->a:Lcom/startapp/android/publish/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$8;->a:Lcom/startapp/android/publish/c/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/c/g;->b(Lcom/startapp/android/publish/c/g;Z)Z

    .line 200
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$8;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->c(Lcom/startapp/android/publish/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/c/g$8;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->g(Lcom/startapp/android/publish/c/g;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$8;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->e(Lcom/startapp/android/publish/c/g;)V

    .line 203
    :cond_0
    return-void
.end method
