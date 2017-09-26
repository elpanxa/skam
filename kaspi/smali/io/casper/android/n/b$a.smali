.class public final enum Lio/casper/android/n/b$a;
.super Ljava/lang/Enum;
.source "SnapchatSessionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/n/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/n/b$a;

.field public static final enum AVAILABLE:Lio/casper/android/n/b$a;

.field public static final enum NOT_AVAILABLE:Lio/casper/android/n/b$a;

.field public static final enum NO_ACCESS:Lio/casper/android/n/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    new-instance v0, Lio/casper/android/n/b$a;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v2}, Lio/casper/android/n/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/b$a;->AVAILABLE:Lio/casper/android/n/b$a;

    new-instance v0, Lio/casper/android/n/b$a;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v3}, Lio/casper/android/n/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/b$a;->NOT_AVAILABLE:Lio/casper/android/n/b$a;

    new-instance v0, Lio/casper/android/n/b$a;

    const-string v1, "NO_ACCESS"

    invoke-direct {v0, v1, v4}, Lio/casper/android/n/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/b$a;->NO_ACCESS:Lio/casper/android/n/b$a;

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Lio/casper/android/n/b$a;

    sget-object v1, Lio/casper/android/n/b$a;->AVAILABLE:Lio/casper/android/n/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lio/casper/android/n/b$a;->NOT_AVAILABLE:Lio/casper/android/n/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lio/casper/android/n/b$a;->NO_ACCESS:Lio/casper/android/n/b$a;

    aput-object v1, v0, v4

    sput-object v0, Lio/casper/android/n/b$a;->$VALUES:[Lio/casper/android/n/b$a;

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
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/n/b$a;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lio/casper/android/n/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/n/b$a;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lio/casper/android/n/b$a;->$VALUES:[Lio/casper/android/n/b$a;

    invoke-virtual {v0}, [Lio/casper/android/n/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/n/b$a;

    return-object v0
.end method
