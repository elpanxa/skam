.class public Lio/fabric/sdk/android/services/common/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/common/CommonUtils$Architecture;
    }
.end annotation


# static fields
.field static final BYTES_IN_A_GIGABYTE:I = 0x40000000

.field static final BYTES_IN_A_KILOBYTE:I = 0x400

.field static final BYTES_IN_A_MEGABYTE:I = 0x100000

.field private static final CLS_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "com.crashlytics.prefs"

.field static final CLS_TRACE_DEFAULT:Z = false

.field static final CLS_TRACE_PREFERENCE_NAME:Ljava/lang/String; = "com.crashlytics.Trace"

.field static final CRASHLYTICS_BUILD_ID:Ljava/lang/String; = "com.crashlytics.android.build_id"

.field public static final DEVICE_STATE_BETAOS:I = 0x8

.field public static final DEVICE_STATE_COMPROMISEDLIBRARIES:I = 0x20

.field public static final DEVICE_STATE_DEBUGGERATTACHED:I = 0x4

.field public static final DEVICE_STATE_ISSIMULATOR:I = 0x1

.field public static final DEVICE_STATE_JAILBROKEN:I = 0x2

.field public static final DEVICE_STATE_VENDORINTERNAL:I = 0x10

.field static final ENCRYPTION_AES:Ljava/lang/String; = "AES/ECB/PKCS7Padding"

.field static final FABRIC_BUILD_ID:Ljava/lang/String; = "io.fabric.android.build_id"

.field public static final FILE_MODIFIED_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final GOOGLE_SDK:Ljava/lang/String; = "google_sdk"

