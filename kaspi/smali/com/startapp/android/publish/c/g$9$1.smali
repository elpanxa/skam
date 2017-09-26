.class Lcom/startapp/android/publish/c/g$9$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/g$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/c/g$9;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/c/g$9;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/startapp/android/publish/c/g$9$1;->a:Lcom/startapp/android/publish/c/g$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$9$1;->a:Lcom/startapp/android/publish/c/g$9;

    iget-object v0, v0, Lcom/startapp/android/publish/c/g$9;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->e(Lcom/startapp/android/publish/c/g;)V

    .line 226
    return-void
.end method
