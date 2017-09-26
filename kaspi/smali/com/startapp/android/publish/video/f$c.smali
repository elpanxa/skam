.class public final enum Lcom/startapp/android/publish/video/f$c;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/video/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/startapp/android/publish/video/f$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/android/publish/video/f$c;

.field public static final enum b:Lcom/startapp/android/publish/video/f$c;

.field public static final enum c:Lcom/startapp/android/publish/video/f$c;

.field public static final enum d:Lcom/startapp/android/publish/video/f$c;

.field private static final synthetic e:[Lcom/startapp/android/publish/video/f$c;


# instance fields
.field private desctiption:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/startapp/android/publish/video/f$c;

    const-string v1, "ELIGIBLE"

    const-string v2, ""

    invoke-direct {v0, v1, v3, v2}, Lcom/startapp/android/publish/video/f$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapp/android/publish/video/f$c;->a:Lcom/startapp/android/publish/video/f$c;

    .line 31
    new-instance v0, Lcom/startapp/android/publish/video/f$c;

    const-string v1, "INELIGIBLE_NO_STORAGE"

    const-string v2, "Not enough storage for video"

    invoke-direct {v0, v1, v4, v2}, Lcom/startapp/android/publish/video/f$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapp/android/publish/video/f$c;->b:Lcom/startapp/android/publish/video/f$c;

    .line 32
    new-instance v0, Lcom/startapp/android/publish/video/f$c;

    const-string v1, "INELIGIBLE_MISSING_ACTIVITY"

    const-string v2, "FullScreenActivity not declared in AndroidManifest.xml"

    invoke-direct {v0, v1, v5, v2}, Lcom/startapp/android/publish/video/f$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapp/android/publish/video/f$c;->c:Lcom/startapp/android/publish/video/f$c;

    .line 33
    new-instance v0, Lcom/startapp/android/publish/video/f$c;

    const-string v1, "INELIGIBLE_ERRORS_THRESHOLD_REACHED"

    const-string v2, "Video errors threshold reached."

    invoke-direct {v0, v1, v6, v2}, Lcom/startapp/android/publish/video/f$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapp/android/publish/video/f$c;->d:Lcom/startapp/android/publish/video/f$c;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/startapp/android/publish/video/f$c;

    sget-object v1, Lcom/startapp/android/publish/video/f$c;->a:Lcom/startapp/android/publish/video/f$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/startapp/android/publish/video/f$c;->b:Lcom/startapp/android/publish/video/f$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/startapp/android/publish/video/f$c;->c:Lcom/startapp/android/publish/video/f$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/startapp/android/publish/video/f$c;->d:Lcom/startapp/android/publish/video/f$c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/startapp/android/publish/video/f$c;->e:[Lcom/startapp/android/publish/video/f$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/startapp/android/publish/video/f$c;->desctiption:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/video/f$c;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/startapp/android/publish/video/f$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/video/f$c;

    return-object v0
.end method

.method public static values()[Lcom/startapp/android/publish/video/f$c;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/startapp/android/publish/video/f$c;->e:[Lcom/startapp/android/publish/video/f$c;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/video/f$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/video/f$c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/startapp/android/publish/video/f$c;->desctiption:Ljava/lang/String;

    return-object v0
.end method
