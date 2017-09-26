.class public final enum Lio/casper/android/n/c/a/h$a;
.super Ljava/lang/Enum;
.source "StoryNotesTable.java"

# interfaces
.implements Lio/casper/android/e/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/c/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/n/c/a/h$a;",
        ">;",
        "Lio/casper/android/e/a/f;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/n/c/a/h$a;

.field public static final enum IS_SCREENSHOT:Lio/casper/android/n/c/a/h$a;

.field public static final enum TIMESTAMP:Lio/casper/android/n/c/a/h$a;

.field public static final enum VIEWER:Lio/casper/android/n/c/a/h$a;


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

    .line 15
    new-instance v0, Lio/casper/android/n/c/a/h$a;

    const-string v1, "VIEWER"

    const-string v4, "viewer"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/h$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/h$a;->VIEWER:Lio/casper/android/n/c/a/h$a;

    .line 16
    new-instance v4, Lio/casper/android/n/c/a/h$a;

    const-string v5, "IS_SCREENSHOT"

    const-string v8, "is_screenshot"

    sget-object v9, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    move v6, v3

    invoke-direct/range {v4 .. v9}, Lio/casper/android/n/c/a/h$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v4, Lio/casper/android/n/c/a/h$a;->IS_SCREENSHOT:Lio/casper/android/n/c/a/h$a;

    .line 17
    new-instance v5, Lio/casper/android/n/c/a/h$a;

    const-string v6, "TIMESTAMP"

    const-string v9, "timestamp"

    sget-object v10, Lio/casper/android/e/a/b;->LONG:Lio/casper/android/e/a/b;

    move v8, v11

    invoke-direct/range {v5 .. v10}, Lio/casper/android/n/c/a/h$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v5, Lio/casper/android/n/c/a/h$a;->TIMESTAMP:Lio/casper/android/n/c/a/h$a;

    .line 13
    new-array v0, v11, [Lio/casper/android/n/c/a/h$a;

    sget-object v1, Lio/casper/android/n/c/a/h$a;->VIEWER:Lio/casper/android/n/c/a/h$a;

    aput-object v1, v0, v2

    sget-object v1, Lio/casper/android/n/c/a/h$a;->IS_SCREENSHOT:Lio/casper/android/n/c/a/h$a;

    aput-object v1, v0, v3

    sget-object v1, Lio/casper/android/n/c/a/h$a;->TIMESTAMP:Lio/casper/android/n/c/a/h$a;

    aput-object v1, v0, v7

    sput-object v0, Lio/casper/android/n/c/a/h$a;->$VALUES:[Lio/casper/android/n/c/a/h$a;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lio/casper/android/n/c/a/h$a;->columnNumber:I

    .line 25
    iput-object p4, p0, Lio/casper/android/n/c/a/h$a;->columnName:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lio/casper/android/n/c/a/h$a;->dataType:Lio/casper/android/e/a/b;

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/n/c/a/h$a;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lio/casper/android/n/c/a/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/c/a/h$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/n/c/a/h$a;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lio/casper/android/n/c/a/h$a;->$VALUES:[Lio/casper/android/n/c/a/h$a;

    invoke-virtual {v0}, [Lio/casper/android/n/c/a/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/n/c/a/h$a;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lio/casper/android/n/c/a/h$a;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lio/casper/android/n/c/a/h$a;->columnNumber:I

    return v0
.end method

.method public getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDataType()Lio/casper/android/e/a/b;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/casper/android/n/c/a/h$a;->dataType:Lio/casper/android/e/a/b;

    return-object v0
.end method
