.class public Lcom/tencent/jsutil/JumpController;
.super Lcom/tencent/connect/common/b;
.source "ProGuard"


# static fields
.field private static final KEY_REQUEST_CODE:Ljava/lang/String; = "key_request_code"

.field private static final TAG:Ljava/lang/String; = "JumpAction"


# instance fields
.field private final SETAVATAR_REQUESTCODE:I

.field private activity:Landroid/app/Activity;

.field private mQQToken:Lcom/tencent/tauth/QQToken;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/tencent/tauth/QQToken;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/common/b;-><init>(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/jsutil/JumpController;->SETAVATAR_REQUESTCODE:I

    .line 34
    iput-object p1, p0, Lcom/tencent/jsutil/JumpController;->activity:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/tencent/jsutil/JumpController;->mQQToken:Lcom/tencent/tauth/QQToken;

    .line 36
    return-void
.end method


# virtual methods
.method public jump(Ljava/lang/String;)V
    .locals 5
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 47
    invoke-static {p1}, Lcom/tencent/sdkutil/AppUtils;->parseJsonToIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    invoke-static {p1}, Lcom/tencent/sdkutil/JsonUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 49
    const-string v2, "jsonobj"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v2, "package_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "class_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "requestcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const-string v2, "package_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string v3, "class_name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    const-string v4, "requestcode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 56
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iput-object v0, p0, Lcom/tencent/jsutil/JumpController;->mActivityIntent:Landroid/content/Intent;

    .line 65
    invoke-static {p0}, Lcom/tencent/connect/common/AssistActivity;->a(Lcom/tencent/connect/common/b;)V

    .line 66
    iget-object v0, p0, Lcom/tencent/jsutil/JumpController;->mActivityIntent:Landroid/content/Intent;

    const-string v2, "key_request_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/tencent/jsutil/JumpController;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/tencent/jsutil/JumpController;->getAssitIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 70
    :cond_0
    return-void
.end method

.method public jumpSchema(Ljava/lang/String;)V
    .locals 4
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 74
    invoke-static {p1}, Lcom/tencent/sdkutil/JsonUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 75
    const-string v1, ""

    .line 76
    const/4 v0, 0x0

    .line 77
    const-string v3, "scheme"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "requestcode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const-string v0, "scheme"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string v0, "requestcode"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    :cond_0
    const-string v3, "json"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 84
    iput-object v2, p0, Lcom/tencent/jsutil/JumpController;->mActivityIntent:Landroid/content/Intent;

    .line 88
    invoke-static {p0}, Lcom/tencent/connect/common/AssistActivity;->a(Lcom/tencent/connect/common/b;)V

    .line 89
    iget-object v1, p0, Lcom/tencent/jsutil/JumpController;->mActivityIntent:Landroid/content/Intent;

    const-string v2, "key_request_code"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/tencent/jsutil/JumpController;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/tencent/jsutil/JumpController;->getAssitIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-static {p1}, Lcom/tencent/sdkutil/TemporaryStorage;->getListener(I)Lcom/tencent/tauth/IUiListener;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 100
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v0, "currentUrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/tauth/Tencent;->mBridge:Lcom/tencent/jsutil/JsBridge;

    invoke-virtual {v2}, Lcom/tencent/jsutil/JsBridge;->getWebViewCurrentUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v0, Lcom/tencent/tauth/Tencent;->intentmap:Lcom/tencent/jsutil/IntentMap;

    invoke-virtual {v0, p3}, Lcom/tencent/jsutil/IntentMap;->setIntentMap(Landroid/content/Intent;)V

    .line 105
    sget-object v0, Lcom/tencent/tauth/Tencent;->mBridge:Lcom/tencent/jsutil/JsBridge;

    const-string v1, "onActivityResult"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/jsutil/JsBridge;->executeMethod(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tencent/jsutil/JumpController;->activity:Landroid/app/Activity;

    .line 40
    iput-object p1, p0, Lcom/tencent/jsutil/JumpController;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method
