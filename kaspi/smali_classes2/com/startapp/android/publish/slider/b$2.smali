.class Lcom/startapp/android/publish/slider/b$2;
.super Landroid/webkit/WebView;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/slider/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/slider/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/slider/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/startapp/android/publish/slider/b$2;->a:Lcom/startapp/android/publish/slider/b;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    packed-switch p1, :pswitch_data_0

    .line 120
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$2;->a:Lcom/startapp/android/publish/slider/b;

    invoke-static {v0}, Lcom/startapp/android/publish/slider/b;->c(Lcom/startapp/android/publish/slider/b;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$2;->a:Lcom/startapp/android/publish/slider/b;

    invoke-static {v0}, Lcom/startapp/android/publish/slider/b;->c(Lcom/startapp/android/publish/slider/b;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$2;->a:Lcom/startapp/android/publish/slider/b;

    invoke-static {v0}, Lcom/startapp/android/publish/slider/b;->c(Lcom/startapp/android/publish/slider/b;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 116
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$2;->a:Lcom/startapp/android/publish/slider/b;

    invoke-static {v0}, Lcom/startapp/android/publish/slider/b;->d(Lcom/startapp/android/publish/slider/b;)Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$2;->a:Lcom/startapp/android/publish/slider/b;

    invoke-static {v0}, Lcom/startapp/android/publish/slider/b;->d(Lcom/startapp/android/publish/slider/b;)Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->b()V

    goto :goto_1

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
