.class public Lio/casper/android/n/a;
.super Ljava/lang/Object;
.source "SnapchatConstants.java"


# static fields
.field public static APK_CERTIFICATE_DIGEST:Ljava/lang/String;

.field public static APK_DIGEST:Ljava/lang/String;

.field public static APK_SIGNATURE:Ljava/lang/String;

.field public static APP_VERSION:Ljava/lang/String;

.field public static APP_VERSION_LOGIN:Ljava/lang/String;

.field public static ENDPOINT_CHAT_MEDIA:Ljava/lang/String;

.field public static ENDPOINT_CONVERSATION_AUTH_TOKEN:Ljava/lang/String;

.field public static ENDPOINT_CONVERSATION_POST_MESSAGES:Ljava/lang/String;

.field public static ENDPOINT_DOUBLE_POST:Ljava/lang/String;

.field public static ENDPOINT_POST_STORY:Ljava/lang/String;

.field public static ENDPOINT_SETTINGS:Ljava/lang/String;

.field public static ENDPOINT_SNAP_SEND:Ljava/lang/String;

.field public static ENDPOINT_SNAP_UPLOAD:Ljava/lang/String;

.field public static HEADER_ACCEPT_LANGUAGE:Ljava/lang/String;

.field public static HEADER_ACCEPT_LOCALE:Ljava/lang/String;

.field public static KEY_HEADER_ACCEPT_LANGUAGE:Ljava/lang/String;

.field public static KEY_HEADER_ACCEPT_LOCALE:Ljava/lang/String;

.field public static KEY_HEADER_SNAPCHAT_CLIENT_AUTH_TOKEN:Ljava/lang/String;

.field public static KEY_HEADER_USER_AGENT:Ljava/lang/String;

.field public static KEY_PARAM_CAMERA_FRONT_FACING:Ljava/lang/String;

.field public static KEY_PARAM_CAPTION_TEXT_DISPLAY:Ljava/lang/String;

.field public static KEY_PARAM_CLIENT_ID:Ljava/lang/String;

.field public static KEY_PARAM_CONVERSATION_ID:Ljava/lang/String;

.field public static KEY_PARAM_DATA:Ljava/lang/String;

.field public static KEY_PARAM_FEATURES_MAP:Ljava/lang/String;

.field public static KEY_PARAM_ID:Ljava/lang/String;

.field public static KEY_PARAM_MEDIA_ID:Ljava/lang/String;

.field public static KEY_PARAM_MESSAGES:Ljava/lang/String;

.field public static KEY_PARAM_MY_STORY:Ljava/lang/String;

.field public static KEY_PARAM_ORIENTATION:Ljava/lang/String;

.field public static KEY_PARAM_RECIPIENTS:Ljava/lang/String;

.field public static KEY_PARAM_RECIPIENT_IDS:Ljava/lang/String;

.field public static KEY_PARAM_REQ_TOKEN:Ljava/lang/String;

.field public static KEY_PARAM_SHARED_IDS:Ljava/lang/String;

.field public static KEY_PARAM_STORY_TIMESTAMP:Ljava/lang/String;

.field public static KEY_PARAM_THUMBNAIL_DATA:Ljava/lang/String;

.field public static KEY_PARAM_TIME:Ljava/lang/String;

.field public static KEY_PARAM_TIMESTAMP:Ljava/lang/String;

.field public static KEY_PARAM_TYPE:Ljava/lang/String;

.field public static KEY_PARAM_USERNAME:Ljava/lang/String;

.field public static KEY_PARAM_ZIPPED:Ljava/lang/String;

.field public static MIME_APPLICATION_OCTET_STREAM:Ljava/lang/String;

.field public static PARAM_HEIGHT:Ljava/lang/String;

.field public static PARAM_MAX_VIDEO_HEIGHT:Ljava/lang/String;

.field public static PARAM_MAX_VIDEO_WIDTH:Ljava/lang/String;

.field public static PARAM_SCREEN_HEIGHT_IN:Ljava/lang/String;

