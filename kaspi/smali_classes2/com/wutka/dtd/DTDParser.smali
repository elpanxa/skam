.class public Lcom/wutka/dtd/DTDParser;
.super Ljava/lang/Object;
.source "DTDParser.java"

# interfaces
.implements Lcom/wutka/dtd/EntityExpansion;


# instance fields
.field protected defaultLocation:Ljava/lang/Object;

.field protected dtd:Lcom/wutka/dtd/DTD;

.field protected scanner:Lcom/wutka/dtd/Scanner;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->defaultLocation:Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/wutka/dtd/Scanner;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/wutka/dtd/Scanner;-><init>(Ljava/io/Reader;ZLcom/wutka/dtd/EntityExpansion;)V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    .line 44
    new-instance v0, Lcom/wutka/dtd/DTD;

    invoke-direct {v0}, Lcom/wutka/dtd/DTD;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->defaultLocation:Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/wutka/dtd/Scanner;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1, p2, p0}, Lcom/wutka/dtd/Scanner;-><init>(Ljava/io/Reader;ZLcom/wutka/dtd/EntityExpansion;)V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    .line 59
    new-instance v0, Lcom/wutka/dtd/DTD;

    invoke-direct {v0}, Lcom/wutka/dtd/DTD;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/wutka/dtd/Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/wutka/dtd/Scanner;-><init>(Ljava/io/Reader;ZLcom/wutka/dtd/EntityExpansion;)V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    .line 22
    new-instance v0, Lcom/wutka/dtd/DTD;

    invoke-direct {v0}, Lcom/wutka/dtd/DTD;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Z)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/wutka/dtd/Scanner;

    invoke-direct {v0, p1, p2, p0}, Lcom/wutka/dtd/Scanner;-><init>(Ljava/io/Reader;ZLcom/wutka/dtd/EntityExpansion;)V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    .line 33
    new-instance v0, Lcom/wutka/dtd/DTD;

    invoke-direct {v0}, Lcom/wutka/dtd/DTD;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/wutka/dtd/DTDParser;->defaultLocation:Ljava/lang/Object;

    .line 72
    new-instance v0, Lcom/wutka/dtd/Scanner;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1, v6, p0}, Lcom/wutka/dtd/Scanner;-><init>(Ljava/io/Reader;ZLcom/wutka/dtd/EntityExpansion;)V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    .line 74
    new-instance v0, Lcom/wutka/dtd/DTD;

    invoke-direct {v0}, Lcom/wutka/dtd/DTD;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x2f

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/wutka/dtd/DTDParser;->defaultLocation:Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/wutka/dtd/Scanner;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1, p2, p0}, Lcom/wutka/dtd/Scanner;-><init>(Ljava/io/Reader;ZLcom/wutka/dtd/EntityExpansion;)V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    .line 94
    new-instance v0, Lcom/wutka/dtd/DTD;

    invoke-direct {v0}, Lcom/wutka/dtd/DTD;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    .line 95
    return-void
.end method


# virtual methods
.method public expandEntity(Ljava/lang/String;)Lcom/wutka/dtd/DTDEntity;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v0, v0, Lcom/wutka/dtd/DTD;->entities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDEntity;

    return-object v0
.end method

.method protected expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 301
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    if-eq v1, p1, :cond_1

    .line 303
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 305
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p1, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " instead of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v0, v0, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    .line 311
    :cond_0
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p1, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " instead of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v4, v4, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    .line 318
    :cond_1
    return-object v0
.end method

.method public parse()Lcom/wutka/dtd/DTD;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->parse(Z)Lcom/wutka/dtd/DTD;

    move-result-object v0

    return-object v0
.end method

