.class public Lcom/bea/xml/stream/NamespaceBase;
.super Lcom/bea/xml/stream/AttributeBase;
.source "NamespaceBase.java"

# interfaces
.implements Ljavax/xml/stream/events/Namespace;


# instance fields
.field declaresDefaultNamespace:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    const-string v0, "xmlns"

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1}, Lcom/bea/xml/stream/AttributeBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bea/xml/stream/NamespaceBase;->declaresDefaultNamespace:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/NamespaceBase;->declaresDefaultNamespace:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-string v0, "xmlns"

    invoke-direct {p0, v0, p1, p2}, Lcom/bea/xml/stream/AttributeBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iput-boolean v1, p0, Lcom/bea/xml/stream/NamespaceBase;->declaresDefaultNamespace:Z

    .line 35
    iput-boolean v1, p0, Lcom/bea/xml/stream/NamespaceBase;->declaresDefaultNamespace:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getEventType()I
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0xd

    return v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/bea/xml/stream/AttributeBase;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/bea/xml/stream/NamespaceBase;->declaresDefaultNamespace:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bea/xml/stream/AttributeBase;->getLocalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAttribute()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isDefaultNamespaceDeclaration()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/bea/xml/stream/NamespaceBase;->declaresDefaultNamespace:Z

    return v0
.end method

.method public isNamespace()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/bea/xml/stream/NamespaceBase;->declaresDefaultNamespace:Z

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "xmlns=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/NamespaceBase;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/NamespaceBase;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/NamespaceBase;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
