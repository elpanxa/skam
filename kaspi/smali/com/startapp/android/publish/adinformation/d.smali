.class public Lcom/startapp/android/publish/adinformation/d;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient a:Landroid/graphics/Bitmap;

.field private transient b:Landroid/graphics/Bitmap;

.field private transient c:Landroid/graphics/Bitmap;

.field private height:I

.field private imageFallbackUrl:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/d;->imageUrl:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/d;->imageFallbackUrl:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/d;->c:Landroid/graphics/Bitmap;

    .line 29
    iput v1, p0, Lcom/startapp/android/publish/adinformation/d;->width:I

    .line 30
    iput v1, p0, Lcom/startapp/android/publish/adinformation/d;->height:I

    .line 35
    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/startapp/android/publish/adinformation/d;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/startapp/android/publish/adinformation/d;

    invoke-direct {v0}, Lcom/startapp/android/publish/adinformation/d;-><init>()V

    .line 130
    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/adinformation/d;->b(Ljava/lang/String;)V

    .line 132
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/d;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/d;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/d;->c:Landroid/graphics/Bitmap;

    .line 46
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/d;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adinformation/d;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/d;->c:Landroid/graphics/Bitmap;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/d;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/d;->name:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/startapp/android/publish/adinformation/d;->width:I

    .line 64
    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/startapp/android/publish/adinformation/d;->a:Landroid/graphics/Bitmap;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iput-object p1, p0, Lcom/startapp/android/publish/adinformation/d;->c:Landroid/graphics/Bitmap;

    .line 101
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/startapp/android/publish/adinformation/d;->imageFallbackUrl:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/startapp/android/publish/adinformation/d;->width:I

    return v0
.end method

.method protected b(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/d;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/startapp/android/publish/h/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/d;->b:Landroid/graphics/Bitmap;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/d;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/startapp/android/publish/adinformation/d;->height:I

    .line 68
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/startapp/android/publish/adinformation/d;->name:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/startapp/android/publish/adinformation/d;->height:I

    return v0
.end method

.method protected d()V
    .locals 4

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adinformation/d;->a(Landroid/graphics/Bitmap;)V

    .line 80
    new-instance v0, Lcom/startapp/android/publish/h/f;

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/d;->imageUrl:Ljava/lang/String;

    new-instance v2, Lcom/startapp/android/publish/adinformation/d$1;

    invoke-direct {v2, p0}, Lcom/startapp/android/publish/adinformation/d$1;-><init>(Lcom/startapp/android/publish/adinformation/d;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/f;-><init>(Ljava/lang/String;Lcom/startapp/android/publish/h/f$a;I)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/h/f;->a()V

    .line 86
    return-void
.end method

.method protected e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/d;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/d;->imageFallbackUrl:Ljava/lang/String;

    return-object v0
.end method
