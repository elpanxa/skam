.class public final enum Lio/casper/android/n/c/a/b$a;
.super Ljava/lang/Enum;
.source "BackgroundUploadsTable.java"

# interfaces
.implements Lio/casper/android/e/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/n/c/a/b$a;",
        ">;",
        "Lio/casper/android/e/a/f;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/n/c/a/b$a;

.field public static final enum SEND_MEDIA_PAYLOAD:Lio/casper/android/n/c/a/b$a;

.field public static final enum STATE:Lio/casper/android/n/c/a/b$a;

.field public static final enum TIMESTAMP:Lio/casper/android/n/c/a/b$a;

.field public static final enum UPLOAD_MEDIA_PAYLOAD:Lio/casper/android/n/c/a/b$a;


# instance fields
.field private columnName:Ljava/lang/String;

.field private columnNumber:I

.field private dataType:Lio/casper/android/e/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v11, 0x4

    const/4 v2, 0x0

    const/4 v14, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 23
    new-instance v0, Lio/casper/android/n/c/a/b$a;

    const-string v1, "TIMESTAMP"

    const-string v4, "timestamp"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/b$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/b$a;->TIMESTAMP:Lio/casper/android/n/c/a/b$a;

    .line 24
    new-instance v4, Lio/casper/android/n/c/a/b$a;

    const-string v5, "UPLOAD_MEDIA_PAYLOAD"

    const-string v8, "upload_media_payload"

    sget-object v9, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    move v6, v3

    invoke-direct/range {v4 .. v9}, Lio/casper/android/n/c/a/b$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v4, Lio/casper/android/n/c/a/b$a;->UPLOAD_MEDIA_PAYLOAD:Lio/casper/android/n/c/a/b$a;

    .line 25
    new-instance v5, Lio/casper/android/n/c/a/b$a;

    const-string v6, "SEND_MEDIA_PAYLOAD"

    const-string v9, "send_media_payload"

    sget-object v10, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    move v8, v14

    invoke-direct/range {v5 .. v10}, Lio/casper/android/n/c/a/b$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v5, Lio/casper/android/n/c/a/b$a;->SEND_MEDIA_PAYLOAD:Lio/casper/android/n/c/a/b$a;

    .line 26
    new-instance v8, Lio/casper/android/n/c/a/b$a;

    const-string v9, "STATE"

    const-string v12, "state"

    sget-object v13, Lio/casper/android/e/a/b;->INTEGER:Lio/casper/android/e/a/b;

    move v10, v14

    invoke-direct/range {v8 .. v13}, Lio/casper/android/n/c/a/b$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v8, Lio/casper/android/n/c/a/b$a;->STATE:Lio/casper/android/n/c/a/b$a;

    .line 21
    new-array v0, v11, [Lio/casper/android/n/c/a/b$a;

    sget-object v1, Lio/casper/android/n/c/a/b$a;->TIMESTAMP:Lio/casper/android/n/c/a/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lio/casper/android/n/c/a/b$a;->UPLOAD_MEDIA_PAYLOAD:Lio/casper/android/n/c/a/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lio/casper/android/n/c/a/b$a;->SEND_MEDIA_PAYLOAD:Lio/casper/android/n/c/a/b$a;

    aput-object v1, v0, v7

    sget-object v1, Lio/casper/android/n/c/a/b$a;->STATE:Lio/casper/android/n/c/a/b$a;

    aput-object v1, v0, v14

    sput-object v0, Lio/casper/android/n/c/a/b$a;->$VALUES:[Lio/casper/android/n/c/a/b$a;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lio/casper/android/n/c/a/b$a;->columnNumber:I

    .line 34
    iput-object p4, p0, Lio/casper/android/n/c/a/b$a;->columnName:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lio/casper/android/n/c/a/b$a;->dataType:Lio/casper/android/e/a/b;

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/n/c/a/b$a;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lio/casper/android/n/c/a/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/c/a/b$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/n/c/a/b$a;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lio/casper/android/n/c/a/b$a;->$VALUES:[Lio/casper/android/n/c/a/b$a;

    invoke-virtual {v0}, [Lio/casper/android/n/c/a/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/n/c/a/b$a;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/casper/android/n/c/a/b$a;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lio/casper/android/n/c/a/b$a;->columnNumber:I

    return v0
.end method

.method public getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDataType()Lio/casper/android/e/a/b;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lio/casper/android/n/c/a/b$a;->dataType:Lio/casper/android/e/a/b;

    return-object v0
.end method
