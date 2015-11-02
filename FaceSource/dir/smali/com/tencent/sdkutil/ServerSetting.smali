.class public Lcom/tencent/sdkutil/ServerSetting;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final ASK_URL:I = 0x8

.field public static final AUTHORIZE_CGI:I = 0x2

.field public static final BRAG_URL:I = 0x7

.field public static final DEFAULT_CGI_AUTHORIZE:Ljava/lang/String; = "https://openmobile.qq.com/oauth2.0/m_authorize?"

.field public static final DEFAULT_LOCAL_STORAGE_URI:Ljava/lang/String; = "http://qzs.qq.com"

.field public static final DEFAULT_REDIRECT_URI:Ljava/lang/String; = "auth://tauth.qq.com/"

.field private static final DEFAULT_URL_ASK:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

.field public static final DEFAULT_URL_BRAG:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"

.field public static final DEFAULT_URL_GIFT:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

.field public static final DEFAULT_URL_GRAPH_BASE:Ljava/lang/String; = "https://openmobile.qq.com/"

.field public static final DEFAULT_URL_INVITE:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"

.field private static final DEFAULT_URL_REPORT:Ljava/lang/String; = "http://wspeed.qq.com/w.cgi"

.field public static final DEFAULT_URL_SEND_STORY:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

.field public static final DEFAULT_URL_VOICE:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/not_support.html?"

.field public static final ENVIRONMENT_EXPERIENCE:I = 0x1

.field public static final ENVIRONMENT_NORMOL:I = 0x0

.field public static final GIFT_URL:I = 0x9

.field public static final GRAPH_BASE_URL:I = 0x6

.field public static final INVITE_URL:I = 0x4

.field private static final KEY_ASK_URL:Ljava/lang/String; = "AskUrl"

.field private static final KEY_AUTHORIZE_CGI:Ljava/lang/String; = "AuthorizeCgi"

.field private static final KEY_BRAG_URL:Ljava/lang/String; = "BragUrl"

.field private static final KEY_GIFT_URL:Ljava/lang/String; = "GiftUrl"

.field private static final KEY_GRAPH_BASE_URL:Ljava/lang/String; = "GraphBaseUrl"

.field private static final KEY_INVITE_URL:Ljava/lang/String; = "InviteUrl"

.field private static final KEY_LOCAL_STORAGE_URl:Ljava/lang/String; = "LocalStorageUrl"

.field private static final KEY_REDIRECT_URL:Ljava/lang/String; = "RedirectUrl"

.field private static final KEY_REPORT_URL:Ljava/lang/String; = "ReportUrl"

.field private static final KEY_STORY_URL:Ljava/lang/String; = "StoryUrl"

.field public static final LOCAL_STORAGE_URL:I = 0xa

.field public static final REDIRECT_URL:I = 0x1

.field public static final REPORT_URL:I = 0x5

.field private static final SERVER_PREFS:Ljava/lang/String; = "ServerPrefs"

.field private static final SERVER_TYPE:Ljava/lang/String; = "ServerType"

.field public static final STORY_URL:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static sServerSetting:Lcom/tencent/sdkutil/ServerSetting;


# instance fields
.field private sAskUrl:Ljava/lang/String;

.field private sAuthorizeCgi:Ljava/lang/String;

.field private sBragUrl:Ljava/lang/String;

.field private sGiftUrl:Ljava/lang/String;

.field private sGraphBaseUrl:Ljava/lang/String;

.field private sInviteUrl:Ljava/lang/String;

.field private sLocalStorageUrl:Ljava/lang/String;

.field private sRedirectUrl:Ljava/lang/String;

.field private sReportUrl:Ljava/lang/String;

.field private sSendStoryUrl:Ljava/lang/String;

.field private sWeakSharedPrefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/tencent/sdkutil/ServerSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/sdkutil/ServerSetting;->TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/sdkutil/ServerSetting;->sServerSetting:Lcom/tencent/sdkutil/ServerSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    .line 65
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sRedirectUrl:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sAuthorizeCgi:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sSendStoryUrl:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sInviteUrl:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sReportUrl:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sGraphBaseUrl:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sBragUrl:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sAskUrl:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sGiftUrl:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sLocalStorageUrl:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/tencent/sdkutil/ServerSetting;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/tencent/sdkutil/ServerSetting;->sServerSetting:Lcom/tencent/sdkutil/ServerSetting;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/tencent/sdkutil/ServerSetting;

    invoke-direct {v0}, Lcom/tencent/sdkutil/ServerSetting;-><init>()V

    sput-object v0, Lcom/tencent/sdkutil/ServerSetting;->sServerSetting:Lcom/tencent/sdkutil/ServerSetting;

    .line 80
    :cond_0
    sget-object v0, Lcom/tencent/sdkutil/ServerSetting;->sServerSetting:Lcom/tencent/sdkutil/ServerSetting;

    return-object v0
