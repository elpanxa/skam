.class Lcom/startapp/android/publish/adinformation/c$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adinformation/c;->setOnInfoClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/startapp/android/publish/adinformation/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adinformation/c;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/startapp/android/publish/adinformation/c$3;->b:Lcom/startapp/android/publish/adinformation/c;

    iput-object p2, p0, Lcom/startapp/android/publish/adinformation/c$3;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c$3;->b:Lcom/startapp/android/publish/adinformation/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adinformation/c;->a(Lcom/startapp/android/publish/adinformation/c;Z)Z

    .line 156
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c$3;->b:Lcom/startapp/android/publish/adinformation/c;

    invoke-static {v0}, Lcom/startapp/android/publish/adinformation/c;->e(Lcom/startapp/android/publish/adinformation/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/c$3;->b:Lcom/startapp/android/publish/adinformation/c;

    invoke-static {v1}, Lcom/startapp/android/publish/adinformation/c;->d(Lcom/startapp/android/publish/adinformation/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c$3;->b:Lcom/startapp/android/publish/adinformation/c;

    invoke-static {v0}, Lcom/startapp/android/publish/adinformation/c;->c(Lcom/startapp/android/publish/adinformation/c;)V

    .line 159
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c$3;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 161
    return-void
.end method
