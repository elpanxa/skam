.class public Lcom/supersonicads/sdk/utils/Constants$ErrorCodes;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorCodes"
.end annotation


# static fields
.field public static final DownloadMobileController:Ljava/lang/String; = "Download Mobile Controller"

.field public static final FIALED_TO_CONVERT_GET_BY_FLAG:Ljava/lang/String; = "fialed to convert getByFlag"

.field public static final FIALED_TO_CONVERT_TOGGLE:Ljava/lang/String; = "fialed to convert toggle"

.field public static final FILE_NOT_EXIST_CODE:Ljava/lang/String; = "1"

.field public static final FILE_NOT_EXIST_MSG:Ljava/lang/String; = "File not exist"

.field public static final FOLDER_NOT_EXIST_CODE:Ljava/lang/String; = "1"

.field public static final FOLDER_NOT_EXIST_MSG:Ljava/lang/String; = "Folder not exist"

.field public static final GET_BY_FLAG_KEY_DOES_NOT_EXIST:Ljava/lang/String; = "getByFlag key does not exist"

.field public static final GetCachedFilesMap:Ljava/lang/String; = "Get Cached Files Map"

.field public static final GetCachedFilesMapTimeOut:Ljava/lang/String; = "Get Cached Files Map Time Out"

.field public static final GetDeviceStatus:Ljava/lang/String; = "Get Device Status"

.field public static final GetDeviceStatusTimeOut:Ljava/lang/String; = "Get Device Status Time Out"

.field public static final InitBC:Ljava/lang/String; = "Init BC"

.field public static final InitIS:Ljava/lang/String; = "Init IS"

.field public static final InitiatingController:Ljava/lang/String; = "Initiating Controller"

.field public static final KEY_DOES_NOT_EXIST:Ljava/lang/String; = "key does not exist"

.field public static final LoadingMobileController:Ljava/lang/String; = "Loading Mobile Controller"

.field public static final NUM_OF_AD_UNITS_DO_NOT_EXIST:Ljava/lang/String; = "Num Of Ad Units Do Not Exist"

.field public static final PATH_FILE_DOES_NOT_EXIST_ON_DISK:Ljava/lang/String; = "path file does not exist on disk"

.field public static final PATH_KEY_DOES_NOT_EXIST:Ljava/lang/String; = "path key does not exist"

.field public static final PRODUCT_TYPE_DOES_NOT_EXIST:Ljava/lang/String; = "productType does not exist"

.field public static final SET_USER_UNIQUE_ID_FAILED:Ljava/lang/String; = "setUserUniqueId failed"

.field public static final ShowOW:Ljava/lang/String; = "Show OW"

.field public static final ShowOWCredits:Ljava/lang/String; = "Show OW Credits"

.field public static final TOGGLE_KEY_DOES_NOT_EXIST:Ljava/lang/String; = "toggle key does not exist"

.field public static final UNIQUE_ID_OR_PRODUCT_TYPE_DOES_NOT_EXIST:Ljava/lang/String; = "uniqueId or productType does not exist"

.field public static final VALUE_DOES_NOT_EXIST:Ljava/lang/String; = "value does not exist"


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/utils/Constants;


# direct methods
.method public constructor <init>(Lcom/supersonicads/sdk/utils/Constants;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/supersonicads/sdk/utils/Constants$ErrorCodes;->this$0:Lcom/supersonicads/sdk/utils/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
