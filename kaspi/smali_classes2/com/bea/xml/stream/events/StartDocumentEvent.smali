.class public Lcom/bea/xml/stream/events/StartDocumentEvent;
.super Lcom/bea/xml/stream/events/BaseEvent;
.source "StartDocumentEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/StartDocument;


# instance fields
.field protected encodingScheme:Ljava/lang/String;

.field private encodingSchemeSet:Z

.field protected publicId:Ljava/lang/String;

.field protected standalone:Z

.field private standaloneSet:Z

.field protected systemId:Ljava/lang/String;

.field protected version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/bea/xml/stream/events/BaseEvent;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->systemId:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->publicId:Ljava/lang/String;

    .line 25
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->encodingScheme:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->standalone:Z

    .line 27
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->version:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->encodingSchemeSet:Z

    .line 29
    iput-boolean v1, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->standaloneSet:Z

    .line 31
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/StartDocumentEvent;->init()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->encodingScheme:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->standalone:Z

    .line 61
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->version:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->encodingSchemeSet:Z

    .line 63
    iput-boolean v1, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->standaloneSet:Z

    .line 64
    return-void
.end method

.method protected doWriteAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v0, "<?xml version=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    const-string v0, "\" encoding=\'"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->encodingScheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 73
    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 74
    iget-boolean v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->standaloneSet:Z

    if-eqz v0, :cond_0

    .line 75
    const-string v0, " standalone=\'"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->standalone:Z

    if-eqz v0, :cond_1

    const-string v0, "yes\'"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 78
    :cond_0
    const-string v0, "?>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 79
    return-void

    .line 76
    :cond_1
    const-string v0, "no\'"

    goto :goto_0
.end method

.method public encodingSet()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->encodingSchemeSet:Z

    return v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->encodingScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->version:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/events/StartDocumentEvent;->setEventType(I)V

    return-void
.end method

.method public isStandalone()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->standalone:Z

    return v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->encodingScheme:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->encodingSchemeSet:Z

    .line 54
    return-void
.end method

.method public setStandalone(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->standaloneSet:Z

    .line 44
    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->standalone:Z

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "yes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->standalone:Z

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->standalone:Z

    goto :goto_0
.end method

.method public setStandalone(Z)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->standaloneSet:Z

    .line 40
    iput-boolean p1, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->standalone:Z

    .line 41
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->version:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public standaloneSet()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/bea/xml/stream/events/StartDocumentEvent;->standaloneSet:Z

    return v0
.end method
