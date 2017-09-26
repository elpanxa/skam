.class public final enum Lcom/startapp/android/publish/d$a;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/startapp/android/publish/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/android/publish/d$a;

.field public static final enum b:Lcom/startapp/android/publish/d$a;

.field public static final enum c:Lcom/startapp/android/publish/d$a;

.field public static final enum d:Lcom/startapp/android/publish/d$a;

.field private static final synthetic e:[Lcom/startapp/android/publish/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    new-instance v0, Lcom/startapp/android/publish/d$a;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/d$a;->a:Lcom/startapp/android/publish/d$a;

    .line 199
    new-instance v0, Lcom/startapp/android/publish/d$a;

    const-string v1, "JSON"

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/d$a;->b:Lcom/startapp/android/publish/d$a;

    .line 200
    new-instance v0, Lcom/startapp/android/publish/d$a;

    const-string v1, "METADATA"

    invoke-direct {v0, v1, v4}, Lcom/startapp/android/publish/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/d$a;->c:Lcom/startapp/android/publish/d$a;

    .line 201
    new-instance v0, Lcom/startapp/android/publish/d$a;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v5}, Lcom/startapp/android/publish/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/d$a;->d:Lcom/startapp/android/publish/d$a;

    .line 197
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/startapp/android/publish/d$a;

    sget-object v1, Lcom/startapp/android/publish/d$a;->a:Lcom/startapp/android/publish/d$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/startapp/android/publish/d$a;->b:Lcom/startapp/android/publish/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/startapp/android/publish/d$a;->c:Lcom/startapp/android/publish/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/startapp/android/publish/d$a;->d:Lcom/startapp/android/publish/d$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/startapp/android/publish/d$a;->e:[Lcom/startapp/android/publish/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/d$a;
    .locals 1

    .prologue
    .line 197
    const-class v0, Lcom/startapp/android/publish/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/d$a;

    return-object v0
.end method

.method public static values()[Lcom/startapp/android/publish/d$a;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/startapp/android/publish/d$a;->e:[Lcom/startapp/android/publish/d$a;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/d$a;

    return-object v0
.end method
