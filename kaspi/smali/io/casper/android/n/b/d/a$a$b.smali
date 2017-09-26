.class public final enum Lio/casper/android/n/b/d/a$a$b;
.super Ljava/lang/Enum;
.source "ChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/b/d/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/n/b/d/a$a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/n/b/d/a$a$b;

.field public static final enum DISCOVER_SHARE:Lio/casper/android/n/b/d/a$a$b;

.field public static final enum HERE_SCREENSHOT:Lio/casper/android/n/b/d/a$a$b;

.field public static final enum MEDIA:Lio/casper/android/n/b/d/a$a$b;

.field public static final enum SCREENSHOT:Lio/casper/android/n/b/d/a$a$b;

.field public static final enum TEXT:Lio/casper/android/n/b/d/a$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 399
    new-instance v0, Lio/casper/android/n/b/d/a$a$b;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v2}, Lio/casper/android/n/b/d/a$a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/b/d/a$a$b;->TEXT:Lio/casper/android/n/b/d/a$a$b;

    new-instance v0, Lio/casper/android/n/b/d/a$a$b;

    const-string v1, "MEDIA"

    invoke-direct {v0, v1, v3}, Lio/casper/android/n/b/d/a$a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/b/d/a$a$b;->MEDIA:Lio/casper/android/n/b/d/a$a$b;

    new-instance v0, Lio/casper/android/n/b/d/a$a$b;

    const-string v1, "SCREENSHOT"

    invoke-direct {v0, v1, v4}, Lio/casper/android/n/b/d/a$a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/b/d/a$a$b;->SCREENSHOT:Lio/casper/android/n/b/d/a$a$b;

    new-instance v0, Lio/casper/android/n/b/d/a$a$b;

    const-string v1, "HERE_SCREENSHOT"

    invoke-direct {v0, v1, v5}, Lio/casper/android/n/b/d/a$a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/b/d/a$a$b;->HERE_SCREENSHOT:Lio/casper/android/n/b/d/a$a$b;

    new-instance v0, Lio/casper/android/n/b/d/a$a$b;

    const-string v1, "DISCOVER_SHARE"

    invoke-direct {v0, v1, v6}, Lio/casper/android/n/b/d/a$a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/b/d/a$a$b;->DISCOVER_SHARE:Lio/casper/android/n/b/d/a$a$b;

    .line 398
    const/4 v0, 0x5

    new-array v0, v0, [Lio/casper/android/n/b/d/a$a$b;

    sget-object v1, Lio/casper/android/n/b/d/a$a$b;->TEXT:Lio/casper/android/n/b/d/a$a$b;

    aput-object v1, v0, v2

    sget-object v1, Lio/casper/android/n/b/d/a$a$b;->MEDIA:Lio/casper/android/n/b/d/a$a$b;

    aput-object v1, v0, v3

    sget-object v1, Lio/casper/android/n/b/d/a$a$b;->SCREENSHOT:Lio/casper/android/n/b/d/a$a$b;

    aput-object v1, v0, v4

    sget-object v1, Lio/casper/android/n/b/d/a$a$b;->HERE_SCREENSHOT:Lio/casper/android/n/b/d/a$a$b;

    aput-object v1, v0, v5

    sget-object v1, Lio/casper/android/n/b/d/a$a$b;->DISCOVER_SHARE:Lio/casper/android/n/b/d/a$a$b;

    aput-object v1, v0, v6

    sput-object v0, Lio/casper/android/n/b/d/a$a$b;->$VALUES:[Lio/casper/android/n/b/d/a$a$b;

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
    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/n/b/d/a$a$b;
    .locals 1

    .prologue
    .line 398
    const-class v0, Lio/casper/android/n/b/d/a$a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/d/a$a$b;

    return-object v0
.end method

.method public static values()[Lio/casper/android/n/b/d/a$a$b;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lio/casper/android/n/b/d/a$a$b;->$VALUES:[Lio/casper/android/n/b/d/a$a$b;

    invoke-virtual {v0}, [Lio/casper/android/n/b/d/a$a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/n/b/d/a$a$b;

    return-object v0
.end method
