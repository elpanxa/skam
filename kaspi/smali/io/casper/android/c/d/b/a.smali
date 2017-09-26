.class public Lio/casper/android/c/d/b/a;
.super Ljava/lang/Object;
.source "OAuthTokenResponseParser.java"

# interfaces
.implements Lio/casper/android/c/c/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/casper/android/c/c/d/d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ERROR_BAD_AUTHENTICATION:Ljava/lang/String; = "BadAuthentication"

.field public static final INFO_WEB_LOGIN_REQUIRED:Ljava/lang/String; = "WebLoginRequired"

.field public static final KEY_AUTH:Ljava/lang/String; = "Auth"

.field public static final KEY_ERROR:Ljava/lang/String; = "Error"

.field public static final KEY_INFO:Ljava/lang/String; = "Info"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    .line 31
    :try_start_0
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v3, "\n"

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 34
    array-length v6, v5

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v0, v5, v3

    .line 36
    const-string v7, "="

    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 38
    const/4 v7, 0x0

    aget-object v7, v0, v7

    .line 39
    const/4 v8, 0x1

    aget-object v8, v0, v8

    .line 41
    const/4 v0, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 34
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 41
    :sswitch_0
    const-string v9, "Auth"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v9, "Info"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v9, "Error"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    .line 70
    :pswitch_0
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v8

    .line 49
    :pswitch_1
    :try_start_1
    const-string v0, "WebLoginRequired"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    new-instance v0, Lio/casper/android/c/d/a/a;

    sget-object v1, Lio/casper/android/c/d/a/a$a;->WEB_LOGIN_REQUIRED:Lio/casper/android/c/d/a/a$a;

    invoke-direct {v0, v1}, Lio/casper/android/c/d/a/a;-><init>(Lio/casper/android/c/d/a/a$a;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    :try_start_2
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    .line 57
    :cond_2
    :pswitch_2
    :try_start_3
    const-string v0, "BadAuthentication"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lio/casper/android/c/d/a/a;

    sget-object v1, Lio/casper/android/c/d/a/a$a;->BAD_AUTHENTICATION:Lio/casper/android/c/d/a/a$a;

    invoke-direct {v0, v1}, Lio/casper/android/c/d/a/a;-><init>(Lio/casper/android/c/d/a/a$a;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :cond_3
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 73
    new-instance v0, Lio/casper/android/c/d/a/a;

    sget-object v1, Lio/casper/android/c/d/a/a$a;->UNKNOWN:Lio/casper/android/c/d/a/a$a;

    invoke-direct {v0, v1}, Lio/casper/android/c/d/a/a;-><init>(Lio/casper/android/c/d/a/a$a;)V

    throw v0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1f51c8 -> :sswitch_0
        0x22d8ce -> :sswitch_1
        0x401e1e8 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic b(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lio/casper/android/c/d/b/a;->a(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
