.class public Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;
.super Ljava/lang/Object;
.source "ResponseStatus.java"


# static fields
.field public static HTTP_CONNECTION_ERROR:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

.field public static HTTP_INTERNAL_SERVER_ERROR:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

.field public static HTTP_TIMEOUT:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

.field public static HTTP_UNAUTHORIZED:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

.field public static PARSER_ERROR:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    const/4 v1, -0x1

    const-string v2, "Server connection failed. Please check your Internet connection."

    invoke-direct {v0, v1, v2}, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;->HTTP_CONNECTION_ERROR:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    .line 22
    new-instance v0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    const/16 v1, 0x1f4

    const-string v2, "Internal Server Error."

    invoke-direct {v0, v1, v2}, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;->HTTP_INTERNAL_SERVER_ERROR:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    .line 23
    new-instance v0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    const/16 v1, 0x191

    const-string v2, "Unauthorized"

    invoke-direct {v0, v1, v2}, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;->HTTP_UNAUTHORIZED:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    .line 24
    new-instance v0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    const/4 v1, -0x2

    const-string v2, "Connection Timed Out"

    invoke-direct {v0, v1, v2}, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;->HTTP_TIMEOUT:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    .line 25
    new-instance v0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    const/16 v1, 0x198

    const-string v2, "Unexpected Server Response"

    invoke-direct {v0, v1, v2}, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;->PARSER_ERROR:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;->code:I

    .line 10
    iput-object p2, p0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;->message:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;->message:Ljava/lang/String;

    return-object v0
.end method
