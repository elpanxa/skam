.class Lorg/simpleframework/xml/core/Function;
.super Ljava/lang/Object;
.source "Function.java"


# instance fields
.field private final contextual:Z

.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Function;-><init>(Ljava/lang/reflect/Method;Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Z)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p2, p0, Lorg/simpleframework/xml/core/Function;->contextual:Z

    .line 65
    iput-object p1, p0, Lorg/simpleframework/xml/core/Function;->method:Ljava/lang/reflect/Method;

    .line 66
    return-void
.end method


# virtual methods
.method public call(Lorg/simpleframework/xml/core/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 79
    if-eqz p2, :cond_1

    .line 80
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getSession()Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Session;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 83
    iget-boolean v1, p0, Lorg/simpleframework/xml/core/Function;->contextual:Z

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lorg/simpleframework/xml/core/Function;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Function;->method:Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