.method public parse(Z)Lcom/wutka/dtd/DTD;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 119
    iget-object v0, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v1, Lcom/wutka/dtd/Scanner;->EOF:Lcom/wutka/dtd/TokenType;

    if-ne v0, v1, :cond_0

    .line 124
    if-eqz p1, :cond_5

    .line 126
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v0, v0, Lcom/wutka/dtd/DTD;->elements:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 130
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDElement;

    .line 133
    iget-object v3, v0, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseTopLevelElement()V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v0, v0, Lcom/wutka/dtd/DTD;->elements:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 137
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDElement;

    .line 140
    iget-object v3, v0, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    instance-of v3, v3, Lcom/wutka/dtd/DTDContainer;

    if-eqz v3, :cond_2

    .line 142
    iget-object v0, v0, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    check-cast v0, Lcom/wutka/dtd/DTDContainer;

    invoke-virtual {v0}, Lcom/wutka/dtd/DTDContainer;->getItemsVec()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 145
    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDItem;

    invoke-virtual {p0, v1, v4, v0}, Lcom/wutka/dtd/DTDParser;->removeElements(Ljava/util/Hashtable;Lcom/wutka/dtd/DTD;Lcom/wutka/dtd/DTDItem;)V

    goto :goto_2

    .line 151
    :cond_3
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 153
    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDElement;

    iput-object v0, v1, Lcom/wutka/dtd/DTD;->rootElement:Lcom/wutka/dtd/DTDElement;

    .line 166
    :goto_3
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    return-object v0

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iput-object v5, v0, Lcom/wutka/dtd/DTD;->rootElement:Lcom/wutka/dtd/DTDElement;

    goto :goto_3

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iput-object v5, v0, Lcom/wutka/dtd/DTD;->rootElement:Lcom/wutka/dtd/DTDElement;

    goto :goto_3
.end method

