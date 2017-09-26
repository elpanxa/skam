.class public Lcom/wutka/dtd/DTDAttribute;
.super Ljava/lang/Object;
.source "DTDAttribute.java"

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field public decl:Lcom/wutka/dtd/DTDDecl;

.field public defaultValue:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public type:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/wutka/dtd/DTDAttribute;->name:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    if-ne p1, p0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    instance-of v2, p1, Lcom/wutka/dtd/DTDAttribute;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 74
    :cond_2
    check-cast p1, Lcom/wutka/dtd/DTDAttribute;

    .line 76
    iget-object v2, p0, Lcom/wutka/dtd/DTDAttribute;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 78
    iget-object v2, p1, Lcom/wutka/dtd/DTDAttribute;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 82
    :cond_3
    iget-object v2, p0, Lcom/wutka/dtd/DTDAttribute;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wutka/dtd/DTDAttribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 85
    :cond_4
    iget-object v2, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    if-nez v2, :cond_5

    .line 87
    iget-object v2, p1, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 91
    :cond_5
    iget-object v2, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    iget-object v3, p1, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 94
    :cond_6
    iget-object v2, p0, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    if-nez v2, :cond_7

    .line 96
    iget-object v2, p1, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 100
    :cond_7
    iget-object v2, p0, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    iget-object v3, p1, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    invoke-virtual {v2, v3}, Lcom/wutka/dtd/DTDDecl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 103
    :cond_8
    iget-object v2, p0, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 105
    iget-object v2, p1, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 109
    :cond_9
    iget-object v2, p0, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getDecl()Lcom/wutka/dtd/DTDDecl;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    return-object v0
.end method

.method public setDecl(Lcom/wutka/dtd/DTDDecl;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    .line 151
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/wutka/dtd/DTDAttribute;->name:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setType(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 130
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/wutka/dtd/DTDEnumeration;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/wutka/dtd/DTDNotationList;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be String, DTDEnumeration or DTDNotationList"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/wutka/dtd/DTDAttribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 55
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDDecl;->write(Ljava/io/PrintWriter;)V

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 62
    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    :cond_2
    return-void

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    instance-of v0, v0, Lcom/wutka/dtd/DTDEnumeration;

    if-eqz v0, :cond_4

    .line 46
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    check-cast v0, Lcom/wutka/dtd/DTDEnumeration;

    .line 47
    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDEnumeration;->write(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 49
    :cond_4
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    instance-of v0, v0, Lcom/wutka/dtd/DTDNotationList;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    check-cast v0, Lcom/wutka/dtd/DTDNotationList;

    .line 52
    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDNotationList;->write(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method
