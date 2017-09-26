.class public Lcom/startapp/android/publish/adinformation/b;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private enable:Z

.field private enableOverride:Z

.field private position:Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

.field private positionOverride:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v1, p0, Lcom/startapp/android/publish/adinformation/b;->enableOverride:Z

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/adinformation/b;->enable:Z

    .line 14
    iput-boolean v1, p0, Lcom/startapp/android/publish/adinformation/b;->positionOverride:Z

    .line 15
    sget-object v0, Lcom/startapp/android/publish/adinformation/AdInformationPositions;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;->getByName(Ljava/lang/String;)Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/b;->position:Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

    .line 19
    return-void
.end method

.method public static a()Lcom/startapp/android/publish/adinformation/b;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/startapp/android/publish/adinformation/b;

    invoke-direct {v0}, Lcom/startapp/android/publish/adinformation/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;)V
    .locals 1

    .prologue
    .line 40
    iput-object p1, p0, Lcom/startapp/android/publish/adinformation/b;->position:Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

    .line 42
    if-eqz p1, :cond_0

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/adinformation/b;->positionOverride:Z

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/adinformation/b;->positionOverride:Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/startapp/android/publish/adinformation/b;->enable:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/adinformation/b;->enableOverride:Z

    .line 33
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/startapp/android/publish/adinformation/b;->enable:Z

    return v0
.end method

.method public c()Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/b;->position:Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/startapp/android/publish/adinformation/b;->positionOverride:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/startapp/android/publish/adinformation/b;->enableOverride:Z

    return v0
.end method
