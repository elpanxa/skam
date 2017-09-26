.class public Lcom/bea/xml/stream/events/CharactersEvent;
.super Lcom/bea/xml/stream/events/BaseEvent;
.source "CharactersEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/Characters;


# instance fields
.field private data:Ljava/lang/String;

.field private isCData:Z

.field private isIgnorable:Z

.field private isSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/bea/xml/stream/events/BaseEvent;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isCData:Z

    .line 29
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isSpace:Z

    .line 30
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isIgnorable:Z

    .line 33
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/CharactersEvent;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/bea/xml/stream/events/BaseEvent;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isCData:Z

    .line 29
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isSpace:Z

    .line 30
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isIgnorable:Z

    .line 37
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/CharactersEvent;->init()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/events/CharactersEvent;->setData(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/bea/xml/stream/events/BaseEvent;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isCData:Z

    .line 29
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isSpace:Z

    .line 30
    iput-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isIgnorable:Z

    .line 42
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/CharactersEvent;->init()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/events/CharactersEvent;->setData(Ljava/lang/String;)V

    .line 44
    iput-boolean p2, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isCData:Z

    .line 45
    return-void
.end method


# virtual methods
.method protected doWriteAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isCData:Z

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "<![CDATA["

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/CharactersEvent;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 73
    const-string v0, "]]>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/CharactersEvent;->getData()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 78
    if-lez v3, :cond_0

    move v0, v1

    .line 83
    :goto_1
    if-ge v0, v3, :cond_2

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_2
    :sswitch_0
    if-ne v0, v3, :cond_3

    .line 93
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_3
    if-lez v0, :cond_4

    .line 96
    invoke-virtual {p1, v2, v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 98
    :cond_4
    :goto_2
    if-ge v0, v3, :cond_0

    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 100
    sparse-switch v1, :sswitch_data_1

    .line 111
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 98
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 102
    :sswitch_1
    const-string v1, "&amp;"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 105
    :sswitch_2
    const-string v1, "&lt;"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 108
    :sswitch_3
    const-string v1, "&gt;"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch

    .line 100
    :sswitch_data_1
    .sparse-switch
        0x26 -> :sswitch_1
        0x3c -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDataAsArray()[C
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->data:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/events/CharactersEvent;->setEventType(I)V

    return-void
.end method

.method public isCData()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isCData:Z

    return v0
.end method

.method public isIgnorableWhiteSpace()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isIgnorable:Z

    return v0
.end method

.method public isWhiteSpace()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isSpace:Z

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/bea/xml/stream/events/CharactersEvent;->data:Ljava/lang/String;

    return-void
.end method

.method public setIgnorable(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isIgnorable:Z

    .line 57
    return-void
.end method

.method public setSpace(Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/bea/xml/stream/events/CharactersEvent;->isSpace:Z

    .line 48
    return-void
.end method
