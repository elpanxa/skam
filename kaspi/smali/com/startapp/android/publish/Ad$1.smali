.class Lcom/startapp/android/publish/Ad$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/e/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/Ad;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/model/AdPreferences;

.field final synthetic b:Lcom/startapp/android/publish/AdEventListener;

.field final synthetic c:Lcom/startapp/android/publish/Ad;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/Ad;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/startapp/android/publish/Ad$1;->c:Lcom/startapp/android/publish/Ad;

    iput-object p2, p0, Lcom/startapp/android/publish/Ad$1;->a:Lcom/startapp/android/publish/model/AdPreferences;

    iput-object p3, p0, Lcom/startapp/android/publish/Ad$1;->b:Lcom/startapp/android/publish/AdEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedLoadingMeta()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/startapp/android/publish/Ad$1;->c:Lcom/startapp/android/publish/Ad;

    iget-object v1, p0, Lcom/startapp/android/publish/Ad$1;->a:Lcom/startapp/android/publish/model/AdPreferences;

    iget-object v2, p0, Lcom/startapp/android/publish/Ad$1;->b:Lcom/startapp/android/publish/AdEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/Ad;->loadAds(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    .line 170
    return-void
.end method

.method public onFinishLoadingMeta()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/startapp/android/publish/Ad$1;->c:Lcom/startapp/android/publish/Ad;

    iget-object v1, p0, Lcom/startapp/android/publish/Ad$1;->a:Lcom/startapp/android/publish/model/AdPreferences;

    iget-object v2, p0, Lcom/startapp/android/publish/Ad$1;->b:Lcom/startapp/android/publish/AdEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/Ad;->loadAds(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    .line 163
    return-void
.end method