.field public static PARAM_SCREEN_HEIGHT_PX:Ljava/lang/String;

.field public static PARAM_SCREEN_WIDTH_IN:Ljava/lang/String;

.field public static PARAM_SCREEN_WIDTH_PX:Ljava/lang/String;

.field public static PARAM_WIDTH:Ljava/lang/String;

.field public static SERVER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "https://app.snapchat.com"

    sput-object v0, Lio/casper/android/n/a;->SERVER:Ljava/lang/String;

    .line 11
    const-string v0, "9.18.2.0"

    sput-object v0, Lio/casper/android/n/a;->APP_VERSION:Ljava/lang/String;

    .line 12
    const-string v0, "9.14.2.0"

    sput-object v0, Lio/casper/android/n/a;->APP_VERSION_LOGIN:Ljava/lang/String;

    .line 14
    const-string v0, "XzxIJstqv6z3X3/q9bk7D2a0XRm9NT0vMXQ4P4EqF3A="

    sput-object v0, Lio/casper/android/n/a;->APK_DIGEST:Ljava/lang/String;

    .line 15
    const-string v0, "Lxyq/KHtMNC044hj7vq+oOgVcR+kz3m4IlGaglnZWlg="

    sput-object v0, Lio/casper/android/n/a;->APK_CERTIFICATE_DIGEST:Ljava/lang/String;

    .line 16
    const-string v0, "49f6badb81d89a9e38d65de76f09355071bd67e7"

    sput-object v0, Lio/casper/android/n/a;->APK_SIGNATURE:Ljava/lang/String;

    .line 19
    const-string v0, "/ph/settings"

    sput-object v0, Lio/casper/android/n/a;->ENDPOINT_SETTINGS:Ljava/lang/String;

    .line 20
    const-string v0, "/bq/chat_media"

    sput-object v0, Lio/casper/android/n/a;->ENDPOINT_CHAT_MEDIA:Ljava/lang/String;

    .line 21
    const-string v0, "/ph/upload"

    sput-object v0, Lio/casper/android/n/a;->ENDPOINT_SNAP_UPLOAD:Ljava/lang/String;

    .line 22
    const-string v0, "/loq/send"

    sput-object v0, Lio/casper/android/n/a;->ENDPOINT_SNAP_SEND:Ljava/lang/String;

    .line 23
    const-string v0, "/loq/double_post"

    sput-object v0, Lio/casper/android/n/a;->ENDPOINT_DOUBLE_POST:Ljava/lang/String;

    .line 24
    const-string v0, "/bq/post_story"

    sput-object v0, Lio/casper/android/n/a;->ENDPOINT_POST_STORY:Ljava/lang/String;

    .line 27
    const-string v0, "/loq/conversation_auth_token"

    sput-object v0, Lio/casper/android/n/a;->ENDPOINT_CONVERSATION_AUTH_TOKEN:Ljava/lang/String;

    .line 28
    const-string v0, "/loq/conversation_post_messages"

    sput-object v0, Lio/casper/android/n/a;->ENDPOINT_CONVERSATION_POST_MESSAGES:Ljava/lang/String;

    .line 31
    const-string v0, "User-Agent"

    sput-object v0, Lio/casper/android/n/a;->KEY_HEADER_USER_AGENT:Ljava/lang/String;

    .line 32
    const-string v0, "Accept-Language"

    sput-object v0, Lio/casper/android/n/a;->KEY_HEADER_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 33
    const-string v0, "Accept-Locale"

    sput-object v0, Lio/casper/android/n/a;->KEY_HEADER_ACCEPT_LOCALE:Ljava/lang/String;

    .line 34
    const-string v0, "X-Snapchat-Client-Auth-Token"

    sput-object v0, Lio/casper/android/n/a;->KEY_HEADER_SNAPCHAT_CLIENT_AUTH_TOKEN:Ljava/lang/String;

    .line 37
    invoke-static {}, Lio/casper/android/n/e/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/casper/android/n/a;->HEADER_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 38
    invoke-static {}, Lio/casper/android/n/e/b;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/casper/android/n/a;->HEADER_ACCEPT_LOCALE:Ljava/lang/String;

    .line 41
    const-string v0, "1080"

    sput-object v0, Lio/casper/android/n/a;->PARAM_WIDTH:Ljava/lang/String;

    .line 42
    const-string v0, "1920"

    sput-object v0, Lio/casper/android/n/a;->PARAM_HEIGHT:Ljava/lang/String;

    .line 44
    const-string v0, "1080"

    sput-object v0, Lio/casper/android/n/a;->PARAM_MAX_VIDEO_WIDTH:Ljava/lang/String;

    .line 45
    const-string v0, "1920"

    sput-object v0, Lio/casper/android/n/a;->PARAM_MAX_VIDEO_HEIGHT:Ljava/lang/String;

    .line 47
    const-string v0, "2.5590599"

    sput-object v0, Lio/casper/android/n/a;->PARAM_SCREEN_WIDTH_IN:Ljava/lang/String;

    .line 48
    const-string v0, "4.527565"

    sput-object v0, Lio/casper/android/n/a;->PARAM_SCREEN_HEIGHT_IN:Ljava/lang/String;

    .line 50
    const-string v0, "1080"

    sput-object v0, Lio/casper/android/n/a;->PARAM_SCREEN_WIDTH_PX:Ljava/lang/String;

    .line 51
    const-string v0, "1920"

    sput-object v0, Lio/casper/android/n/a;->PARAM_SCREEN_HEIGHT_PX:Ljava/lang/String;

    .line 54
    const-string v0, "username"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_USERNAME:Ljava/lang/String;

    .line 55
    const-string v0, "req_token"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_REQ_TOKEN:Ljava/lang/String;

    .line 56
    const-string v0, "timestamp"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_TIMESTAMP:Ljava/lang/String;

    .line 58
    const-string v0, "id"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_ID:Ljava/lang/String;

    .line 59
    const-string v0, "conversation_id"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_CONVERSATION_ID:Ljava/lang/String;

    .line 60
    const-string v0, "media_id"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_MEDIA_ID:Ljava/lang/String;

    .line 61
    const-string v0, "type"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_TYPE:Ljava/lang/String;

    .line 62
    const-string v0, "features_map"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_FEATURES_MAP:Ljava/lang/String;

    .line 63
    const-string v0, "zipped"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_ZIPPED:Ljava/lang/String;

    .line 64
    const-string v0, "recipients"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_RECIPIENTS:Ljava/lang/String;

    .line 65
    const-string v0, "recipient_ids"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_RECIPIENT_IDS:Ljava/lang/String;

    .line 66
    const-string v0, "time"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_TIME:Ljava/lang/String;

    .line 67
    const-string v0, "client_id"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_CLIENT_ID:Ljava/lang/String;

    .line 68
    const-string v0, "story_timestamp"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_STORY_TIMESTAMP:Ljava/lang/String;

    .line 69
    const-string v0, "shared_ids"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_SHARED_IDS:Ljava/lang/String;

    .line 70
    const-string v0, "my_story"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_MY_STORY:Ljava/lang/String;

    .line 71
    const-string v0, "caption_text_display"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_CAPTION_TEXT_DISPLAY:Ljava/lang/String;

    .line 72
    const-string v0, "data"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_DATA:Ljava/lang/String;

    .line 73
    const-string v0, "camera_front_facing"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_CAMERA_FRONT_FACING:Ljava/lang/String;

    .line 74
    const-string v0, "thumbnail_data"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_THUMBNAIL_DATA:Ljava/lang/String;

    .line 75
    const-string v0, "messages"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_MESSAGES:Ljava/lang/String;

    .line 76
    const-string v0, "orientation"

    sput-object v0, Lio/casper/android/n/a;->KEY_PARAM_ORIENTATION:Ljava/lang/String;

    .line 79
    const-string v0, "application/octet-stream"

    sput-object v0, Lio/casper/android/n/a;->MIME_APPLICATION_OCTET_STREAM:Ljava/lang/String;

    return-void
.end method
