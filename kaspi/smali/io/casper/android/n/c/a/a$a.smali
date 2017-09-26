.class public final enum Lio/casper/android/n/c/a/a$a;
.super Ljava/lang/Enum;
.source "AddedMeFriendsTable.java"

# interfaces
.implements Lio/casper/android/e/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/n/c/a/a$a;",
        ">;",
        "Lio/casper/android/e/a/f;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/n/c/a/a$a;

.field public static final enum ADD_SOURCE:Lio/casper/android/n/c/a/a$a;

.field public static final enum ADD_SOURCE_TYPE:Lio/casper/android/n/c/a/a$a;

.field public static final enum CAN_SEE_CUSTOM_STORIES:Lio/casper/android/n/c/a/a$a;

.field public static final enum DIRECTION:Lio/casper/android/n/c/a/a$a;

.field public static final enum DISPLAY_NAME:Lio/casper/android/n/c/a/a$a;

.field public static final enum IS_SHARED_STORY:Lio/casper/android/n/c/a/a$a;

.field public static final enum TIMESTAMP_ADDED_ME:Lio/casper/android/n/c/a/a$a;

.field public static final enum TIMESTAMP_ADDED_THEM:Lio/casper/android/n/c/a/a$a;

.field public static final enum TYPE:Lio/casper/android/n/c/a/a$a;

.field public static final enum USERNAME:Lio/casper/android/n/c/a/a$a;

.field public static final enum USER_ID:Lio/casper/android/n/c/a/a$a;


# instance fields
.field private columnName:Ljava/lang/String;

.field private columnNumber:I

.field private dataType:Lio/casper/android/e/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 17
    new-instance v0, Lio/casper/android/n/c/a/a$a;

    const-string v1, "USER_ID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "user_id"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/a$a;->USER_ID:Lio/casper/android/n/c/a/a$a;

    .line 18
    new-instance v0, Lio/casper/android/n/c/a/a$a;

    const-string v1, "USERNAME"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "username"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/a$a;->USERNAME:Lio/casper/android/n/c/a/a$a;

    .line 19
    new-instance v0, Lio/casper/android/n/c/a/a$a;

    const-string v1, "DISPLAY_NAME"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "displayname"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/a$a;->DISPLAY_NAME:Lio/casper/android/n/c/a/a$a;

    .line 20
    new-instance v0, Lio/casper/android/n/c/a/a$a;

    const-string v1, "TYPE"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-string v4, "type"

    sget-object v5, Lio/casper/android/e/a/b;->INTEGER:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/a$a;->TYPE:Lio/casper/android/n/c/a/a$a;

    .line 21
    new-instance v0, Lio/casper/android/n/c/a/a$a;

    const-string v1, "IS_SHARED_STORY"

    const/4 v2, 0x4

    const/4 v3, 0x5

    const-string v4, "is_shared_story"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/a$a;->IS_SHARED_STORY:Lio/casper/android/n/c/a/a$a;

    .line 22
    new-instance v0, Lio/casper/android/n/c/a/a$a;

    const-string v1, "DIRECTION"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const-string v4, "direction"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/a$a;->DIRECTION:Lio/casper/android/n/c/a/a$a;

    .line 23
    new-instance v0, Lio/casper/android/n/c/a/a$a;

    const-string v1, "ADD_SOURCE"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "add_source"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/a$a;->ADD_SOURCE:Lio/casper/android/n/c/a/a$a;

    .line 24
    new-instance v0, Lio/casper/android/n/c/a/a$a;

    const-string v1, "ADD_SOURCE_TYPE"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "add_source_type"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/a$a;->ADD_SOURCE_TYPE:Lio/casper/android/n/c/a/a$a;

    .line 25
    new-instance v0, Lio/casper/android/n/c/a/a$a;

    const-string v1, "CAN_SEE_CUSTOM_STORIES"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string v4, "can_see_custom_stories"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/a$a;->CAN_SEE_CUSTOM_STORIES:Lio/casper/android/n/c/a/a$a;

    .line 26
    new-instance v0, Lio/casper/android/n/c/a/a$a;

    const-string v1, "TIMESTAMP_ADDED_ME"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const-string v4, "timestamp_added_me"

    sget-object v5, Lio/casper/android/e/a/b;->LONG:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/a$a;->TIMESTAMP_ADDED_ME:Lio/casper/android/n/c/a/a$a;

    .line 27
    new-instance v0, Lio/casper/android/n/c/a/a$a;

    const-string v1, "TIMESTAMP_ADDED_THEM"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const-string v4, "timestamp_added_them"

    sget-object v5, Lio/casper/android/e/a/b;->LONG:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/a$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/a$a;->TIMESTAMP_ADDED_THEM:Lio/casper/android/n/c/a/a$a;

    .line 15
    const/16 v0, 0xb

    new-array v0, v0, [Lio/casper/android/n/c/a/a$a;

    const/4 v1, 0x0

    sget-object v2, Lio/casper/android/n/c/a/a$a;->USER_ID:Lio/casper/android/n/c/a/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/casper/android/n/c/a/a$a;->USERNAME:Lio/casper/android/n/c/a/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/casper/android/n/c/a/a$a;->DISPLAY_NAME:Lio/casper/android/n/c/a/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lio/casper/android/n/c/a/a$a;->TYPE:Lio/casper/android/n/c/a/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lio/casper/android/n/c/a/a$a;->IS_SHARED_STORY:Lio/casper/android/n/c/a/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lio/casper/android/n/c/a/a$a;->DIRECTION:Lio/casper/android/n/c/a/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/casper/android/n/c/a/a$a;->ADD_SOURCE:Lio/casper/android/n/c/a/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/casper/android/n/c/a/a$a;->ADD_SOURCE_TYPE:Lio/casper/android/n/c/a/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/casper/android/n/c/a/a$a;->CAN_SEE_CUSTOM_STORIES:Lio/casper/android/n/c/a/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/casper/android/n/c/a/a$a;->TIMESTAMP_ADDED_ME:Lio/casper/android/n/c/a/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lio/casper/android/n/c/a/a$a;->TIMESTAMP_ADDED_THEM:Lio/casper/android/n/c/a/a$a;

    aput-object v2, v0, v1

    sput-object v0, Lio/casper/android/n/c/a/a$a;->$VALUES:[Lio/casper/android/n/c/a/a$a;

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
    iput p3, p0, Lio/casper/android/n/c/a/a$a;->columnNumber:I

    .line 35
    iput-object p4, p0, Lio/casper/android/n/c/a/a$a;->columnName:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lio/casper/android/n/c/a/a$a;->dataType:Lio/casper/android/e/a/b;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/n/c/a/a$a;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lio/casper/android/n/c/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/c/a/a$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/n/c/a/a$a;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lio/casper/android/n/c/a/a$a;->$VALUES:[Lio/casper/android/n/c/a/a$a;

    invoke-virtual {v0}, [Lio/casper/android/n/c/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/n/c/a/a$a;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/casper/android/n/c/a/a$a;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lio/casper/android/n/c/a/a$a;->columnNumber:I

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
    iget-object v0, p0, Lio/casper/android/n/c/a/a$a;->dataType:Lio/casper/android/e/a/b;

    return-object v0
.end method
