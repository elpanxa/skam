.class public Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;
.super Ljava/lang/Object;
.source "ModelSpecificDistanceCalculator.java"

# interfaces
.implements Lorg/altbeacon/beacon/distance/DistanceCalculator;


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "model-distance-calculations.json"

.field private static final TAG:Ljava/lang/String; = "ModelSpecificDistanceCalculator"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultModel:Lorg/altbeacon/beacon/distance/AndroidModel;

.field private mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

.field private mModel:Lorg/altbeacon/beacon/distance/AndroidModel;

.field mModelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/altbeacon/beacon/distance/AndroidModel;",
            "Lorg/altbeacon/beacon/distance/DistanceCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteUpdateUrlString:Ljava/lang/String;

.field private mRequestedModel:Lorg/altbeacon/beacon/distance/AndroidModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lorg/altbeacon/beacon/distance/AndroidModel;->forThisDevice()Lorg/altbeacon/beacon/distance/AndroidModel;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/altbeacon/beacon/distance/AndroidModel;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/altbeacon/beacon/distance/AndroidModel;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRequestedModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    .line 71
    iput-object p2, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->loadModelMap()V

    .line 74
    invoke-direct {p0, p3}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->findCalculatorForModel(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->buildModelMap(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->saveJson(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->loadModelMapFromFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;Lorg/altbeacon/beacon/distance/DistanceCalculator;)Lorg/altbeacon/beacon/distance/DistanceCalculator;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    return-object p1
.end method

.method static synthetic access$500(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Lorg/altbeacon/beacon/distance/AndroidModel;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRequestedModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    return-object v0
.end method

.method static synthetic access$600(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->findCalculatorForModel(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v0

    return-object v0
.end method

.method private buildModelMap(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModelMap:Ljava/util/Map;

    .line 249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 250
    const-string v1, "models"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 251
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 252
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 253
    const/4 v1, 0x0

    .line 254
    const-string v3, "default"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    const-string v1, "default"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move v8, v1

    .line 257
    :goto_1
    const-string v1, "coefficient1"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 258
    const-string v1, "coefficient2"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 259
    const-string v1, "coefficient3"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 260
    const-string v1, "version"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 261
    const-string v1, "build_number"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 262
    const-string v1, "model"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 263
    const-string v1, "manufacturer"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 265
    new-instance v1, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;-><init>(DDD)V

    .line 268
    new-instance v2, Lorg/altbeacon/beacon/distance/AndroidModel;

    invoke-direct {v2, v10, v11, v12, v13}, Lorg/altbeacon/beacon/distance/AndroidModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModelMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    if-eqz v8, :cond_0

    .line 271
    iput-object v2, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDefaultModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    .line 251
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    return-void

    :cond_2
    move v8, v1

    goto :goto_1
.end method

.method private findCalculatorForModel(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 100
    const-string v0, "ModelSpecificDistanceCalculator"

    const-string v1, "Finding best distance calculator for %s, %s, %s, %s"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getBuildNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getModel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-virtual {p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModelMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "ModelSpecificDistanceCalculator"

    const-string v1, "Cannot get distance calculator because modelMap was never initialized"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    .line 110
    :cond_0
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/distance/AndroidModel;

    .line 112
    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->matchScore(Lorg/altbeacon/beacon/distance/AndroidModel;)I

    move-result v5

    if-le v5, v2, :cond_3

    .line 113
    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->matchScore(Lorg/altbeacon/beacon/distance/AndroidModel;)I

    move-result v1

    :goto_2
    move v2, v1

    move-object v1, v0

    .line 116
    goto :goto_1

    .line 117
    :cond_1
    if-eqz v1, :cond_2

    .line 118
    const-string v0, "ModelSpecificDistanceCalculator"

    const-string v4, "found a match with score %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v0, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    const-string v0, "ModelSpecificDistanceCalculator"

    const-string v2, "Finding best distance calculator for %s, %s, %s, %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getBuildNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-virtual {v1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getModel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    invoke-virtual {v1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-static {v0, v2, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iput-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    .line 127
    :goto_3
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModelMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/distance/DistanceCalculator;

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDefaultModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    .line 125
    const-string v0, "ModelSpecificDistanceCalculator"

    const-string v1, "Cannot find match for this device.  Using default"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    move-object v0, v1

    move v1, v2

    goto :goto_2
.end method

.method private loadDefaultModelMap()V
    .locals 4

    .prologue
    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModelMap:Ljava/util/Map;

    .line 278
    :try_start_0
    const-string v0, "model-distance-calculations.json"

    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->stringFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->buildModelMap(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string v1, "ModelSpecificDistanceCalculator"

    const-string v2, "Cannot build model distance calculations"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private loadModelMap()V
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 133
    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->loadModelMapFromFile()Z

    move-result v0

    .line 137
    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->requestModelMapFromWeb()V

    .line 141
    :cond_0
    if-nez v0, :cond_1

    .line 142
    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->loadDefaultModelMap()V

    .line 144
    :cond_1
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRequestedModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->findCalculatorForModel(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 145
    return-void
.end method

.method private loadModelMapFromFile()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 148
    new-instance v5, Ljava/io/File;

    iget-object v2, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "model-distance-calculations.json"

    invoke-direct {v5, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 157
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v3, v4

    .line 169
    :goto_1
    if-eqz v0, :cond_0

    .line 170
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 172
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 173
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :cond_1
    :goto_3
    move v0, v1

    .line 182
    :goto_4
    return v0

    .line 169
    :cond_2
    if-eqz v2, :cond_3

    .line 170
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 172
    :cond_3
    :goto_5
    if-eqz v4, :cond_4

    .line 173
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 177
    :cond_4
    :goto_6
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->buildModelMap(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 179
    :catch_1
    move-exception v2

    .line 180
    const-string v3, "ModelSpecificDistanceCalculator"

    const-string v4, "Cannot update distance models from online database at %s with JSON"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    iget-object v2, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    aput-object v2, v5, v0

    const/4 v0, 0x2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 182
    goto :goto_4

    .line 164
    :catch_2
    move-exception v0

    move-object v4, v3

    .line 165
    :goto_7
    :try_start_8
    const-string v2, "ModelSpecificDistanceCalculator"

    const-string v6, "Cannot open distance model file %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v0, v2, v6, v7}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 169
    if-eqz v3, :cond_5

    .line 170
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 172
    :cond_5
    :goto_8
    if-eqz v4, :cond_6

    .line 173
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :cond_6
    :goto_9
    move v0, v1

    goto :goto_4

    .line 169
    :catchall_0
    move-exception v0

    move-object v4, v3

    :goto_a
    if-eqz v3, :cond_7

    .line 170
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 172
    :cond_7
    :goto_b
    if-eqz v4, :cond_8

    .line 173
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    :cond_8
    :goto_c
    throw v0

    .line 170
    :catch_3
    move-exception v2

    goto :goto_5

    .line 173
    :catch_4
    move-exception v2

    goto :goto_6

    .line 170
    :catch_5
    move-exception v0

    goto :goto_2

    .line 173
    :catch_6
    move-exception v0

    goto :goto_3

    .line 170
    :catch_7
    move-exception v0

    goto :goto_8

    .line 173
    :catch_8
    move-exception v0

    goto :goto_9

    .line 170
    :catch_9
    move-exception v1

    goto :goto_b

    .line 173
    :catch_a
    move-exception v1

    goto :goto_c

    .line 169
    :catchall_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_a

    .line 164
    :catch_b
    move-exception v0

    goto :goto_7

    :catch_c
    move-exception v0

    move-object v3, v2

    goto :goto_7

    .line 160
    :catch_d
    move-exception v0

    move-object v0, v3

    goto :goto_1

    :catch_e
    move-exception v0

    move-object v0, v3

    move-object v3, v4

    goto :goto_1
.end method

.method private requestModelMapFromWeb()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 211
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "ModelSpecificDistanceCalculator"

    const-string v1, "App has no android.permission.INTERNET permission.  Cannot check for distance model updates"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    new-instance v3, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;

    invoke-direct {v3, p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;-><init>(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater$CompletionHandler;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private saveJson(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 188
    const/4 v2, 0x0

    .line 191
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mContext:Landroid/content/Context;

    const-string v3, "model-distance-calculations.json"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 193
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 204
    :cond_0
    :goto_0
    const-string v1, "ModelSpecificDistanceCalculator"

    const-string v2, "Successfully saved new distance model file"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    :try_start_2
    const-string v3, "ModelSpecificDistanceCalculator"

    const-string v4, "Cannot write updated distance model to local storage"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 202
    :catch_1
    move-exception v1

    goto :goto_1

    .line 199
    :catchall_0
    move-exception v0

    .line 200
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 202
    :cond_2
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private stringFromFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 286
    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    :try_start_0
    const-class v0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 291
    if-nez v2, :cond_6

    .line 292
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 295
    :goto_0
    if-nez v3, :cond_2

    .line 296
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load resource at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_1
    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 310
    :cond_0
    if-eqz v2, :cond_1

    .line 311
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0

    .line 298
    :cond_2
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v0, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_2
    if-eqz v0, :cond_3

    .line 301
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v0

    goto :goto_2

    .line 307
    :cond_3
    if-eqz v2, :cond_4

    .line 308
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 310
    :cond_4
    if-eqz v3, :cond_5

    .line 311
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 314
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 307
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :cond_6
    move-object v3, v2

    goto :goto_0
.end method


# virtual methods
.method public calculateDistance(ID)D
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    if-nez v0, :cond_0

    .line 93
    const-string v0, "ModelSpecificDistanceCalculator"

    const-string v1, "distance calculator has not been set"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 96
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    invoke-interface {v0, p1, p2, p3}, Lorg/altbeacon/beacon/distance/DistanceCalculator;->calculateDistance(ID)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getModel()Lorg/altbeacon/beacon/distance/AndroidModel;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    return-object v0
.end method

.method public getRequestedModel()Lorg/altbeacon/beacon/distance/AndroidModel;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRequestedModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    return-object v0
.end method
