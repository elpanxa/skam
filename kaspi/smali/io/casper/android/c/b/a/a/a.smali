.class public abstract Lio/casper/android/c/b/a/a/a;
.super Lio/casper/android/c/c/f/c;
.source "CasperRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/casper/android/c/c/f/c",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final CASPER_PRIVATE_TOKEN_HEADER_NAME:Ljava/lang/String; = "X-Casper-Private-Token"

.field private static final CASPER_SIGNATURE_HEADER_NAME:Ljava/lang/String; = "X-Casper-Signature"

.field private static final CASPER_TIMESTAMP_HEADER_NAME:Ljava/lang/String; = "X-Casper-Timestamp"

.field private static final zzh:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field private mDeviceIdentification:Lio/casper/android/g/a;

.field private mDeviceInfo:Lio/casper/android/g/b;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mObject:Ljava/lang/Object;

.field public mRequestDeviceId:Ljava/lang/String;

.field public mRequestTimestamp:Ljava/lang/String;

.field public mRoutingManager:Lio/casper/android/l/p;

.field public mSnapchatAccount:Lio/casper/android/e/b/b;

.field private mSnapchatAccountManager:Lio/casper/android/l/s;

.field public mSnapchatManager:Lio/casper/android/l/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lio/casper/android/c/b/a/a/a;->zzh:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x58t
        0x2dt
        0x43t
        0x61t
        0x73t
        0x70t
        0x65t
        0x72t
        0x2dt
        0x42t
        0x69t
        0x74t
        0x53t
        0x74t
        0x61t
        0x6dt
        0x70t
        0x2dt
        0x41t
        0x75t
        0x74t
        0x68t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0}, Lio/casper/android/c/c/f/c;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/casper/android/c/b/a/a/a;->mMap:Ljava/util/Map;

    .line 59
    iput-object p1, p0, Lio/casper/android/c/b/a/a/a;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Lio/casper/android/l/p;

    iget-object v1, p0, Lio/casper/android/c/b/a/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/c/b/a/a/a;->mRoutingManager:Lio/casper/android/l/p;

    .line 61
    new-instance v0, Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/c/b/a/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/c/b/a/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    .line 62
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/c/b/a/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/c/b/a/a/a;->mSnapchatAccountManager:Lio/casper/android/l/s;

    .line 64
    iget-object v0, p0, Lio/casper/android/c/b/a/a/a;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/c/b/a/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    .line 66
    invoke-static {}, Lio/casper/android/k/a;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/c/b/a/a/a;->mRequestTimestamp:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lio/casper/android/c/b/a/a/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/casper/android/util/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/c/b/a/a/a;->mRequestDeviceId:Ljava/lang/String;

    .line 69
    new-instance v0, Lio/casper/android/g/a;

    invoke-direct {v0}, Lio/casper/android/g/a;-><init>()V

    iput-object v0, p0, Lio/casper/android/c/b/a/a/a;->mDeviceIdentification:Lio/casper/android/g/a;

    .line 70
    iget-object v0, p0, Lio/casper/android/c/b/a/a/a;->mDeviceIdentification:Lio/casper/android/g/a;

    invoke-virtual {v0}, Lio/casper/android/g/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Lio/casper/android/g/b;

    iget-object v2, p0, Lio/casper/android/c/b/a/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lio/casper/android/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lio/casper/android/c/b/a/a/a;->mDeviceInfo:Lio/casper/android/g/b;

    .line 73
    invoke-virtual {p0}, Lio/casper/android/c/b/a/a/a;->i()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {}, Lio/casper/android/CasperApplication;->b()Lio/casper/android/d/a;

    move-result-object v2

    iput-object v2, p0, Lio/casper/android/c/b/a/a/a;->mObject:Ljava/lang/Object;

    .line 77
    const-string v2, "Accept-Language"

    invoke-virtual {p0}, Lio/casper/android/c/b/a/a/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/casper/android/c/b/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "Accept-Locale"

    invoke-virtual {p0}, Lio/casper/android/c/b/a/a/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/casper/android/c/b/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "User-Agent"

    invoke-virtual {p0}, Lio/casper/android/c/b/a/a/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/casper/android/c/b/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "X-Casper-API-Key"

    const-string v3, "150926769b11adf0775929fe81c7c48c"

    invoke-virtual {p0, v2, v3}, Lio/casper/android/c/b/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "X-Casper-Device"

    invoke-virtual {p0, v2, v0}, Lio/casper/android/c/b/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "X-Casper-Device-Info"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/b/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "snapchat_version"

    iget-object v2, p0, Lio/casper/android/c/b/a/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v2}, Lio/casper/android/l/t;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lio/casper/android/c/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "casper_version"

    iget-object v2, p0, Lio/casper/android/c/b/a/a/a;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lio/casper/android/util/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lio/casper/android/c/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "using_root_login"

    invoke-virtual {p0}, Lio/casper/android/c/b/a/a/a;->l()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lio/casper/android/c/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/util/CryptoUtil;->getSHA256([B)[B

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lio/casper/android/c/b/a/a/a;->mMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0xa

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    return-void

    .line 92
    :array_0
    .array-data 1
        0x64t
        0x65t
        0x76t
        0x69t
        0x63t
        0x65t
        0x49t
        0x6et
        0x66t
        0x6ft
        0x49t
        0x6et
        0x74t
        0x65t
        0x67t
        0x72t
        0x69t
        0x74t
        0x79t
    .end array-data
.end method

.method private a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(Lio/casper/android/c/c/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/casper/android/c/c/a/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 208
    invoke-super {p0, p1}, Lio/casper/android/c/c/f/c;->a(Lio/casper/android/c/c/a/a;)V

    .line 226
    return-void
.end method

.method public abstract b()Z
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/casper/android/c/b/a/a/a;->mRoutingManager:Lio/casper/android/l/p;

    invoke-virtual {v1}, Lio/casper/android/l/p;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/casper/android/c/b/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/squareup/okhttp/Request;
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lio/casper/android/c/b/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "device_id"

    iget-object v1, p0, Lio/casper/android/c/b/a/a/a;->mRequestDeviceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "token"

    const-string v1, "9UpsYwhthWspIoHonKjniOMu09UBkS9w"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "timestamp"

    iget-object v1, p0, Lio/casper/android/c/b/a/a/a;->mRequestTimestamp:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "token_hash"

    iget-object v1, p0, Lio/casper/android/c/b/a/a/a;->mRequestDeviceId:Ljava/lang/String;

    iget-object v2, p0, Lio/casper/android/c/b/a/a/a;->mRequestTimestamp:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/casper/android/k/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    const-string v0, "X-Casper-Timestamp"

    iget-object v1, p0, Lio/casper/android/c/b/a/a/a;->mRequestTimestamp:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/b/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "X-Casper-Signature"

    iget-object v1, p0, Lio/casper/android/c/b/a/a/a;->mParams:Ljava/util/TreeMap;

    invoke-static {v1}, Lio/casper/android/security/Security;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/b/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lio/casper/android/c/b/a/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lio/casper/android/c/b/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/c/b/a/a/a;->mRequestTimestamp:Ljava/lang/String;

    iget-object v3, p0, Lio/casper/android/c/b/a/a/a;->mParams:Ljava/util/TreeMap;

    invoke-static {v0, v1, v2, v3}, Lio/casper/android/security/Security;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, "X-Casper-Private-Token"

    invoke-virtual {p0, v1, v0}, Lio/casper/android/c/b/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p0}, Lio/casper/android/c/b/a/a/a;->a(Ljava/lang/Object;)V

    .line 131
    invoke-super {p0}, Lio/casper/android/c/c/f/c;->f()Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 141
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";q=1, en;q=0.9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lio/casper/android/c/b/a/a/a;->mDeviceInfo:Lio/casper/android/g/b;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    iget-object v0, p0, Lio/casper/android/c/b/a/a/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/casper/android/util/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lio/casper/android/c/b/a/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 161
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 162
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 163
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 165
    const-string v4, "%sdpi; %sx%s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Lio/casper/android/util/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 167
    const-string v2, "Casper/%s (%s; Android %s#%s#%s; %s)"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v0, v3, v7

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v0, v3, v8

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v0, v3, v9

    const/4 v0, 0x4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lio/casper/android/util/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Lio/casper/android/c/c/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/casper/android/c/c/g/a",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    invoke-super {p0}, Lio/casper/android/c/c/f/c;->k()Lio/casper/android/c/c/g/a;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lio/casper/android/c/b/a/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lio/casper/android/c/b/a/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
