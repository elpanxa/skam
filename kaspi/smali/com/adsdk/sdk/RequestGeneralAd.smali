.class public Lcom/adsdk/sdk/RequestGeneralAd;
.super Lcom/adsdk/sdk/RequestAd;
.source "RequestGeneralAd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adsdk/sdk/RequestAd",
        "<",
        "Lcom/adsdk/sdk/AdResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final RELOAD_AFTER_NO_AD:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/adsdk/sdk/RequestAd;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/adsdk/sdk/RequestAd;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/adsdk/sdk/RequestGeneralAd;->is:Ljava/io/InputStream;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Parse is null"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/RequestGeneralAd;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 41
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    :try_start_0
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v0, ""

    goto :goto_0
.end method

.method private getAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 57
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCustomEvents([Lorg/apache/http/Header;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/customevents/CustomEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    if-nez p1, :cond_0

    move-object v0, v1

    .line 108
    :goto_0
    return-object v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_1

    move-object v0, v1

    .line 108
    goto :goto_0

    .line 91
    :cond_1
    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X-CustomEvent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 95
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    const-string v2, "class"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string v4, "parameter"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    const-string v5, "pixel"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    new-instance v5, Lcom/adsdk/sdk/customevents/CustomEvent;

    invoke-direct {v5, v2, v4, v3}, Lcom/adsdk/sdk/customevents/CustomEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :catch_0
    move-exception v2

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot parse json with custom event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getInteger(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return v0

    .line 47
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 70
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    .line 78
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 112
    const-string v0, "yes"

    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/RequestGeneralAd;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method parse(Ljava/io/InputStream;[Lorg/apache/http/Header;Z)Lcom/adsdk/sdk/AdResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 132
    new-instance v1, Lcom/adsdk/sdk/AdResponse;

    invoke-direct {v1}, Lcom/adsdk/sdk/AdResponse;-><init>()V

    .line 135
    :try_start_0
    invoke-direct {p0, p2}, Lcom/adsdk/sdk/RequestGeneralAd;->getCustomEvents([Lorg/apache/http/Header;)Ljava/util/List;

    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setCustomEvents(Ljava/util/List;)V

    .line 138
    if-eqz p3, :cond_2

    .line 140
    invoke-static {p1}, Lcom/adsdk/sdk/video/VASTParser;->createVastFromStream(Ljava/io/InputStream;)Lcom/adsdk/sdk/video/VAST;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/adsdk/sdk/video/VASTParser;->fillVideoDataFromVast(Lcom/adsdk/sdk/video/VAST;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    .line 142
    if-nez v0, :cond_1

    .line 143
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdResponse;->setType(I)V

    .line 144
    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getRefresh()I

    move-result v0

    if-gtz v0, :cond_0

    .line 145
    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdResponse;->setRefresh(I)V

    .line 235
    :cond_0
    :goto_0
    return-object v1

    .line 148
    :cond_1
    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdResponse;->setVideoData(Lcom/adsdk/sdk/video/VideoData;)V

    .line 149
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdResponse;->setType(I)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Cannot parse Response"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 152
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 153
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 154
    sget-boolean v3, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    if-eqz v3, :cond_3

    .line 155
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/RequestGeneralAd;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ad RequestPerform HTTP Response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 157
    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 158
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 160
    :cond_3
    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 165
    if-nez v2, :cond_4

    .line 166
    new-instance v0, Lcom/adsdk/sdk/RequestException;

    const-string v1, "Document is not an xml"

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 227
    :catch_1
    move-exception v0

    .line 228
    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Cannot parse Response"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 168
    :cond_4
    :try_start_2
    const-string v3, "error"

    invoke-direct {p0, v0, v3}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    if-eqz v3, :cond_5

    .line 170
    new-instance v0, Lcom/adsdk/sdk/RequestException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error Response received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 229
    :catch_2
    move-exception v0

    .line 230
    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Cannot read Response"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 172
    :cond_5
    :try_start_3
    const-string v3, "type"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-interface {v2}, Lorg/w3c/dom/Element;->normalize()V

    .line 174
    const-string v2, "imageAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 175
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setType(I)V

    .line 176
    const-string v2, "bannerwidth"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setBannerWidth(I)V

    .line 177
    const-string v2, "bannerheight"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setBannerHeight(I)V

    .line 178
    const-string v2, "clicktype"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/data/ClickType;->getValue(Ljava/lang/String;)Lcom/adsdk/sdk/data/ClickType;

    move-result-object v2

    .line 179
    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setClickType(Lcom/adsdk/sdk/data/ClickType;)V

    .line 180
    const-string v2, "clickurl"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setClickUrl(Ljava/lang/String;)V

    .line 181
    const-string v2, "imageurl"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 182
    const-string v2, "refresh"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setRefresh(I)V

    .line 183
    const-string v2, "scale"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setScale(Z)V

    .line 184
    const-string v2, "skippreflight"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdResponse;->setSkipPreflight(Z)V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 231
    :catch_3
    move-exception v0

    .line 232
    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Cannot read Response"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 185
    :cond_6
    :try_start_4
    const-string v2, "textAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 186
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setType(I)V

    .line 187
    const-string v2, "htmlString"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setText(Ljava/lang/String;)V

    .line 188
    const-string v2, "htmlString"

    const-string v3, "skipoverlaybutton"

    invoke-direct {p0, v0, v2, v3}, Lcom/adsdk/sdk/RequestGeneralAd;->getAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    const-string v3, "PARSER"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SkipOverlay: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-eqz v2, :cond_7

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setSkipOverlay(I)V

    .line 193
    :cond_7
    const-string v2, "clicktype"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/data/ClickType;->getValue(Ljava/lang/String;)Lcom/adsdk/sdk/data/ClickType;

    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setClickType(Lcom/adsdk/sdk/data/ClickType;)V

    .line 195
    const-string v2, "clickurl"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setClickUrl(Ljava/lang/String;)V

    .line 196
    const-string v2, "refresh"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setRefresh(I)V

    .line 197
    const-string v2, "scale"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setScale(Z)V

    .line 198
    const-string v2, "skippreflight"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdResponse;->setSkipPreflight(Z)V

    goto/16 :goto_0

    .line 199
    :cond_8
    const-string v2, "mraidAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 200
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setType(I)V

    .line 201
    const-string v2, "htmlString"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setText(Ljava/lang/String;)V

    .line 202
    const-string v2, "htmlString"

    const-string v3, "skipoverlaybutton"

    invoke-direct {p0, v0, v2, v3}, Lcom/adsdk/sdk/RequestGeneralAd;->getAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    const-string v3, "PARSER"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SkipOverlay: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    if-eqz v2, :cond_9

    .line 205
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setSkipOverlay(I)V

    .line 207
    :cond_9
    const-string v2, "clicktype"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/data/ClickType;->getValue(Ljava/lang/String;)Lcom/adsdk/sdk/data/ClickType;

    move-result-object v2

    .line 208
    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setClickType(Lcom/adsdk/sdk/data/ClickType;)V

    .line 209
    const-string v2, "clickurl"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setClickUrl(Ljava/lang/String;)V

    .line 210
    const-string v2, "urltype"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setUrlType(Ljava/lang/String;)V

    .line 211
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setRefresh(I)V

    .line 212
    const-string v2, "scale"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setScale(Z)V

    .line 213
    const-string v2, "skippreflight"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdResponse;->setSkipPreflight(Z)V

    goto/16 :goto_0

    .line 214
    :cond_a
    const-string v0, "noAd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 215
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdResponse;->setType(I)V

    .line 216
    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getRefresh()I

    move-result v0

    if-gtz v0, :cond_0

    .line 217
    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdResponse;->setRefresh(I)V

    goto/16 :goto_0

    .line 220
    :cond_b
    new-instance v0, Lcom/adsdk/sdk/RequestException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown response type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
.end method

.method bridge synthetic parse(Ljava/io/InputStream;[Lorg/apache/http/Header;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/adsdk/sdk/RequestGeneralAd;->parse(Ljava/io/InputStream;[Lorg/apache/http/Header;Z)Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    return-object v0
.end method

.method parseTestString()Lcom/adsdk/sdk/AdResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/adsdk/sdk/RequestGeneralAd;->is:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->parse(Ljava/io/InputStream;[Lorg/apache/http/Header;Z)Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic parseTestString()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/adsdk/sdk/RequestGeneralAd;->parseTestString()Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    return-object v0
.end method
