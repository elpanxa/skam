.class Lcom/startapp/android/publish/c/c$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/c;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/c/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/c/c;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/startapp/android/publish/c/c$4;->a:Lcom/startapp/android/publish/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/startapp/android/publish/c/c$4;->a:Lcom/startapp/android/publish/c/c;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/c;->m()V

    .line 183
    return-void
.end method