.method protected parseAttdef(Lcom/wutka/dtd/Scanner;Lcom/wutka/dtd/DTDElement;Lcom/wutka/dtd/DTDAttlist;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    sget-object v0, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 634
    new-instance v1, Lcom/wutka/dtd/DTDAttribute;

    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/DTDAttribute;-><init>(Ljava/lang/String;)V

    .line 636
    iget-object v2, p3, Lcom/wutka/dtd/DTDAttlist;->attributes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 638
    iget-object v2, p2, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 642
    iget-object v2, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_3

    .line 644
    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v3, "NOTATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 646
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseNotationList()Lcom/wutka/dtd/DTDNotationList;

    move-result-object v0

    iput-object v0, v1, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    .line 658
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 660
    iget-object v2, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_7

    .line 662
    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 663
    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v3, "#FIXED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 665
    sget-object v0, Lcom/wutka/dtd/DTDDecl;->FIXED:Lcom/wutka/dtd/DTDDecl;

    iput-object v0, v1, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    .line 667
    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 668
    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v0, v1, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    .line 691
    :cond_1
    :goto_1
    return-void

    .line 650
    :cond_2
    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v0, v1, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    goto :goto_0

    .line 653
    :cond_3
    iget-object v0, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->LPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v0, v2, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseEnumeration()Lcom/wutka/dtd/DTDEnumeration;

    move-result-object v0

    iput-object v0, v1, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    goto :goto_0

    .line 670
    :cond_4
    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v3, "#REQUIRED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 672
    sget-object v0, Lcom/wutka/dtd/DTDDecl;->REQUIRED:Lcom/wutka/dtd/DTDDecl;

    iput-object v0, v1, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    goto :goto_1

    .line 674
    :cond_5
    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v3, "#IMPLIED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 676
    sget-object v0, Lcom/wutka/dtd/DTDDecl;->IMPLIED:Lcom/wutka/dtd/DTDDecl;

    iput-object v0, v1, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    goto :goto_1

    .line 680
    :cond_6
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid token in attribute declaration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    .line 685
    :cond_7
    iget-object v2, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_1

    .line 687
    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 688
    sget-object v2, Lcom/wutka/dtd/DTDDecl;->VALUE:Lcom/wutka/dtd/DTDDecl;

    iput-object v2, v1, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    .line 689
    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v0, v1, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    goto :goto_1
.end method

.method protected parseAttlist()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    sget-object v0, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 601
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v0, v0, Lcom/wutka/dtd/DTD;->elements:Ljava/util/Hashtable;

    iget-object v2, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDElement;

    .line 603
    new-instance v2, Lcom/wutka/dtd/DTDAttlist;

    iget-object v3, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/wutka/dtd/DTDAttlist;-><init>(Ljava/lang/String;)V

    .line 605
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v3, v3, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 607
    if-nez v0, :cond_0

    .line 609
    new-instance v0, Lcom/wutka/dtd/DTDElement;

    iget-object v3, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/wutka/dtd/DTDElement;-><init>(Ljava/lang/String;)V

    .line 610
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v3, v3, Lcom/wutka/dtd/DTD;->elements:Ljava/util/Hashtable;

    iget-object v1, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 615
    :goto_0
    iget-object v1, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    if-eq v1, v3, :cond_1

    .line 617
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {p0, v1, v0, v2}, Lcom/wutka/dtd/DTDParser;->parseAttdef(Lcom/wutka/dtd/Scanner;Lcom/wutka/dtd/DTDElement;Lcom/wutka/dtd/DTDAttlist;)V

    .line 618
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v1

    goto :goto_0

    .line 625
    :cond_1
    sget-object v0, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    .line 626
    return-void
.end method

.method protected parseCP()Lcom/wutka/dtd/DTDItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 549
    iget-object v0, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v0, v2, :cond_0

    .line 551
    new-instance v0, Lcom/wutka/dtd/DTDName;

    iget-object v1, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/wutka/dtd/DTDName;-><init>(Ljava/lang/String;)V

    .line 565
    :goto_0
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseCardinality()Lcom/wutka/dtd/DTDCardinal;

    move-result-object v1

    iput-object v1, v0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 567
    return-object v0

    .line 553
    :cond_0
    iget-object v0, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->LPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v0, v2, :cond_1

    .line 555
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseChoiceSequence()Lcom/wutka/dtd/DTDContainer;

    move-result-object v0

    goto :goto_0

    .line 559
    :cond_1
    new-instance v0, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Found invalid token in sequence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v1, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v1, v1, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v0
.end method

.method protected parseCardinality()Lcom/wutka/dtd/DTDCardinal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 575
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->QUES:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_0

    .line 577
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 578
    sget-object v0, Lcom/wutka/dtd/DTDCardinal;->OPTIONAL:Lcom/wutka/dtd/DTDCardinal;

    .line 592
    :goto_0
    return-object v0

    .line 580
    :cond_0
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->ASTERISK:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_1

    .line 582
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 583
    sget-object v0, Lcom/wutka/dtd/DTDCardinal;->ZEROMANY:Lcom/wutka/dtd/DTDCardinal;

    goto :goto_0

    .line 585
    :cond_1
    iget-object v0, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v1, Lcom/wutka/dtd/Scanner;->PLUS:Lcom/wutka/dtd/TokenType;

    if-ne v0, v1, :cond_2

    .line 587
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 588
    sget-object v0, Lcom/wutka/dtd/DTDCardinal;->ONEMANY:Lcom/wutka/dtd/DTDCardinal;

    goto :goto_0

    .line 592
    :cond_2
    sget-object v0, Lcom/wutka/dtd/DTDCardinal;->NONE:Lcom/wutka/dtd/DTDCardinal;

    goto :goto_0
.end method

.method protected parseChildren(Lcom/wutka/dtd/DTDElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseChoiceSequence()Lcom/wutka/dtd/DTDContainer;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 465
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseCardinality()Lcom/wutka/dtd/DTDCardinal;

    move-result-object v2

    iput-object v2, v0, Lcom/wutka/dtd/DTDContainer;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 467
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->QUES:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_0

    .line 469
    sget-object v1, Lcom/wutka/dtd/DTDCardinal;->OPTIONAL:Lcom/wutka/dtd/DTDCardinal;

    iput-object v1, v0, Lcom/wutka/dtd/DTDContainer;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 484
    :goto_0
    iput-object v0, p1, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    .line 485
    return-void

    .line 471
    :cond_0
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->ASTERISK:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_1

    .line 473
    sget-object v1, Lcom/wutka/dtd/DTDCardinal;->ZEROMANY:Lcom/wutka/dtd/DTDCardinal;

    iput-object v1, v0, Lcom/wutka/dtd/DTDContainer;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    goto :goto_0

    .line 475
    :cond_1
    iget-object v1, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->PLUS:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_2

    .line 477
    sget-object v1, Lcom/wutka/dtd/DTDCardinal;->ONEMANY:Lcom/wutka/dtd/DTDCardinal;

    iput-object v1, v0, Lcom/wutka/dtd/DTDContainer;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    goto :goto_0

    .line 481
    :cond_2
    sget-object v1, Lcom/wutka/dtd/DTDCardinal;->NONE:Lcom/wutka/dtd/DTDCardinal;

    iput-object v1, v0, Lcom/wutka/dtd/DTDContainer;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    goto :goto_0
.end method

.method protected parseChoiceSequence()Lcom/wutka/dtd/DTDContainer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 490
    move-object v1, v0

    .line 496
    :goto_0
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseCP()Lcom/wutka/dtd/DTDItem;

    move-result-object v2

    .line 498
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v3

    .line 500
    iget-object v4, v3, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v5, Lcom/wutka/dtd/Scanner;->PIPE:Lcom/wutka/dtd/TokenType;

    if-eq v4, v5, :cond_0

    iget-object v4, v3, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v5, Lcom/wutka/dtd/Scanner;->COMMA:Lcom/wutka/dtd/TokenType;

    if-ne v4, v5, :cond_4

    .line 503
    :cond_0
    if-eqz v1, :cond_1

    iget-object v4, v3, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    if-eq v1, v4, :cond_1

    .line 505
    new-instance v0, Lcom/wutka/dtd/DTDParseException;

    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t mix separators in a choice/sequence"

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v0

    .line 509
    :cond_1
    iget-object v1, v3, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    .line 511
    if-nez v0, :cond_2

    .line 513
    iget-object v0, v3, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->PIPE:Lcom/wutka/dtd/TokenType;

    if-ne v0, v3, :cond_3

    .line 515
    new-instance v0, Lcom/wutka/dtd/DTDChoice;

    invoke-direct {v0}, Lcom/wutka/dtd/DTDChoice;-><init>()V

    .line 522
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Lcom/wutka/dtd/DTDContainer;->add(Lcom/wutka/dtd/DTDItem;)V

    goto :goto_0

    .line 519
    :cond_3
    new-instance v0, Lcom/wutka/dtd/DTDSequence;

    invoke-direct {v0}, Lcom/wutka/dtd/DTDSequence;-><init>()V

    goto :goto_1

    .line 524
    :cond_4
    iget-object v1, v3, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v4, Lcom/wutka/dtd/Scanner;->RPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v1, v4, :cond_6

    .line 526
    if-nez v0, :cond_5

    .line 528
    new-instance v0, Lcom/wutka/dtd/DTDSequence;

    invoke-direct {v0}, Lcom/wutka/dtd/DTDSequence;-><init>()V

    .line 530
    :cond_5
    invoke-virtual {v0, v2}, Lcom/wutka/dtd/DTDContainer;->add(Lcom/wutka/dtd/DTDItem;)V

    .line 531
    return-object v0

    .line 535
    :cond_6
    new-instance v0, Lcom/wutka/dtd/DTDParseException;

    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Found invalid token in sequence: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, v3, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v3, v3, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v0
.end method

.method protected parseContentSpec(Lcom/wutka/dtd/Scanner;Lcom/wutka/dtd/DTDElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 356
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_3

    .line 358
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    new-instance v0, Lcom/wutka/dtd/DTDEmpty;

    invoke-direct {v0}, Lcom/wutka/dtd/DTDEmpty;-><init>()V

    iput-object v0, p2, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "ANY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    new-instance v0, Lcom/wutka/dtd/DTDAny;

    invoke-direct {v0}, Lcom/wutka/dtd/DTDAny;-><init>()V

    iput-object v0, p2, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    goto :goto_0

    .line 368
    :cond_2
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid token in entity content spec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    .line 374
    :cond_3
    iget-object v0, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v1, Lcom/wutka/dtd/Scanner;->LPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v0, v1, :cond_0

    .line 376
    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 378
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_5

    .line 380
    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v1, "#PCDATA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 382
    invoke-virtual {p0, p2}, Lcom/wutka/dtd/DTDParser;->parseMixed(Lcom/wutka/dtd/DTDElement;)V

    goto :goto_0

    .line 386
    :cond_4
    invoke-virtual {p0, p2}, Lcom/wutka/dtd/DTDParser;->parseChildren(Lcom/wutka/dtd/DTDElement;)V

    goto :goto_0

    .line 389
    :cond_5
    iget-object v0, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v1, Lcom/wutka/dtd/Scanner;->LPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v0, v1, :cond_0

    .line 391
    invoke-virtual {p0, p2}, Lcom/wutka/dtd/DTDParser;->parseChildren(Lcom/wutka/dtd/DTDElement;)V

    goto :goto_0
.end method

.method protected parseElement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    sget-object v0, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 326
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v0, v0, Lcom/wutka/dtd/DTD;->elements:Ljava/util/Hashtable;

    iget-object v2, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDElement;

    .line 328
    if-nez v0, :cond_1

    .line 330
    new-instance v0, Lcom/wutka/dtd/DTDElement;

    iget-object v1, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/wutka/dtd/DTDElement;-><init>(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v1, v1, Lcom/wutka/dtd/DTD;->elements:Ljava/util/Hashtable;

    iget-object v2, v0, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v1, v1, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 346
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {p0, v1, v0}, Lcom/wutka/dtd/DTDParser;->parseContentSpec(Lcom/wutka/dtd/Scanner;Lcom/wutka/dtd/DTDElement;)V

    .line 348
    sget-object v0, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    .line 349
    return-void

    .line 333
    :cond_1
    iget-object v2, v0, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    if-eqz v2, :cond_0

    .line 340
    new-instance v0, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Found second definition of element: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v1, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v0
.end method

.method protected parseEntity()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 780
    .line 782
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 784
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->PERCENT:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_1

    .line 787
    sget-object v0, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v0

    move-object v1, v0

    move v2, v3

    .line 796
    :goto_0
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v0, v0, Lcom/wutka/dtd/DTD;->entities:Ljava/util/Hashtable;

    iget-object v5, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDEntity;

    .line 800
    if-nez v0, :cond_2

    .line 802
    new-instance v0, Lcom/wutka/dtd/DTDEntity;

    iget-object v1, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->defaultLocation:Ljava/lang/Object;

    invoke-direct {v0, v1, v3}, Lcom/wutka/dtd/DTDEntity;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 803
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v1, v1, Lcom/wutka/dtd/DTD;->entities:Ljava/util/Hashtable;

    iget-object v3, v0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    :goto_1
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v1, v1, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 816
    iput-boolean v2, v0, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    .line 818
    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->parseEntityDef(Lcom/wutka/dtd/DTDEntity;)V

    .line 820
    iget-boolean v1, v0, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v4, :cond_0

    .line 822
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    iget-object v2, v0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/wutka/dtd/Scanner;->addEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :cond_0
    return-void

    .line 789
    :cond_1
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-eq v1, v2, :cond_3

    .line 791
    new-instance v0, Lcom/wutka/dtd/DTDParseException;

    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid entity declaration"

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v0

    .line 810
    :cond_2
    new-instance v0, Lcom/wutka/dtd/DTDEntity;

    iget-object v1, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->defaultLocation:Ljava/lang/Object;

    invoke-direct {v0, v1, v4}, Lcom/wutka/dtd/DTDEntity;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move v4, v3

    .line 811
    goto :goto_1

    :cond_3
    move-object v1, v0

    move v2, v4

    goto :goto_0
.end method

.method protected parseEntityDef(Lcom/wutka/dtd/DTDEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 831
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_1

    .line 836
    iget-object v1, p1, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 838
    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v0, p1, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    .line 916
    :cond_0
    :goto_0
    sget-object v0, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    .line 917
    return-void

    .line 841
    :cond_1
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_5

    .line 843
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "SYSTEM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 845
    new-instance v0, Lcom/wutka/dtd/DTDSystem;

    invoke-direct {v0}, Lcom/wutka/dtd/DTDSystem;-><init>()V

    .line 846
    sget-object v1, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v1}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 848
    iget-object v1, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/wutka/dtd/DTDSystem;->system:Ljava/lang/String;

    .line 849
    iput-object v0, p1, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    .line 888
    :goto_1
    iget-boolean v0, p1, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    if-nez v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 891
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_0

    .line 893
    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v1, "NDATA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 895
    new-instance v0, Lcom/wutka/dtd/DTDParseException;

    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid NData declaration"

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v0

    .line 851
    :cond_2
    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v1, "PUBLIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 853
    new-instance v0, Lcom/wutka/dtd/DTDPublic;

    invoke-direct {v0}, Lcom/wutka/dtd/DTDPublic;-><init>()V

    .line 855
    sget-object v1, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v1}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 856
    iget-object v1, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    .line 857
    sget-object v1, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v1}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 858
    iget-object v1, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    .line 859
    iput-object v0, p1, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    goto :goto_1

    .line 863
    :cond_3
    new-instance v0, Lcom/wutka/dtd/DTDParseException;

    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid External ID specification"

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v0

    .line 901
    :cond_4
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 903
    sget-object v0, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 905
    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v0, p1, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    goto/16 :goto_0

    .line 911
    :cond_5
    new-instance v0, Lcom/wutka/dtd/DTDParseException;

    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid entity definition"

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v0
.end method

.method protected parseEnumeration()Lcom/wutka/dtd/DTDEnumeration;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    new-instance v0, Lcom/wutka/dtd/DTDEnumeration;

    invoke-direct {v0}, Lcom/wutka/dtd/DTDEnumeration;-><init>()V

    .line 746
    :goto_0
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 748
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->NMTOKEN:Lcom/wutka/dtd/TokenType;

    if-eq v2, v3, :cond_0

    .line 751
    new-instance v0, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid token in enumeration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v1, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v1, v1, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v0

    .line 757
    :cond_0
    iget-object v1, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wutka/dtd/DTDEnumeration;->add(Ljava/lang/String;)V

    .line 759
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 761
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->RPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_1

    .line 763
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 764
    return-object v0

    .line 766
    :cond_1
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->PIPE:Lcom/wutka/dtd/TokenType;

    if-eq v2, v3, :cond_2

    .line 768
    new-instance v0, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid token in enumeration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v1, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v1, v1, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v0

    .line 773
    :cond_2
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    goto/16 :goto_0
.end method

.method protected parseMixed(Lcom/wutka/dtd/DTDElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x1

    .line 405
    new-instance v1, Lcom/wutka/dtd/DTDMixed;

    invoke-direct {v1}, Lcom/wutka/dtd/DTDMixed;-><init>()V

    .line 407
    new-instance v2, Lcom/wutka/dtd/DTDPCData;

    invoke-direct {v2}, Lcom/wutka/dtd/DTDPCData;-><init>()V

    invoke-virtual {v1, v2}, Lcom/wutka/dtd/DTDMixed;->add(Lcom/wutka/dtd/DTDItem;)V

    .line 409
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 411
    iput-object v1, p1, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    .line 415
    :goto_0
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v2

    .line 417
    iget-object v3, v2, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v4, Lcom/wutka/dtd/Scanner;->RPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v3, v4, :cond_2

    .line 419
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v2

    .line 421
    iget-object v3, v2, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v4, Lcom/wutka/dtd/Scanner;->ASTERISK:Lcom/wutka/dtd/TokenType;

    if-ne v3, v4, :cond_0

    .line 423
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 424
    sget-object v0, Lcom/wutka/dtd/DTDCardinal;->ZEROMANY:Lcom/wutka/dtd/DTDCardinal;

    iput-object v0, v1, Lcom/wutka/dtd/DTDMixed;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 438
    :goto_1
    return-void

    .line 428
    :cond_0
    if-nez v0, :cond_1

    .line 430
    new-instance v0, Lcom/wutka/dtd/DTDParseException;

    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid token in Mixed content type, \'*\' required after (#PCDATA|xx ...): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, v2, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v2, v2, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v0

    .line 435
    :cond_1
    sget-object v0, Lcom/wutka/dtd/DTDCardinal;->NONE:Lcom/wutka/dtd/DTDCardinal;

    iput-object v0, v1, Lcom/wutka/dtd/DTDMixed;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    goto :goto_1

    .line 440
    :cond_2
    iget-object v0, v2, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->PIPE:Lcom/wutka/dtd/TokenType;

    if-ne v0, v3, :cond_3

    .line 442
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 444
    new-instance v2, Lcom/wutka/dtd/DTDName;

    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/wutka/dtd/DTDName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/wutka/dtd/DTDMixed;->add(Lcom/wutka/dtd/DTDItem;)V

    .line 447
    const/4 v0, 0x0

    .line 448
    goto :goto_0

    .line 451
    :cond_3
    new-instance v0, Lcom/wutka/dtd/DTDParseException;

    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid token in Mixed content type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, v2, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v2, v2, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v0
.end method

.method protected parseNotation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 922
    new-instance v0, Lcom/wutka/dtd/DTDNotation;

    invoke-direct {v0}, Lcom/wutka/dtd/DTDNotation;-><init>()V

    .line 924
    sget-object v1, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v1}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 926
    iget-object v1, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    .line 928
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v1, v1, Lcom/wutka/dtd/DTD;->notations:Ljava/util/Hashtable;

    iget-object v2, v0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v1, v1, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 931
    sget-object v1, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v1}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 933
    iget-object v2, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v3, "SYSTEM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 935
    new-instance v1, Lcom/wutka/dtd/DTDSystem;

    invoke-direct {v1}, Lcom/wutka/dtd/DTDSystem;-><init>()V

    .line 936
    sget-object v2, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v2}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v2

    .line 938
    iget-object v2, v2, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v2, v1, Lcom/wutka/dtd/DTDSystem;->system:Ljava/lang/String;

    .line 939
    iput-object v1, v0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    .line 960
    :cond_0
    :goto_0
    sget-object v0, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    .line 961
    return-void

    .line 941
    :cond_1
    iget-object v1, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "PUBLIC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    new-instance v1, Lcom/wutka/dtd/DTDPublic;

    invoke-direct {v1}, Lcom/wutka/dtd/DTDPublic;-><init>()V

    .line 944
    sget-object v2, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v2}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v2

    .line 946
    iget-object v2, v2, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v2, v1, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    .line 947
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    .line 951
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v2

    .line 952
    iget-object v2, v2, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_2

    .line 954
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v2

    .line 955
    iget-object v2, v2, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v2, v1, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    .line 958
    :cond_2
    iput-object v1, v0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    goto :goto_0
