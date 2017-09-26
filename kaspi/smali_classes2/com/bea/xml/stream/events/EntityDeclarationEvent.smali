.class public Lcom/bea/xml/stream/events/EntityDeclarationEvent;
.super Lcom/bea/xml/stream/events/BaseEvent;
.source "EntityDeclarationEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/EntityDeclaration;


# instance fields
.field protected final name:Ljava/lang/String;

.field protected final replacementText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/events/BaseEvent;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/bea/xml/stream/events/EntityDeclarationEvent;->name:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/bea/xml/stream/events/EntityDeclarationEvent;->replacementText:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected doWriteAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v0, "<!ENTITY "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/EntityDeclarationEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 52
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 54
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/EntityDeclarationEvent;->getReplacementText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 55
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bea/xml/stream/events/EntityDeclarationEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReplacementText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bea/xml/stream/events/EntityDeclarationEvent;->replacementText:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method
