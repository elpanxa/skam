.class Lcom/startapp/android/publish/c/b$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/b;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/c/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/c/b;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/startapp/android/publish/c/b$2;->a:Lcom/startapp/android/publish/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/startapp/android/publish/c/b$2;->a:Lcom/startapp/android/publish/c/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/b;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 217
    return-void
.end method
