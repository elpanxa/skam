.class public final Lcom/crashlytics/android/answers/EventAttributes;
.super Ljava/lang/Object;
.source "EventAttributes.java"


# static fields
.field public static final MAX_NUM_ATTRIBUTES:I = 0x14

.field public static final MAX_STRING_LENGTH:I = 0x64


# instance fields
.field final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/answers/EventAttributes;->attributes:Ljava/util/Map;

    return-void
.end method

.method static validateStringLength(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String cannot be longer than %d characters"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/EventAttributes;
    .locals 2

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    if-nez p2, :cond_1

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    invoke-static {p1}, Lcom/crashlytics/android/answers/EventAttributes;->validateStringLength(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/crashlytics/android/answers/EventAttributes;->putAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/EventAttributes;
    .locals 2

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    if-nez p2, :cond_1

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    invoke-static {p1}, Lcom/crashlytics/android/answers/EventAttributes;->validateStringLength(Ljava/lang/String;)V

    .line 47
    invoke-static {p2}, Lcom/crashlytics/android/answers/EventAttributes;->validateStringLength(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/crashlytics/android/answers/EventAttributes;->putAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-object p0
.end method

.method putAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/16 v4, 0x14

    .line 77
    iget-object v0, p0, Lcom/crashlytics/android/answers/EventAttributes;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/answers/EventAttributes;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Event cannot have more than %d attributes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/EventAttributes;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method
