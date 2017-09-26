.class public final enum Lio/casper/android/e/c/a$a;
.super Ljava/lang/Enum;
.source "SnapchatAccountsTable.java"

# interfaces
.implements Lio/casper/android/e/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/e/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/e/c/a$a;",
        ">;",
        "Lio/casper/android/e/a/f;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/e/c/a$a;

.field public static final enum ADDED_FRIENDS_TIMESTAMP:Lio/casper/android/e/c/a$a;

.field public static final enum AUTH_TOKEN:Lio/casper/android/e/c/a$a;

.field public static final enum EMAIL:Lio/casper/android/e/c/a$a;

.field public static final enum PASSWORD:Lio/casper/android/e/c/a$a;

.field public static final enum QR_PATH:Lio/casper/android/e/c/a$a;

.field public static final enum SEC_INFO:Lio/casper/android/e/c/a$a;

.field public static final enum USERNAME:Lio/casper/android/e/c/a$a;


# instance fields
.field private columnName:Ljava/lang/String;

.field private columnNumber:I

.field private dataType:Lio/casper/android/e/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 21
    new-instance v0, Lio/casper/android/e/c/a$a;

    const-string v1, "USERNAME"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "username"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/e/c/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/e/c/a$a;->USERNAME:Lio/casper/android/e/c/a$a;

    .line 22
    new-instance v0, Lio/casper/android/e/c/a$a;

    const-string v1, "EMAIL"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "email"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/e/c/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/e/c/a$a;->EMAIL:Lio/casper/android/e/c/a$a;

    .line 23
    new-instance v0, Lio/casper/android/e/c/a$a;

    const-string v1, "PASSWORD"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "password"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/e/c/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/e/c/a$a;->PASSWORD:Lio/casper/android/e/c/a$a;

    .line 24
    new-instance v0, Lio/casper/android/e/c/a$a;

    const-string v1, "AUTH_TOKEN"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-string v4, "auth_token"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/e/c/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/e/c/a$a;->AUTH_TOKEN:Lio/casper/android/e/c/a$a;

    .line 25
    new-instance v0, Lio/casper/android/e/c/a$a;

    const-string v1, "ADDED_FRIENDS_TIMESTAMP"

    const/4 v2, 0x4

    const/4 v3, 0x5

    const-string v4, "added_friends_timestamp"

    sget-object v5, Lio/casper/android/e/a/b;->LONG:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/e/c/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/e/c/a$a;->ADDED_FRIENDS_TIMESTAMP:Lio/casper/android/e/c/a$a;

    .line 26
    new-instance v0, Lio/casper/android/e/c/a$a;

    const-string v1, "QR_PATH"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const-string v4, "qr_path"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/e/c/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/e/c/a$a;->QR_PATH:Lio/casper/android/e/c/a$a;

    .line 27
    new-instance v0, Lio/casper/android/e/c/a$a;

    const-string v1, "SEC_INFO"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "sec_info"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/e/c/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/e/c/a$a;->SEC_INFO:Lio/casper/android/e/c/a$a;

    .line 19
    const/4 v0, 0x7

    new-array v0, v0, [Lio/casper/android/e/c/a$a;

    const/4 v1, 0x0

    sget-object v2, Lio/casper/android/e/c/a$a;->USERNAME:Lio/casper/android/e/c/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/casper/android/e/c/a$a;->EMAIL:Lio/casper/android/e/c/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/casper/android/e/c/a$a;->PASSWORD:Lio/casper/android/e/c/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lio/casper/android/e/c/a$a;->AUTH_TOKEN:Lio/casper/android/e/c/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lio/casper/android/e/c/a$a;->ADDED_FRIENDS_TIMESTAMP:Lio/casper/android/e/c/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lio/casper/android/e/c/a$a;->QR_PATH:Lio/casper/android/e/c/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/casper/android/e/c/a$a;->SEC_INFO:Lio/casper/android/e/c/a$a;

    aput-object v2, v0, v1

    sput-object v0, Lio/casper/android/e/c/a$a;->$VALUES:[Lio/casper/android/e/c/a$a;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lio/casper/android/e/c/a$a;->columnNumber:I

    .line 35
    iput-object p4, p0, Lio/casper/android/e/c/a$a;->columnName:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lio/casper/android/e/c/a$a;->dataType:Lio/casper/android/e/a/b;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/e/c/a$a;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lio/casper/android/e/c/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/e/c/a$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/e/c/a$a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lio/casper/android/e/c/a$a;->$VALUES:[Lio/casper/android/e/c/a$a;

    invoke-virtual {v0}, [Lio/casper/android/e/c/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/e/c/a$a;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/casper/android/e/c/a$a;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lio/casper/android/e/c/a$a;->columnNumber:I

    return v0
.end method

.method public getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDataType()Lio/casper/android/e/a/b;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lio/casper/android/e/c/a$a;->dataType:Lio/casper/android/e/a/b;

    return-object v0
.end method
