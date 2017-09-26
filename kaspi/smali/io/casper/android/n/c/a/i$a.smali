.class public final enum Lio/casper/android/n/c/a/i$a;
.super Ljava/lang/Enum;
.source "ZeltaTable.java"

# interfaces
.implements Lio/casper/android/e/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/c/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/n/c/a/i$a;",
        ">;",
        "Lio/casper/android/e/a/f;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/n/c/a/i$a;

.field public static final enum CACHE_MILLIS:Lio/casper/android/n/c/a/i$a;

.field public static final enum CACHE_UNTIL_TS:Lio/casper/android/n/c/a/i$a;

.field public static final enum ENDPOINT:Lio/casper/android/n/c/a/i$a;

.field public static final enum HEADERS:Lio/casper/android/n/c/a/i$a;

.field public static final enum PARAMS:Lio/casper/android/n/c/a/i$a;

.field public static final enum USERNAME:Lio/casper/android/n/c/a/i$a;


# instance fields
.field private columnName:Ljava/lang/String;

.field private columnNumber:I

.field private dataType:Lio/casper/android/e/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 26
    new-instance v0, Lio/casper/android/n/c/a/i$a;

    const-string v1, "ENDPOINT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "endpoint"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/i$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/i$a;->ENDPOINT:Lio/casper/android/n/c/a/i$a;

    .line 27
    new-instance v0, Lio/casper/android/n/c/a/i$a;

    const-string v1, "CACHE_MILLIS"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "cache_millis"

    sget-object v5, Lio/casper/android/e/a/b;->LONG:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/i$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/i$a;->CACHE_MILLIS:Lio/casper/android/n/c/a/i$a;

    .line 28
    new-instance v0, Lio/casper/android/n/c/a/i$a;

    const-string v1, "CACHE_UNTIL_TS"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "cache_until_ts"

    sget-object v5, Lio/casper/android/e/a/b;->LONG:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/i$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/i$a;->CACHE_UNTIL_TS:Lio/casper/android/n/c/a/i$a;

    .line 29
    new-instance v0, Lio/casper/android/n/c/a/i$a;

    const-string v1, "HEADERS"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-string v4, "headers"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/i$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/i$a;->HEADERS:Lio/casper/android/n/c/a/i$a;

    .line 30
    new-instance v0, Lio/casper/android/n/c/a/i$a;

    const-string v1, "PARAMS"

    const/4 v2, 0x4

    const/4 v3, 0x5

    const-string v4, "params"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/i$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/i$a;->PARAMS:Lio/casper/android/n/c/a/i$a;

    .line 31
    new-instance v0, Lio/casper/android/n/c/a/i$a;

    const-string v1, "USERNAME"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const-string v4, "username"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/i$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/i$a;->USERNAME:Lio/casper/android/n/c/a/i$a;

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Lio/casper/android/n/c/a/i$a;

    const/4 v1, 0x0

    sget-object v2, Lio/casper/android/n/c/a/i$a;->ENDPOINT:Lio/casper/android/n/c/a/i$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/casper/android/n/c/a/i$a;->CACHE_MILLIS:Lio/casper/android/n/c/a/i$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/casper/android/n/c/a/i$a;->CACHE_UNTIL_TS:Lio/casper/android/n/c/a/i$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lio/casper/android/n/c/a/i$a;->HEADERS:Lio/casper/android/n/c/a/i$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lio/casper/android/n/c/a/i$a;->PARAMS:Lio/casper/android/n/c/a/i$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lio/casper/android/n/c/a/i$a;->USERNAME:Lio/casper/android/n/c/a/i$a;

    aput-object v2, v0, v1

    sput-object v0, Lio/casper/android/n/c/a/i$a;->$VALUES:[Lio/casper/android/n/c/a/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lio/casper/android/e/a/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lio/casper/android/n/c/a/i$a;->columnNumber:I

    .line 39
    iput-object p4, p0, Lio/casper/android/n/c/a/i$a;->columnName:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lio/casper/android/n/c/a/i$a;->dataType:Lio/casper/android/e/a/b;

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/n/c/a/i$a;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lio/casper/android/n/c/a/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/c/a/i$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/n/c/a/i$a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lio/casper/android/n/c/a/i$a;->$VALUES:[Lio/casper/android/n/c/a/i$a;

    invoke-virtual {v0}, [Lio/casper/android/n/c/a/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/n/c/a/i$a;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/casper/android/n/c/a/i$a;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lio/casper/android/n/c/a/i$a;->columnNumber:I

    return v0
.end method

.method public getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDataType()Lio/casper/android/e/a/b;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lio/casper/android/n/c/a/i$a;->dataType:Lio/casper/android/e/a/b;

    return-object v0
.end method
