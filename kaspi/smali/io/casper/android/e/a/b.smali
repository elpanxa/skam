.class public final enum Lio/casper/android/e/a/b;
.super Ljava/lang/Enum;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/e/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/e/a/b;

.field public static final enum BOOLEAN:Lio/casper/android/e/a/b;

.field public static final enum INTEGER:Lio/casper/android/e/a/b;

.field public static final enum LONG:Lio/casper/android/e/a/b;

.field public static final enum TEXT:Lio/casper/android/e/a/b;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lio/casper/android/e/a/b;

    const-string v1, "TEXT"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v3, v2}, Lio/casper/android/e/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    .line 6
    new-instance v0, Lio/casper/android/e/a/b;

    const-string v1, "INTEGER"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v4, v2}, Lio/casper/android/e/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/casper/android/e/a/b;->INTEGER:Lio/casper/android/e/a/b;

    .line 7
    new-instance v0, Lio/casper/android/e/a/b;

    const-string v1, "LONG"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v5, v2}, Lio/casper/android/e/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/casper/android/e/a/b;->LONG:Lio/casper/android/e/a/b;

    .line 8
    new-instance v0, Lio/casper/android/e/a/b;

    const-string v1, "BOOLEAN"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v6, v2}, Lio/casper/android/e/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lio/casper/android/e/a/b;

    sget-object v1, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lio/casper/android/e/a/b;->INTEGER:Lio/casper/android/e/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lio/casper/android/e/a/b;->LONG:Lio/casper/android/e/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    aput-object v1, v0, v6

    sput-object v0, Lio/casper/android/e/a/b;->$VALUES:[Lio/casper/android/e/a/b;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lio/casper/android/e/a/b;->value:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/e/a/b;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lio/casper/android/e/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/e/a/b;

    return-object v0
.end method

.method public static values()[Lio/casper/android/e/a/b;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lio/casper/android/e/a/b;->$VALUES:[Lio/casper/android/e/a/b;

    invoke-virtual {v0}, [Lio/casper/android/e/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/e/a/b;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lio/casper/android/e/a/b;->value:Ljava/lang/String;

    return-object v0
.end method
