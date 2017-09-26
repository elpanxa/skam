.class synthetic Lio/casper/android/activity/GoogleLoginActivity$3;
.super Ljava/lang/Object;
.source "GoogleLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/activity/GoogleLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$casper$android$api$google$exception$OAuthTokenException$ErrorType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 145
    invoke-static {}, Lio/casper/android/c/d/a/a$a;->values()[Lio/casper/android/c/d/a/a$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/casper/android/activity/GoogleLoginActivity$3;->$SwitchMap$io$casper$android$api$google$exception$OAuthTokenException$ErrorType:[I

    :try_start_0
    sget-object v0, Lio/casper/android/activity/GoogleLoginActivity$3;->$SwitchMap$io$casper$android$api$google$exception$OAuthTokenException$ErrorType:[I

    sget-object v1, Lio/casper/android/c/d/a/a$a;->BAD_AUTHENTICATION:Lio/casper/android/c/d/a/a$a;

    invoke-virtual {v1}, Lio/casper/android/c/d/a/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lio/casper/android/activity/GoogleLoginActivity$3;->$SwitchMap$io$casper$android$api$google$exception$OAuthTokenException$ErrorType:[I

    sget-object v1, Lio/casper/android/c/d/a/a$a;->WEB_LOGIN_REQUIRED:Lio/casper/android/c/d/a/a$a;

    invoke-virtual {v1}, Lio/casper/android/c/d/a/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
