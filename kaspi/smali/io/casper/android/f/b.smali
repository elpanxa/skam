.class public Lio/casper/android/f/b;
.super Ljava/lang/Object;
.source "JSONParserExceptionReport.java"


# instance fields
.field private mData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private mHeaders:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "headers"
    .end annotation
.end field

.field private mParams:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "params"
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lio/casper/android/f/b;->mUrl:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lio/casper/android/f/b;->mHeaders:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lio/casper/android/f/b;->mData:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lio/casper/android/f/b;->mParams:Ljava/util/Map;

    .line 48
    return-void
.end method
