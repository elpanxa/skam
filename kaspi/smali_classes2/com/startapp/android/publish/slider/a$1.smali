.class Lcom/startapp/android/publish/slider/a$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/slider/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/startapp/android/publish/slider/a;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/slider/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/startapp/android/publish/slider/a$1;->b:Lcom/startapp/android/publish/slider/a;

    iput-object p2, p0, Lcom/startapp/android/publish/slider/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 25
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 26
    iget-object v0, p0, Lcom/startapp/android/publish/slider/a$1;->b:Lcom/startapp/android/publish/slider/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/startapp/android/publish/slider/a$1;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/slider/a;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    .line 27
    return-void
.end method
