.class public Lcom/startapp/android/publish/video/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/video/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/net/URL;

.field private c:Ljava/lang/String;

.field private d:Lcom/startapp/android/publish/video/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Lcom/startapp/android/publish/video/c$a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/startapp/android/publish/video/c;->a:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/startapp/android/publish/video/c;->b:Ljava/net/URL;

    .line 28
    iput-object p3, p0, Lcom/startapp/android/publish/video/c;->c:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/startapp/android/publish/video/c;->d:Lcom/startapp/android/publish/video/c$a;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/video/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/startapp/android/publish/video/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/startapp/android/publish/video/c;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/startapp/android/publish/video/c;->b:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic c(Lcom/startapp/android/publish/video/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/startapp/android/publish/video/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/startapp/android/publish/video/c;)Lcom/startapp/android/publish/video/c$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/startapp/android/publish/video/c;->d:Lcom/startapp/android/publish/video/c$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/startapp/android/publish/video/c$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/video/c$1;-><init>(Lcom/startapp/android/publish/video/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 48
    return-void
.end method
