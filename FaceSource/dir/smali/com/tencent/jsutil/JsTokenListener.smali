.class public Lcom/tencent/jsutil/JsTokenListener;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# static fields
.field private static final ONCANCEL_MSG:I = 0x2

.field private static final ONCOMPLETE_MSG:I = 0x0

.field private static final ONERROR_MSG:I = 0x1


# instance fields
.field private ctx:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIUiListener:Lcom/tencent/tauth/IUiListener;

.field private mQqToken:Lcom/tencent/tauth/QQToken;


# direct methods
.method public constructor <init>(Lcom/tencent/tauth/IUiListener;Lcom/tencent/tauth/QQToken;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/jsutil/JsTokenListener;->mIUiListener:Lcom/tencent/tauth/IUiListener;

    .line 28
    new-instance v0, Lcom/tencent/jsutil/JsTokenListener$1;

    invoke-direct {v0, p0}, Lcom/tencent/jsutil/JsTokenListener$1;-><init>(Lcom/tencent/jsutil/JsTokenListener;)V

    iput-object v0, p0, Lcom/tencent/jsutil/JsTokenListener;->mHandler:Landroid/os/Handler;

    .line 91
    iput-object p1, p0, Lcom/tencent/jsutil/JsTokenListener;->mIUiListener:Lcom/tencent/tauth/IUiListener;

    .line 92
    iput-object p2, p0, Lcom/tencent/jsutil/JsTokenListener;->mQqToken:Lcom/tencent/tauth/QQToken;

    .line 93
    iput-object p3, p0, Lcom/tencent/jsutil/JsTokenListener;->ctx:Landroid/content/Context;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/jsutil/JsTokenListener;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/tencent/jsutil/JsTokenListener;->doComplete(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/jsutil/JsTokenListener;Lcom/tencent/tauth/UiError;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/tencent/jsutil/JsTokenListener;->doError(Lcom/tencent/tauth/UiError;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/jsutil/JsTokenListener;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tencent/jsutil/JsTokenListener;->doCancel()V

    return-void
.end method

.method private doCancel()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/jsutil/JsTokenListener;->mIUiListener:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 87
    return-void
.end method

.method private doComplete(Lorg/json/JSONObject;)V
    .locals 4
    .parameter

    .prologue
    .line 52
    :try_start_0
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, "openid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/tencent/jsutil/JsTokenListener;->mQqToken:Lcom/tencent/tauth/QQToken;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 57
    iget-object v3, p0, Lcom/tencent/jsutil/JsTokenListener;->mQqToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v3, v0, v1}, Lcom/tencent/tauth/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/tencent/jsutil/JsTokenListener;->mQqToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v0, v2}, Lcom/tencent/tauth/QQToken;->setOpenId(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/tencent/jsutil/JsTokenListener;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/jsutil/JsTokenListener;->mQqToken:Lcom/tencent/tauth/QQToken;

    invoke-static {v0, v1}, Lcom/tencent/mta/TencentStat;->c(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)V

    .line 62
    :cond_0
    const-string v0, "pf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 65
    :try_start_1
    iget-object v1, p0, Lcom/tencent/jsutil/JsTokenListener;->mQqToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/tauth/QQToken;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pfStore"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pf"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/tencent/jsutil/JsTokenListener;->mIUiListener:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    .line 80
    :goto_1
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v1

    const-string v2, "openSDK_LOG"

    const-string v3, "JsTokenListener, JsTokenListener() onComplete error"

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/record/debug/WnsClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private doError(Lcom/tencent/tauth/UiError;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/jsutil/JsTokenListener;->mIUiListener:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/jsutil/JsTokenListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 99
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 100
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/tencent/jsutil/JsTokenListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 107
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 108
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lcom/tencent/jsutil/JsTokenListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method
