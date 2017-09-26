.class public Lcom/startapp/android/publish/a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/AdDisplayListener;


# instance fields
.field private a:Lcom/startapp/android/publish/AdDisplayListener;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/AdDisplayListener;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/startapp/android/publish/a;->a:Lcom/startapp/android/publish/AdDisplayListener;

    .line 12
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/a;)Lcom/startapp/android/publish/AdDisplayListener;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/startapp/android/publish/a;->a:Lcom/startapp/android/publish/AdDisplayListener;

    return-object v0
.end method


# virtual methods
.method public adClicked(Lcom/startapp/android/publish/Ad;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/startapp/android/publish/a;->a:Lcom/startapp/android/publish/AdDisplayListener;

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapp/android/publish/a$3;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/a$3;-><init>(Lcom/startapp/android/publish/a;Lcom/startapp/android/publish/Ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    :cond_0
    return-void
.end method

.method public adDisplayed(Lcom/startapp/android/publish/Ad;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/startapp/android/publish/a;->a:Lcom/startapp/android/publish/AdDisplayListener;

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapp/android/publish/a$2;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/a$2;-><init>(Lcom/startapp/android/publish/a;Lcom/startapp/android/publish/Ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    :cond_0
    return-void
.end method

.method public adHidden(Lcom/startapp/android/publish/Ad;)V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/startapp/android/publish/a;->a:Lcom/startapp/android/publish/AdDisplayListener;

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapp/android/publish/a$1;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/a$1;-><init>(Lcom/startapp/android/publish/a;Lcom/startapp/android/publish/Ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    :cond_0
    return-void
.end method

.method public adNotDisplayed(Lcom/startapp/android/publish/Ad;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/startapp/android/publish/a;->a:Lcom/startapp/android/publish/AdDisplayListener;

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapp/android/publish/a$4;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/a$4;-><init>(Lcom/startapp/android/publish/a;Lcom/startapp/android/publish/Ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    :cond_0
    return-void
.end method
