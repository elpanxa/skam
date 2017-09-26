.class Lcom/startapp/android/publish/slider/b$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/slider/b;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/model/AdPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/slider/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/slider/b;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/startapp/android/publish/slider/b$1;->a:Lcom/startapp/android/publish/slider/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 3

    .prologue
    .line 88
    const-string v0, "Slider"

    const/4 v1, 0x6

    const-string v2, "Error loading Slider"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 3

    .prologue
    .line 81
    const-string v0, "Slider"

    const/4 v1, 0x3

    const-string v2, "Slider loaded"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$1;->a:Lcom/startapp/android/publish/slider/b;

    invoke-static {v0}, Lcom/startapp/android/publish/slider/b;->a(Lcom/startapp/android/publish/slider/b;)V

    .line 83
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$1;->a:Lcom/startapp/android/publish/slider/b;

    invoke-static {v0}, Lcom/startapp/android/publish/slider/b;->b(Lcom/startapp/android/publish/slider/b;)V

    .line 84
    return-void
.end method
