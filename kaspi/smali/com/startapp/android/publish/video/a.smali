.class public Lcom/startapp/android/publish/video/a;
.super Lcom/startapp/android/publish/video/e;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/video/a$a;
    }
.end annotation


# instance fields
.field private pauseNum:I

.field private pauseOrigin:Lcom/startapp/android/publish/video/a$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/startapp/android/publish/video/a$a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/video/e;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/startapp/android/publish/video/a;->pauseNum:I

    .line 25
    iput-object p4, p0, Lcom/startapp/android/publish/video/a;->pauseOrigin:Lcom/startapp/android/publish/video/a$a;

    .line 26
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&pn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/video/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&po="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/video/a;->c()Lcom/startapp/android/publish/video/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/video/a$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/startapp/android/publish/video/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/startapp/android/publish/video/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/startapp/android/publish/video/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/startapp/android/publish/video/a;->pauseNum:I

    return v0
.end method

.method public c()Lcom/startapp/android/publish/video/a$a;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/startapp/android/publish/video/a;->pauseOrigin:Lcom/startapp/android/publish/video/a$a;

    return-object v0
.end method