.end method

.method protected parseNotationList()Lcom/wutka/dtd/DTDNotationList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    new-instance v0, Lcom/wutka/dtd/DTDNotationList;

    invoke-direct {v0}, Lcom/wutka/dtd/DTDNotationList;-><init>()V

    .line 698
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 699
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->LPAREN:Lcom/wutka/dtd/TokenType;

    if-eq v2, v3, :cond_1

    .line 701
    new-instance v0, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid token in notation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v1, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v1, v1, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v0

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 709
    :cond_1
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 711
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-eq v2, v3, :cond_2

    .line 713
    new-instance v0, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid token in notation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v1, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v1, v1, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v0

    .line 719
    :cond_2
    iget-object v1, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wutka/dtd/DTDNotationList;->add(Ljava/lang/String;)V

    .line 721
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 723
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->RPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_3

    .line 725
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 726
    return-object v0

    .line 728
    :cond_3
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->PIPE:Lcom/wutka/dtd/TokenType;

    if-eq v2, v3, :cond_0

    .line 730
    new-instance v0, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid token in notation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v1, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v1, v1, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v0
.end method

.method protected parseTopLevelElement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3f

    .line 189
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 192
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->LTQUES:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_2

    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1, v3}, Lcom/wutka/dtd/Scanner;->getUntil(C)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 202
    iget-object v1, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_1

    .line 204
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 209
    new-instance v1, Lcom/wutka/dtd/DTDProcessingInstruction;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/wutka/dtd/DTDProcessingInstruction;-><init>(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v0, v0, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 283
    :cond_0
    :goto_1
    return-void

    .line 207
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 216
    :cond_2
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->CONDITIONAL:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_5

    .line 218
    sget-object v0, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 220
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "IGNORE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 222
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->skipConditional()V

    goto :goto_1

    .line 226
    :cond_3
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "INCLUDE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 228
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/wutka/dtd/Scanner;->skipUntil(C)V

    goto :goto_1

    .line 232
    :cond_4
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid token in conditional: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    .line 238
    :cond_5
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->ENDCONDITIONAL:Lcom/wutka/dtd/TokenType;

    if-eq v1, v2, :cond_0

    .line 242
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->COMMENT:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_6

    .line 244
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v1, v1, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    new-instance v2, Lcom/wutka/dtd/DTDComment;

    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/wutka/dtd/DTDComment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 247
    :cond_6
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->LTBANG:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_b

    .line 250
    sget-object v0, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 252
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "ELEMENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 254
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseElement()V

    goto/16 :goto_1

    .line 256
    :cond_7
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "ATTLIST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 258
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseAttlist()V

    goto/16 :goto_1

    .line 260
    :cond_8
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "ENTITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 262
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseEntity()V

    goto/16 :goto_1

    .line 264
    :cond_9
    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v1, "NOTATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 266
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseNotation()V

    goto/16 :goto_1

    .line 270
    :cond_a
    sget-object v0, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->skipUntil(Lcom/wutka/dtd/TokenType;)V

    goto/16 :goto_1

    .line 278
    :cond_b
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unexpected token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v4, v4, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1
.end method

.method protected removeElements(Ljava/util/Hashtable;Lcom/wutka/dtd/DTD;Lcom/wutka/dtd/DTDItem;)V
    .locals 2

    .prologue
    .line 171
    instance-of v0, p3, Lcom/wutka/dtd/DTDName;

    if-eqz v0, :cond_1

    .line 173
    check-cast p3, Lcom/wutka/dtd/DTDName;

    iget-object v0, p3, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_0
    return-void

    .line 175
    :cond_1
    instance-of v0, p3, Lcom/wutka/dtd/DTDContainer;

    if-eqz v0, :cond_0

    .line 177
    check-cast p3, Lcom/wutka/dtd/DTDContainer;

    invoke-virtual {p3}, Lcom/wutka/dtd/DTDContainer;->getItemsVec()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 179
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDItem;

    invoke-virtual {p0, p1, p2, v0}, Lcom/wutka/dtd/DTDParser;->removeElements(Ljava/util/Hashtable;Lcom/wutka/dtd/DTD;Lcom/wutka/dtd/DTDItem;)V

    goto :goto_0
.end method

.method protected skipUntil(Lcom/wutka/dtd/TokenType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 290
    :goto_0
    iget-object v0, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    if-eq v0, p1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method
