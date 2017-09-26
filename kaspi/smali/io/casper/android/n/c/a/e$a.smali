.class public final enum Lio/casper/android/n/c/a/e$a;
.super Ljava/lang/Enum;
.source "GeoFiltersTable.java"

# interfaces
.implements Lio/casper/android/e/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/c/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/n/c/a/e$a;",
        ">;",
        "Lio/casper/android/e/a/f;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/n/c/a/e$a;

.field public static final enum FILTER_ID:Lio/casper/android/n/c/a/e$a;

.field public static final enum IMAGE:Lio/casper/android/n/c/a/e$a;

.field public static final enum POSITION:Lio/casper/android/n/c/a/e$a;


# instance fields
.field private columnName:Ljava/lang/String;

.field private columnNumber:I

.field private dataType:Lio/casper/android/e/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 22
    new-instance v0, Lio/casper/android/n/c/a/e$a;

    const-string v1, "FILTER_ID"

    const-string v4, "filter_id"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/e$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/e$a;->FILTER_ID:Lio/casper/android/n/c/a/e$a;

    .line 23
    new-instance v4, Lio/casper/android/n/c/a/e$a;

    const-string v5, "IMAGE"

    const-string v8, "image"

    sget-object v9, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    move v6, v3

    invoke-direct/range {v4 .. v9}, Lio/casper/android/n/c/a/e$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v4, Lio/casper/android/n/c/a/e$a;->IMAGE:Lio/casper/android/n/c/a/e$a;

    .line 24
    new-instance v5, Lio/casper/android/n/c/a/e$a;

    const-string v6, "POSITION"

    const-string v9, "position"

    sget-object v10, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    move v8, v11

    invoke-direct/range {v5 .. v10}, Lio/casper/android/n/c/a/e$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v5, Lio/casper/android/n/c/a/e$a;->POSITION:Lio/casper/android/n/c/a/e$a;

    .line 20
    new-array v0, v11, [Lio/casper/android/n/c/a/e$a;

    sget-object v1, Lio/casper/android/n/c/a/e$a;->FILTER_ID:Lio/casper/android/n/c/a/e$a;

    aput-object v1, v0, v2

    sget-object v1, Lio/casper/android/n/c/a/e$a;->IMAGE:Lio/casper/android/n/c/a/e$a;

    aput-object v1, v0, v3

    sget-object v1, Lio/casper/android/n/c/a/e$a;->POSITION:Lio/casper/android/n/c/a/e$a;

    aput-object v1, v0, v7

    sput-object v0, Lio/casper/android/n/c/a/e$a;->$VALUES:[Lio/casper/android/n/c/a/e$a;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lio/casper/android/n/c/a/e$a;->columnNumber:I

    .line 32
    iput-object p4, p0, Lio/casper/android/n/c/a/e$a;->columnName:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lio/casper/android/n/c/a/e$a;->dataType:Lio/casper/android/e/a/b;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/n/c/a/e$a;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lio/casper/android/n/c/a/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/c/a/e$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/n/c/a/e$a;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lio/casper/android/n/c/a/e$a;->$VALUES:[Lio/casper/android/n/c/a/e$a;

    invoke-virtual {v0}, [Lio/casper/android/n/c/a/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/n/c/a/e$a;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lio/casper/android/n/c/a/e$a;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lio/casper/android/n/c/a/e$a;->columnNumber:I

    return v0
.end method

.method public getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDataType()Lio/casper/android/e/a/b;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/n/c/a/e$a;->dataType:Lio/casper/android/e/a/b;

    return-object v0
.end method
