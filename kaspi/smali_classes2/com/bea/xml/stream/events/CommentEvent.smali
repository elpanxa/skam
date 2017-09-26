.class public Lcom/bea/xml/stream/events/CommentEvent;
.super Lcom/bea/xml/stream/events/CharactersEvent;
.source "CommentEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/Comment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/bea/xml/stream/events/CharactersEvent;-><init>()V

    invoke-virtual {p0}, Lcom/bea/xml/stream/events/CommentEvent;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/bea/xml/stream/events/CharactersEvent;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/CommentEvent;->init()V

    .line 25
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/events/CommentEvent;->setData(Ljava/lang/String;)V

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
    .line 36
    const-string v0, "<!--"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/CommentEvent;->getText()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 39
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 41
    :cond_0
    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/CommentEvent;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/events/CommentEvent;->setEventType(I)V

    return-void
.end method
