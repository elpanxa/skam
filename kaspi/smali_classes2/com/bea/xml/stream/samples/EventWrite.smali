.class public Lcom/bea/xml/stream/samples/EventWrite;
.super Ljava/lang/Object;
.source "EventWrite.java"


# static fields
.field private static filename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/bea/xml/stream/samples/EventWrite;->filename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 22
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    sput-object v0, Lcom/bea/xml/stream/samples/EventWrite;->filename:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    const-string v0, "javax.xml.stream.XMLInputFactory"

    const-string v1, "com.bea.xml.stream.MXParserFactory"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    const-string v0, "javax.xml.stream.XMLOutputFactory"

    const-string v1, "com.bea.xml.stream.XMLOutputFactoryBase"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    const-string v0, "javax.xml.stream.XMLEventFactory"

    const-string v1, "com.bea.xml.stream.EventFactory"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    .line 36
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v1

    .line 37
    const-string v2, "javax.xml.stream.isReplacingEntityReferences"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Ljavax/xml/stream/XMLInputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    new-instance v2, Ljava/io/FileReader;

    sget-object v3, Lcom/bea/xml/stream/samples/EventWrite;->filename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    .line 42
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljavax/xml/stream/XMLOutputFactory;->createXMLEventWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLEventWriter;

    move-result-object v1

    .line 44
    invoke-interface {v1, v0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/XMLEventReader;)V

    .line 45
    invoke-interface {v1}, Ljavax/xml/stream/XMLEventWriter;->flush()V

    .line 46
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-static {}, Lcom/bea/xml/stream/samples/EventWrite;->printUsage()V

    .line 25
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private static printUsage()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: java com.bea.xml.stream.samples.EventWrite <xmlfile>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    return-void
.end method
