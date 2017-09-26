.class public final Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter;
.super Lcom/startapp/android/publish/gson/TypeAdapter;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapp/android/publish/gson/TypeAdapter",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;


# instance fields
.field private final enUsFormat:Ljava/text/DateFormat;

.field private final iso8601Format:Ljava/text/DateFormat;

.field private final localFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter$1;

    invoke-direct {v0}, Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 42
    invoke-direct {p0}, Lcom/startapp/android/publish/gson/TypeAdapter;-><init>()V

    .line 50
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter;->enUsFormat:Ljava/text/DateFormat;

    .line 52
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    .line 54
    invoke-static {}, Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter;->buildIso8601Format()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter;->iso8601Format:Ljava/text/DateFormat;

    return-void
.end method

.method private static buildIso8601Format()Ljava/text/DateFormat;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 58
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 59
    return-object v0
.end method

.method private declared-synchronized deserializeToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 80
    :goto_0
    monitor-exit p0

    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter;->enUsFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 80
    :try_start_2
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter;->iso8601Format:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 81
    :catch_2
    move-exception v0

    .line 82
    :try_start_3
    new-instance v1, Lcom/startapp/android/publish/gson/JsonSyntaxException;

    invoke-direct {v1, p1, v0}, Lcom/startapp/android/publish/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bridge synthetic read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter;->read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/util/Date;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->peek()Lcom/startapp/android/publish/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/gson/stream/JsonToken;->NULL:Lcom/startapp/android/publish/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->nextNull()V

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter;->deserializeToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter;->write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/util/Date;)V

    return-void
.end method

.method public declared-synchronized write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    if-nez p2, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->nullValue()Lcom/startapp/android/publish/gson/stream/JsonWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter;->enUsFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/startapp/android/publish/gson/stream/JsonWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
