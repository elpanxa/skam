.class Lcom/startapp/android/publish/slider/sliding/a/d$b;
.super Lcom/startapp/android/publish/slider/sliding/a/d$c;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/slider/sliding/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/startapp/android/publish/slider/sliding/a/d$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/startapp/android/publish/slider/sliding/a/d;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/a/d$b$1;

    invoke-direct {v0, p0, p1}, Lcom/startapp/android/publish/slider/sliding/a/d$b$1;-><init>(Lcom/startapp/android/publish/slider/sliding/a/d$b;Lcom/startapp/android/publish/slider/sliding/a/d;)V

    invoke-static {v0}, Lcom/startapp/android/publish/slider/sliding/a/e;->a(Lcom/startapp/android/publish/slider/sliding/a/e$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
