.class public Lcom/startapp/android/publish/h/f;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/h/f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/startapp/android/publish/h/f$a;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/startapp/android/publish/h/f$a;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/startapp/android/publish/h/f;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/startapp/android/publish/h/f;->b:Lcom/startapp/android/publish/h/f$a;

    .line 24
    iput p3, p0, Lcom/startapp/android/publish/h/f;->c:I

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/h/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/startapp/android/publish/h/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/startapp/android/publish/h/f;)Lcom/startapp/android/publish/h/f$a;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/startapp/android/publish/h/f;->b:Lcom/startapp/android/publish/h/f$a;

    return-object v0
.end method

.method static synthetic c(Lcom/startapp/android/publish/h/f;)I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/startapp/android/publish/h/f;->c:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/startapp/android/publish/h/f$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/h/f$1;-><init>(Lcom/startapp/android/publish/h/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    return-void
.end method
