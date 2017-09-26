.class public Lio/casper/android/k/a/a;
.super Ljava/lang/Object;
.source "ChatBlobResponseParser.java"

# interfaces
.implements Lcom/liamcottle/lib/okhttpwrapper/response/parser/ResponseParser;


# instance fields
.field private mChatMessage:Lio/casper/android/n/b/d/a;

.field private mContext:Landroid/content/Context;

.field private mInternalCacheManager:Lio/casper/android/l/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/b/d/a;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/casper/android/k/a/a;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lio/casper/android/k/a/a;->mChatMessage:Lio/casper/android/n/b/d/a;

    .line 28
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/k/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/k/a/a;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lio/casper/android/k/a/a;->mInternalCacheManager:Lio/casper/android/l/k;

    iget-object v2, p0, Lio/casper/android/k/a/a;->mChatMessage:Lio/casper/android/n/b/d/a;

    invoke-virtual {v1, v2}, Lio/casper/android/l/k;->a(Lio/casper/android/n/b/d/a;)Ljava/io/File;

    move-result-object v1

    .line 39
    iget-object v2, p0, Lio/casper/android/k/a/a;->mChatMessage:Lio/casper/android/n/b/d/a;

    invoke-virtual {v2}, Lio/casper/android/n/b/d/a;->a()Lio/casper/android/n/b/d/a$a;

    move-result-object v2

    invoke-virtual {v2}, Lio/casper/android/n/b/d/a$a;->a()Lio/casper/android/n/b/d/a$a$a;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lio/casper/android/n/b/d/a$a$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lio/casper/android/n/b/d/a$a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lio/casper/android/n/e/a/a;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/CipherInputStream;

    move-result-object v0

    .line 43
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 44
    invoke-static {v0, v2}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 45
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lio/casper/android/k/a/a;->a(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
