.class public Lcom/wutka/dtd/DTDEntity;
.super Ljava/lang/Object;
.source "DTDEntity.java"

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field public defaultLocation:Ljava/lang/Object;

.field public externalID:Lcom/wutka/dtd/DTDExternalID;

.field public isParsed:Z

.field public name:Ljava/lang/String;

.field public ndata:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/wutka/dtd/DTDEntity;->defaultLocation:Ljava/lang/Object;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    if-ne p1, p0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    instance-of v2, p1, Lcom/wutka/dtd/DTDEntity;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 148
    :cond_2
    check-cast p1, Lcom/wutka/dtd/DTDEntity;

    .line 150
    iget-object v2, p0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 152
    iget-object v2, p1, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 156
    :cond_3
    iget-object v2, p0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 159
    :cond_4
    iget-boolean v2, p0, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    iget-boolean v3, p1, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 162
    :cond_5
    iget-object v2, p0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 164
    iget-object v2, p1, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 168
    :cond_6
    iget-object v2, p0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 171
    :cond_7
    iget-object v2, p0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-nez v2, :cond_8

    .line 173
    iget-object v2, p1, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 177
    :cond_8
    iget-object v2, p0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    iget-object v3, p1, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    invoke-virtual {v2, v3}, Lcom/wutka/dtd/DTDExternalID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 180
    :cond_9
    iget-object v2, p0, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 182
    iget-object v2, p1, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 186
    :cond_a
    iget-object v2, p0, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    iget-object v3, p1, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getExternalID()Lcom/wutka/dtd/DTDExternalID;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    iget-object v0, v0, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNdata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    iget-object v0, v0, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDEntity;->getReader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    goto :goto_0
.end method

.method public getReader(Ljava/lang/String;)Ljava/io/Reader;
    .locals 4

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->defaultLocation:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->defaultLocation:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->defaultLocation:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    .line 95
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 140
    :goto_0
    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->defaultLocation:Ljava/lang/Object;

    instance-of v0, v0, Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 108
    new-instance v1, Ljava/net/URL;

    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->defaultLocation:Ljava/lang/Object;

    check-cast v0, Ljava/net/URL;

    invoke-direct {v1, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 127
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 131
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    .line 140
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isParsed()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    return v0
.end method

.method public setExternalID(Lcom/wutka/dtd/DTDExternalID;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    .line 232
    return-void
.end method

.method public setIsParsed(Z)V
    .locals 0

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    .line 208
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setNdata(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    .line 220
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
    const-string v0, "<!ENTITY "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    iget-boolean v0, p0, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    if-eqz v0, :cond_0

    .line 42
    const-string v0, " % "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 48
    const/16 v0, 0x22

    .line 49
    iget-object v1, p0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    const/16 v0, 0x27

    .line 50
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 51
    iget-object v1, p0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 63
    :cond_2
    :goto_0
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    return-void

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDExternalID;->write(Ljava/io/PrintWriter;)V

    .line 57
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 59
    const-string v0, " NDATA "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method
