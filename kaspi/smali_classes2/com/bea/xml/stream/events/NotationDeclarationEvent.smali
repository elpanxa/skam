.class public Lcom/bea/xml/stream/events/NotationDeclarationEvent;
.super Lcom/bea/xml/stream/events/BaseEvent;
.source "NotationDeclarationEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/NotationDeclaration;


# instance fields
.field protected final name:Ljava/lang/String;

.field protected final publicId:Ljava/lang/String;

.field protected final systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/events/BaseEvent;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->name:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->publicId:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->systemId:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected doWriteAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x22

    .line 43
    const-string v0, "<!NOTATION "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->publicId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 46
    const-string v0, " PUBLIC \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->publicId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 52
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->systemId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 53
    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->systemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 57
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 58
    return-void

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->systemId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 50
    const-string v0, " SYSTEM"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->systemId:Ljava/lang/String;

    return-object v0
.end method
