.class public final enum Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/model/MetaDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

.field public static final enum APP_IDLE:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

.field public static final enum CUSTOM:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

.field public static final enum IN_APP_PURCHASE:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

.field public static final enum LAUNCH:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 22
    new-instance v0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    const-string v1, "LAUNCH"

    invoke-direct {v0, v1, v5, v2}, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->LAUNCH:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    .line 23
    new-instance v0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    const-string v1, "APP_IDLE"

    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->APP_IDLE:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    .line 24
    new-instance v0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    const-string v1, "IN_APP_PURCHASE"

    invoke-direct {v0, v1, v3, v4}, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->IN_APP_PURCHASE:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    .line 25
    new-instance v0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v4, v6}, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->CUSTOM:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    .line 21
    new-array v0, v6, [Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    sget-object v1, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->LAUNCH:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->APP_IDLE:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->IN_APP_PURCHASE:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->CUSTOM:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->$VALUES:[Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->index:I

    .line 30
    return-void
.end method

.method public static getByIndex(I)Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;
    .locals 4

    .prologue
    .line 37
    sget-object v1, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->APP_IDLE:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    .line 38
    invoke-static {}, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->values()[Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    move-result-object v2

    .line 39
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 40
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->getIndex()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 41
    aget-object v1, v2, v0

    .line 39
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    return-object v0
.end method

.method public static values()[Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->$VALUES:[Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->index:I

    return v0
.end method
