.class Lcom/startapp/android/publish/StartAppSDK$a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/StartAppSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/startapp/android/publish/StartAppSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/startapp/android/publish/StartAppSDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/StartAppSDK;-><init>(Lcom/startapp/android/publish/StartAppSDK$1;)V

    sput-object v0, Lcom/startapp/android/publish/StartAppSDK$a;->a:Lcom/startapp/android/publish/StartAppSDK;

    return-void
.end method

.method static synthetic a()Lcom/startapp/android/publish/StartAppSDK;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/startapp/android/publish/StartAppSDK$a;->a:Lcom/startapp/android/publish/StartAppSDK;

    return-object v0
.end method
