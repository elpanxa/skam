.class public Lcom/startapp/android/publish/slider/sliding/a/d;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/slider/sliding/a/d$b;,
        Lcom/startapp/android/publish/slider/sliding/a/d$c;,
        Lcom/startapp/android/publish/slider/sliding/a/d$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/startapp/android/publish/slider/sliding/a/d$a;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 90
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/a/d$b;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/a/d$b;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/a/d;->a:Lcom/startapp/android/publish/slider/sliding/a/d$a;

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/a/d$c;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/a/d$c;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/a/d;->a:Lcom/startapp/android/publish/slider/sliding/a/d$a;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/d;->a:Lcom/startapp/android/publish/slider/sliding/a/d$a;

    invoke-interface {v0, p0}, Lcom/startapp/android/publish/slider/sliding/a/d$a;->a(Lcom/startapp/android/publish/slider/sliding/a/d;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/slider/sliding/a/d;->b:Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/startapp/android/publish/slider/sliding/a/d;->b:Ljava/lang/Object;

    .line 111
    return-void
.end method


# virtual methods
.method public a(I)Lcom/startapp/android/publish/slider/sliding/a/a;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/a/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/slider/sliding/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method
