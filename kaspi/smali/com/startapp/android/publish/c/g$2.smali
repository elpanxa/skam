.class Lcom/startapp/android/publish/c/g$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/g;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/startapp/android/publish/c/g;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/c/g;I)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/startapp/android/publish/c/g$2;->b:Lcom/startapp/android/publish/c/g;

    iput p2, p0, Lcom/startapp/android/publish/c/g$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$2;->b:Lcom/startapp/android/publish/c/g;

    iget v1, p0, Lcom/startapp/android/publish/c/g$2;->a:I

    invoke-static {v0, v1}, Lcom/startapp/android/publish/c/g;->a(Lcom/startapp/android/publish/c/g;I)V

    .line 481
    return-void
.end method
