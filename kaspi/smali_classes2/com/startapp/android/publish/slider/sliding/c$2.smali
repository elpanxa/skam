.class Lcom/startapp/android/publish/slider/sliding/c$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/slider/sliding/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/slider/sliding/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/slider/sliding/c;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/startapp/android/publish/slider/sliding/c$2;->a:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c$2;->a:Lcom/startapp/android/publish/slider/sliding/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/slider/sliding/c;->c(I)V

    .line 337
    return-void
.end method