.end method


# virtual methods
.method public changeServer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    .line 85
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sRedirectUrl:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sAuthorizeCgi:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sSendStoryUrl:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sInviteUrl:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sReportUrl:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sGraphBaseUrl:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sBragUrl:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sAskUrl:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sGiftUrl:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sLocalStorageUrl:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 228
    :cond_0
    const-string v0, "ServerPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 229
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    .line 232
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 234
    if-nez v1, :cond_2

    .line 235
    sget-object v0, Lcom/tencent/sdkutil/ServerSetting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get host error. url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-object p2

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    :cond_3
    sget-object v2, Lcom/tencent/sdkutil/ServerSetting;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "host="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", envHost="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 249
    sget-object v0, Lcom/tencent/sdkutil/ServerSetting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnvUrl error. url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_4
    :try_start_1
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 244
    sget-object v0, Lcom/tencent/sdkutil/ServerSetting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return environment url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 106
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 107
    :cond_0
    const-string v0, "ServerPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    .line 110
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 222
    const-string v0, ""

    :goto_0
    return-object v0

    .line 112
    :pswitch_0
    if-nez p1, :cond_2

    .line 113
    const-string v0, "auth://tauth.qq.com/"

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sRedirectUrl:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "RedirectUrl"

    const-string v2, "auth://tauth.qq.com/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sRedirectUrl:Ljava/lang/String;

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sRedirectUrl:Ljava/lang/String;

    goto :goto_0

    .line 123
    :pswitch_1
    if-nez p1, :cond_4

    .line 124
    const-string v0, "https://openmobile.qq.com/oauth2.0/m_authorize?"

    goto :goto_0

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sAuthorizeCgi:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 127
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "AuthorizeCgi"

    const-string v2, "https://openmobile.qq.com/oauth2.0/m_authorize?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sAuthorizeCgi:Ljava/lang/String;

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sAuthorizeCgi:Ljava/lang/String;

    goto :goto_0

    .line 134
    :pswitch_2
    if-nez p1, :cond_6

    .line 135
    const-string v0, "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

    goto :goto_0

    .line 137
    :cond_6
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sSendStoryUrl:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 138
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "StoryUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sSendStoryUrl:Ljava/lang/String;

    .line 141
    :cond_7
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sSendStoryUrl:Ljava/lang/String;

    goto :goto_0

    .line 145
    :pswitch_3
    if-nez p1, :cond_8

    .line 146
    const-string v0, "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"

    goto :goto_0

    .line 148
    :cond_8
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sInviteUrl:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 149
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "InviteUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sInviteUrl:Ljava/lang/String;

    .line 152
    :cond_9
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sInviteUrl:Ljava/lang/String;

    goto :goto_0

    .line 156
    :pswitch_4
    if-nez p1, :cond_a

    .line 157
    const-string v0, "http://wspeed.qq.com/w.cgi"

    goto :goto_0

    .line 159
    :cond_a
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sReportUrl:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 160
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "ReportUrl"

    const-string v2, "http://wspeed.qq.com/w.cgi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sReportUrl:Ljava/lang/String;

    .line 163
    :cond_b
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sReportUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 167
    :pswitch_5
    if-nez p1, :cond_c

    .line 168
    const-string v0, "https://openmobile.qq.com/"

    goto/16 :goto_0

    .line 170
    :cond_c
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sGraphBaseUrl:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 171
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "GraphBaseUrl"

    const-string v2, "https://openmobile.qq.com/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sGraphBaseUrl:Ljava/lang/String;

    .line 174
    :cond_d
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sGraphBaseUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 178
    :pswitch_6
    if-nez p1, :cond_e

    .line 179
    const-string v0, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"

    goto/16 :goto_0

    .line 181
    :cond_e
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sBragUrl:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 182
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "BragUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sBragUrl:Ljava/lang/String;

    .line 185
    :cond_f
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sBragUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 189
    :pswitch_7
    if-nez p1, :cond_10

    .line 190
    const-string v0, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    goto/16 :goto_0

    .line 192
    :cond_10
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sAskUrl:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 193
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "AskUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sAskUrl:Ljava/lang/String;

    .line 196
    :cond_11
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sAskUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 200
    :pswitch_8
    if-nez p1, :cond_12

    .line 201
    const-string v0, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    goto/16 :goto_0

    .line 203
    :cond_12
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sGiftUrl:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 204
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "GiftUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sGiftUrl:Ljava/lang/String;

    .line 207
    :cond_13
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sGiftUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 211
    :pswitch_9
    if-nez p1, :cond_14

    .line 212
    const-string v0, "http://qzs.qq.com"

    goto/16 :goto_0

    .line 214
    :cond_14
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sLocalStorageUrl:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 215
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "LocalStorageUrl"

    const-string v2, "http://qzs.qq.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sLocalStorageUrl:Ljava/lang/String;

    .line 218
    :cond_15
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sLocalStorageUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setEnvironment(Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 263
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 264
    :cond_0
    const-string v0, "ServerPrefs"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 265
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    .line 267
    :cond_1
    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_2

    .line 268
    sget-object v0, Lcom/tencent/sdkutil/ServerSetting;->TAG:Ljava/lang/String;

    const-string v1, "\u5207\u6362\u73af\u5883\u53c2\u6570\u9519\u8bef\uff0c\u6b63\u5f0f\u73af\u5883\u4e3a0\uff0c\u4f53\u9a8c\u73af\u5883\u4e3a1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_0
    return-void

    .line 271
    :cond_2
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 273
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 274
    const-string v1, "ServerType"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 275
    const-string v1, "RedirectUrl"

    const-string v2, "auth://tauth.qq.com/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    const-string v1, "AuthorizeCgi"

    const-string v2, "https://openmobile.qq.com/oauth2.0/m_authorize?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 278
    const-string v1, "StoryUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 280
    const-string v1, "InviteUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    const-string v1, "ReportUrl"

    const-string v2, "http://wspeed.qq.com/w.cgi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 283
    const-string v1, "GraphBaseUrl"

    const-string v2, "https://openmobile.qq.com/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    const-string v1, "BragUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    const-string v1, "AskUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    const-string v1, "GiftUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    const-string v1, "LocalStorageUrl"

    const-string v2, "http://qzs.qq.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 293
    invoke-virtual {p0}, Lcom/tencent/sdkutil/ServerSetting;->changeServer()V

    .line 294
    const-string v0, "\u5df2\u5207\u6362\u5230\u6b63\u5f0f\u73af\u5883"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/sdkutil/ServerSetting;->sWeakSharedPrefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 300
    const-string v1, "ServerType"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 301
    const-string v1, "RedirectUrl"

    const-string v2, "auth://tauth.qq.com/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    const-string v1, "AuthorizeCgi"

    const-string v2, "https://test.openmobile.qq.com/oauth2.0/m_authorize?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    const-string v1, "StoryUrl"

    const-string v2, "http://testmobile.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    const-string v1, "InviteUrl"

    const-string v2, "http://testmobile.qq.com/open/mobile/invite/sdk_invite.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 309
    const-string v1, "ReportUrl"

    const-string v2, "http://wspeed.qq.com/w.cgi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    const-string v1, "GraphBaseUrl"

    const-string v2, "https://test.openmobile.qq.com/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 311
    const-string v1, "BragUrl"

    const-string v2, "http://testmobile.qq.com/open/mobile/brag/sdk_brag.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 313
    const-string v1, "AskUrl"

    const-string v2, "http://testmobile.qq.com/open/mobile/request/sdk_request.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 316
    const-string v1, "GiftUrl"

    const-string v2, "http://testmobile.qq.com/open/mobile/request/sdk_request.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 319
    const-string v1, "LocalStorageUrl"

    const-string v2, "http://test.openmobile.qq.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    invoke-virtual {p0}, Lcom/tencent/sdkutil/ServerSetting;->changeServer()V

    .line 323
    const-string v0, "\u5df2\u5207\u6362\u5230\u4f53\u9a8c\u73af\u5883"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
