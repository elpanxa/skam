.class final enum Lcom/startapp/android/publish/banner/banner3d/a$a;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/banner/banner3d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/startapp/android/publish/banner/banner3d/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/android/publish/banner/banner3d/a$a;

.field public static final enum b:Lcom/startapp/android/publish/banner/banner3d/a$a;

.field public static final enum c:Lcom/startapp/android/publish/banner/banner3d/a$a;

.field public static final enum d:Lcom/startapp/android/publish/banner/banner3d/a$a;

.field public static final enum e:Lcom/startapp/android/publish/banner/banner3d/a$a;

.field private static final synthetic f:[Lcom/startapp/android/publish/banner/banner3d/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/a$a;

    const-string v1, "XS"

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/banner/banner3d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/banner/banner3d/a$a;->a:Lcom/startapp/android/publish/banner/banner3d/a$a;

    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/a$a;

    const-string v1, "S"

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/banner/banner3d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/banner/banner3d/a$a;->b:Lcom/startapp/android/publish/banner/banner3d/a$a;

    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/a$a;

    const-string v1, "M"

    invoke-direct {v0, v1, v4}, Lcom/startapp/android/publish/banner/banner3d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/banner/banner3d/a$a;->c:Lcom/startapp/android/publish/banner/banner3d/a$a;

    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/a$a;

    const-string v1, "L"

    invoke-direct {v0, v1, v5}, Lcom/startapp/android/publish/banner/banner3d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/banner/banner3d/a$a;->d:Lcom/startapp/android/publish/banner/banner3d/a$a;

    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/a$a;

    const-string v1, "XL"

    invoke-direct {v0, v1, v6}, Lcom/startapp/android/publish/banner/banner3d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/banner/banner3d/a$a;->e:Lcom/startapp/android/publish/banner/banner3d/a$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/startapp/android/publish/banner/banner3d/a$a;

    sget-object v1, Lcom/startapp/android/publish/banner/banner3d/a$a;->a:Lcom/startapp/android/publish/banner/banner3d/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/startapp/android/publish/banner/banner3d/a$a;->b:Lcom/startapp/android/publish/banner/banner3d/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/startapp/android/publish/banner/banner3d/a$a;->c:Lcom/startapp/android/publish/banner/banner3d/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/startapp/android/publish/banner/banner3d/a$a;->d:Lcom/startapp/android/publish/banner/banner3d/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/startapp/android/publish/banner/banner3d/a$a;->e:Lcom/startapp/android/publish/banner/banner3d/a$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/startapp/android/publish/banner/banner3d/a$a;->f:[Lcom/startapp/android/publish/banner/banner3d/a$a;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/banner/banner3d/a$a;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/startapp/android/publish/banner/banner3d/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/banner/banner3d/a$a;

    return-object v0
.end method

.method public static values()[Lcom/startapp/android/publish/banner/banner3d/a$a;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/startapp/android/publish/banner/banner3d/a$a;->f:[Lcom/startapp/android/publish/banner/banner3d/a$a;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/banner/banner3d/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/banner/banner3d/a$a;

    return-object v0
.end method
