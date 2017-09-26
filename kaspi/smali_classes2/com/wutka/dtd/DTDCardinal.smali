.class public Lcom/wutka/dtd/DTDCardinal;
.super Ljava/lang/Object;
.source "DTDCardinal.java"

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# static fields
.field public static final NONE:Lcom/wutka/dtd/DTDCardinal;

.field public static final ONEMANY:Lcom/wutka/dtd/DTDCardinal;

.field public static final OPTIONAL:Lcom/wutka/dtd/DTDCardinal;

.field public static final ZEROMANY:Lcom/wutka/dtd/DTDCardinal;


# instance fields
.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/wutka/dtd/DTDCardinal;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/wutka/dtd/DTDCardinal;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/DTDCardinal;->NONE:Lcom/wutka/dtd/DTDCardinal;

    .line 22
    new-instance v0, Lcom/wutka/dtd/DTDCardinal;

    const/4 v1, 0x1

    const-string v2, "OPTIONAL"

    invoke-direct {v0, v1, v2}, Lcom/wutka/dtd/DTDCardinal;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/DTDCardinal;->OPTIONAL:Lcom/wutka/dtd/DTDCardinal;

    .line 25
    new-instance v0, Lcom/wutka/dtd/DTDCardinal;

    const/4 v1, 0x2

    const-string v2, "ZEROMANY"

    invoke-direct {v0, v1, v2}, Lcom/wutka/dtd/DTDCardinal;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/DTDCardinal;->ZEROMANY:Lcom/wutka/dtd/DTDCardinal;

    .line 28
    new-instance v0, Lcom/wutka/dtd/DTDCardinal;

    const/4 v1, 0x3

    const-string v2, "ONEMANY"

    invoke-direct {v0, v1, v2}, Lcom/wutka/dtd/DTDCardinal;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/DTDCardinal;->ONEMANY:Lcom/wutka/dtd/DTDCardinal;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/wutka/dtd/DTDCardinal;->type:I

    .line 36
    iput-object p2, p0, Lcom/wutka/dtd/DTDCardinal;->name:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    if-ne p1, p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    instance-of v2, p1, Lcom/wutka/dtd/DTDCardinal;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 44
    :cond_2
    check-cast p1, Lcom/wutka/dtd/DTDCardinal;

    .line 45
    iget v2, p1, Lcom/wutka/dtd/DTDCardinal;->type:I

    iget v3, p0, Lcom/wutka/dtd/DTDCardinal;->type:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 46
    goto :goto_0
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/wutka/dtd/DTDCardinal;->NONE:Lcom/wutka/dtd/DTDCardinal;

    if-ne p0, v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    sget-object v0, Lcom/wutka/dtd/DTDCardinal;->OPTIONAL:Lcom/wutka/dtd/DTDCardinal;

    if-ne p0, v0, :cond_2

    .line 56
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    sget-object v0, Lcom/wutka/dtd/DTDCardinal;->ZEROMANY:Lcom/wutka/dtd/DTDCardinal;

    if-ne p0, v0, :cond_3

    .line 60
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_3
    sget-object v0, Lcom/wutka/dtd/DTDCardinal;->ONEMANY:Lcom/wutka/dtd/DTDCardinal;

    if-ne p0, v0, :cond_0

    .line 64
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method