.field private static final HEX_VALUES:[C

.field private static final LOGGING_DISABLED_DEFAULT:Z = false

.field private static final LOGGING_DISABLED_KEY:Ljava/lang/String; = "com.crashlytics.SilenceCrashlyticsLogCat"

.field private static final LOG_PRIORITY_NAME_ASSERT:Ljava/lang/String; = "A"

.field private static final LOG_PRIORITY_NAME_DEBUG:Ljava/lang/String; = "D"

.field private static final LOG_PRIORITY_NAME_ERROR:Ljava/lang/String; = "E"

.field private static final LOG_PRIORITY_NAME_INFO:Ljava/lang/String; = "I"

.field private static final LOG_PRIORITY_NAME_UNKNOWN:Ljava/lang/String; = "?"

.field private static final LOG_PRIORITY_NAME_VERBOSE:Ljava/lang/String; = "V"

.field private static final LOG_PRIORITY_NAME_WARN:Ljava/lang/String; = "W"

.field public static final MD5_INSTANCE:Ljava/lang/String; = "MD5"

.field public static final SDK:Ljava/lang/String; = "sdk"

.field public static final SHA1_INSTANCE:Ljava/lang/String; = "SHA-1"

.field private static final UNCALCULATED_TOTAL_RAM:J = -0x1L

.field private static clsTrace:Ljava/lang/Boolean;

.field private static loggingEnabled:Ljava/lang/Boolean;

.field private static totalRamInBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    sput-object v2, Lio/fabric/sdk/android/services/common/CommonUtils;->clsTrace:Ljava/lang/Boolean;

    .line 95
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lio/fabric/sdk/android/services/common/CommonUtils;->HEX_VALUES:[C

    .line 108
    const-wide/16 v0, -0x1

    sput-wide v0, Lio/fabric/sdk/android/services/common/CommonUtils;->totalRamInBytes:J

    .line 465
    sput-object v2, Lio/fabric/sdk/android/services/common/CommonUtils;->loggingEnabled:Ljava/lang/Boolean;

    .line 713
    new-instance v0, Lio/fabric/sdk/android/services/common/CommonUtils$1;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/CommonUtils$1;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/common/CommonUtils;->FILE_MODIFIED_COMPARATOR:Ljava/util/Comparator;

    return-void

    .line 95
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method

.method public static calculateFreeRamInBytes(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 390
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 391
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 392
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static calculateUsedDiskSpaceInBytes(Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 403
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 405
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v4, v2

    .line 406
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    .line 407
    sub-long v0, v4, v0

    return-wide v0
.end method

.method public static canTryConnection(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 966
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 969
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 970
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 974
    :goto_0
    return v0

    .line 970
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 974
    goto :goto_0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 912
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 913
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 747
    if-eqz p0, :cond_0

    .line 749
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Fabric"

    invoke-interface {v1, v2, p1, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 898
    if-eqz p0, :cond_0

    .line 900
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 901
    :catch_0
    move-exception v0

    .line 902
    throw v0

    .line 903
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static convertMemInfoToBytes(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 4

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 830
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 832
    :cond_0
    return-void
.end method

.method public static createCipher(ILjava/lang/String;)Ljavax/crypto/Cipher;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 653
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_0

    .line 654
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key must be at least 32 bytes."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "AES/ECB/PKCS7Padding"

    invoke-direct {v0, v1, v2, v4, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 659
    :try_start_0
    const-string v1, "AES/ECB/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 668
    invoke-virtual {v1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 669
    return-object v1

    .line 660
    :catch_0
    move-exception v0

    .line 661
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Could not create Cipher for AES/ECB/PKCS7Padding - should never happen."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 666
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs createInstanceIdFrom([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 352
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 380
    :goto_0
    return-object v0

    .line 357
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 359
    array-length v3, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, p0, v0

    .line 361
    if-eqz v4, :cond_2

    .line 363
    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 368
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 376
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public static dehexify(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 690
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 691
    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    .line 692
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 693
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 692
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 696
    :cond_0
    return-object v2
.end method

.method public static extractFieldFromSystemFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 129
    const-string v3, "\\s*:\\s*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 130
    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    .line 131
    array-length v3, v1

    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const/4 v3, 0x1

    aget-object v0, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    :cond_1
    const-string v1, "Failed to close system file reader."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 143
    :cond_2
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 138
    :goto_1
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    const-string v1, "Failed to close system file reader."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    const-string v1, "Failed to close system file reader."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 137
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static finishAffinity(Landroid/app/Activity;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 950
    if-nez p0, :cond_0

    .line 959
    :goto_0
    return-void

    .line 953
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 954
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_0

    .line 956
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 957
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static finishAffinity(Landroid/content/Context;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 935
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 936
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->finishAffinity(Landroid/app/Activity;I)V

    .line 938
    :cond_0
    return-void
.end method

.method public static flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 757
    if-eqz p0, :cond_0

    .line 759
    :try_start_0
    invoke-interface {p0}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 760
    :catch_0
    move-exception v0

    .line 761
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Fabric"

    invoke-interface {v1, v2, p1, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAppIconHashOrNull(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 858
    .line 861
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getAppIconResourceId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 862
    :try_start_1
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->sha1(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 863
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_0

    .line 867
    :goto_0
    const-string v1, "Failed to close icon input stream."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 870
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    .line 863
    goto :goto_0

    .line 864
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 865
    :goto_2
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "Could not calculate hash for app icon."

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 867
    const-string v1, "Failed to close icon input stream."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    const-string v1, "Failed to close icon input stream."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 864
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static getAppIconResourceId(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 874
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    return v0
.end method

.method public static getAppProcessInfo(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 4

    .prologue
    .line 251
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 253
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 255
    const/4 v1, 0x0

    .line 258
    if-eqz v0, :cond_1

    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 260
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getBatteryLevel(Landroid/content/Context;)F
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 412
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 413
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 415
    const-string v1, "level"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 416
    const-string v2, "scale"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 418
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method public static getBatteryVelocity(Landroid/content/Context;Z)I
    .locals 6

    .prologue
    const-wide v4, 0x4058c00000000000L    # 99.0

    .line 622
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBatteryLevel(Landroid/content/Context;)F

    move-result v0

    .line 624
    if-nez p1, :cond_0

    .line 625
    const/4 v0, 0x1

    .line 636
    :goto_0
    return v0

    .line 628
    :cond_0
    if-eqz p1, :cond_1

    float-to-double v2, v0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    .line 629
    const/4 v0, 0x3

    goto :goto_0

    .line 632
    :cond_1
    if-eqz p1, :cond_2

    float-to-double v0, v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    .line 633
    const/4 v0, 0x2

    goto :goto_0

    .line 636
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBitmapBytes(Landroid/graphics/Bitmap;)[B
    .locals 3

    .prologue
    .line 640
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 641
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 643
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 519
    if-eqz p0, :cond_0

    .line 520
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_0

    .line 523
    const-string v1, "bool"

    invoke-static {p0, p1, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 525
    if-lez v1, :cond_1

    .line 526
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    .line 537
    :cond_0
    :goto_0
    return p2

    .line 529
    :cond_1
    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 531
    if-lez v0, :cond_0

    .line 532
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method public static getCpuArchitectureInt()I
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lio/fabric/sdk/android/services/common/CommonUtils$Architecture;->getValue()Lio/fabric/sdk/android/services/common/CommonUtils$Architecture;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/CommonUtils$Architecture;->ordinal()I

    move-result v0

    return v0
.end method

.method public static getDeviceState(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 598
    const/4 v0, 0x0

    .line 599
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isEmulator(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    const/4 v0, 0x1

    .line 603
    :cond_0
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isRooted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    or-int/lit8 v0, v0, 0x2

    .line 607
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/services/common/CommonUtils;->isDebuggerAttached()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 608
    or-int/lit8 v0, v0, 0x4

    .line 611
    :cond_2
    return v0
.end method

.method public static getProximitySensorEnabled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 422
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isEmulator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    :goto_0
    return v1

    .line 427
    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 429
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static getResourcePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 814
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 815
    if-lez v0, :cond_0

    .line 816
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 818
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 542
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 111
    const-string v0, "com.crashlytics.prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 731
    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 733
    if-lez v0, :cond_0

    .line 734
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 737
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized getTotalRamInBytes()J
    .locals 9

    .prologue
    .line 205
    const-class v3, Lio/fabric/sdk/android/services/common/CommonUtils;

    monitor-enter v3

    :try_start_0
    sget-wide v0, Lio/fabric/sdk/android/services/common/CommonUtils;->totalRamInBytes:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 206
    const-wide/16 v0, 0x0

    .line 207
    new-instance v2, Ljava/io/File;

    const-string v4, "/proc/meminfo"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "MemTotal"

    invoke-static {v2, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->extractFieldFromSystemFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 210
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 213
    :try_start_1
    const-string v2, "KB"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    const-string v2, "KB"

    const/16 v5, 0x400

    invoke-static {v4, v2, v5}, Lio/fabric/sdk/android/services/common/CommonUtils;->convertMemInfoToBytes(Ljava/lang/String;Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 232
    :cond_0
    :goto_0
    :try_start_2
    sput-wide v0, Lio/fabric/sdk/android/services/common/CommonUtils;->totalRamInBytes:J

    .line 234
    :cond_1
    sget-wide v0, Lio/fabric/sdk/android/services/common/CommonUtils;->totalRamInBytes:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-wide v0

    .line 215
    :cond_2
    :try_start_3
    const-string v2, "MB"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    const-string v2, "MB"

    const/high16 v5, 0x100000

    invoke-static {v4, v2, v5}, Lio/fabric/sdk/android/services/common/CommonUtils;->convertMemInfoToBytes(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0

    .line 219
    :cond_3
    const-string v2, "GB"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 222
    const-string v2, "GB"

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v2, v5}, Lio/fabric/sdk/android/services/common/CommonUtils;->convertMemInfoToBytes(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0

    .line 224
    :cond_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v5, "Fabric"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected meminfo format while computing RAM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v2

    .line 228
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string v6, "Fabric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected meminfo format while computing RAM: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4, v2}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private static hash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 305
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 307
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 311
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 312
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Could not calculate hash for app icon."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    const-string v0, ""

    :goto_1
    return-object v0

    .line 315
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->hexify([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private static hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->hash([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hash([BLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 324
    .line 327
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 337
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 339
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->hexify([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create hashing algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning empty string."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    const-string v0, ""

    goto :goto_0
.end method

.method public static hexify([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 674
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    .line 676
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 677
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 678
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lio/fabric/sdk/android/services/common/CommonUtils;->HEX_VALUES:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 679
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lio/fabric/sdk/android/services/common/CommonUtils;->HEX_VALUES:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 681
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static hideKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 917
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 919
    if-eqz v0, :cond_0

    .line 920
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 922
    :cond_0
    return-void
.end method

.method public static isAppDebuggable(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 706
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isClsTrace(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 490
    sget-object v0, Lio/fabric/sdk/android/services/common/CommonUtils;->clsTrace:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 491
    const-string v0, "com.crashlytics.Trace"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/common/CommonUtils;->clsTrace:Ljava/lang/Boolean;

    .line 495
    :cond_0
    sget-object v0, Lio/fabric/sdk/android/services/common/CommonUtils;->clsTrace:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isDebuggerAttached()Z
    .locals 1

    .prologue
    .line 586
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmulator(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    const-string v1, "sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "google_sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLoggingEnabled(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 477
    sget-object v1, Lio/fabric/sdk/android/services/common/CommonUtils;->loggingEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 479
    const-string v1, "com.crashlytics.SilenceCrashlyticsLogCat"

    invoke-static {p0, v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/common/CommonUtils;->loggingEnabled:Ljava/lang/Boolean;

    .line 482
    :cond_1
    sget-object v0, Lio/fabric/sdk/android/services/common/CommonUtils;->loggingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 768
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRooted(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 562
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isEmulator(Landroid/content/Context;)Z

    move-result v1

    .line 563
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 564
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    const-string v3, "test-keys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 582
    :cond_0
    :goto_0
    return v0

    .line 569
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/app/Superuser.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 578
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 579
    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logControlled(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 459
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isClsTrace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-interface {v0, p1, v1, p3}, Lio/fabric/sdk/android/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_0
    return-void
.end method

.method public static logControlled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 439
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isClsTrace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-interface {v0, v1, p1}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_0
    return-void
.end method

.method public static logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 449
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isClsTrace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-interface {v0, v1, p1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void
.end method

.method public static logOrThrowIllegalArgumentException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1001
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1004
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    return-void
.end method

.method public static logOrThrowIllegalStateException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 986
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    return-void
.end method

.method public static logPriorityToString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 835
    packed-switch p0, :pswitch_data_0

    .line 849
    const-string v0, "?"

    :goto_0
    return-object v0

    .line 837
    :pswitch_0
    const-string v0, "A"

    goto :goto_0

    .line 839
    :pswitch_1
    const-string v0, "D"

    goto :goto_0

    .line 841
    :pswitch_2
    const-string v0, "E"

    goto :goto_0

    .line 843
    :pswitch_3
    const-string v0, "I"

    goto :goto_0

    .line 845
    :pswitch_4
    const-string v0, "V"

    goto :goto_0

    .line 847
    :pswitch_5
    const-string v0, "W"

    goto :goto_0

    .line 835
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->hash([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static openKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 925
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 927
    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 930
    :cond_0
    return-void
.end method

.method public static padWithZerosToMaxIntWidth(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 779
    if-gez p0, :cond_0

    .line 780
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value must be zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%1$10s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resolveBuildId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 881
    const/4 v0, 0x0

    .line 883
    const-string v1, "io.fabric.android.build_id"

    const-string v2, "string"

    invoke-static {p0, v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 885
    if-nez v1, :cond_0

    .line 886
    const-string v1, "com.crashlytics.android.build_id"

    const-string v2, "string"

    invoke-static {p0, v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 889
    :cond_0
    if-eqz v1, :cond_1

    .line 890
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 891
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build ID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_1
    return-object v0
.end method

.method public static sha1(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->hash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha1([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->hash([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static stringsEqualIncludingNull(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 788
    if-ne p0, p1, :cond_0

    .line 790
    const/4 v0, 0x1

    .line 799
    :goto_0
    return v0

    .line 792
    :cond_0
    if-eqz p0, :cond_1

    .line 795
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 799
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
