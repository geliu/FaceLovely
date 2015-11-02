.class public Lcom/tencent/open/SocialApiIml;
.super Lcom/tencent/connect/common/b;
.source "ProGuard"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/common/b;-><init>(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/open/SocialApiIml;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tencent/open/SocialApiIml;->dismissProgressDl()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/open/SocialApiIml;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/open/SocialApiIml;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct/range {p0 .. p6}, Lcom/tencent/open/SocialApiIml;->handleIntent(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/open/SocialApiIml;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/open/SocialApiIml;->startVoiceView(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/open/SocialApiIml;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/tencent/open/SocialApiIml;->showDialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/open/SocialApiIml;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private askgift(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->mActivity:Landroid/app/Activity;

    .line 83
    const-string v0, "com.tencent.open.agent.RequestFreegiftActivity"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 84
    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 85
    const-string v0, "action_ask"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "type"

    const-string v1, "request"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/sdkutil/ServerSetting;->getInstance()Lcom/tencent/sdkutil/ServerSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;

    const-string v3, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/sdkutil/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/tencent/open/SocialApiIml;->handleIntent(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    .line 92
    return-void

    .line 87
    :cond_1
    const-string v0, "action_gift"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "type"

    const-string v1, "freegift"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dismissProgressDl()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 263
    :cond_0
    return-void
.end method

.method private generateDelayStParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Lcom/tencent/open/SocialApiIml$DelayStartParam;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    sget-object v1, Lcom/tencent/tauth/Constants;->PACKAGE_QZONE:Ljava/lang/String;

    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    new-instance v1, Lcom/tencent/open/SocialApiIml$DelayStartParam;

    invoke-direct {v1}, Lcom/tencent/open/SocialApiIml$DelayStartParam;-><init>()V

    .line 234
    iput-object v0, v1, Lcom/tencent/open/SocialApiIml$DelayStartParam;->agentIntent:Landroid/content/Intent;

    .line 235
    iput-object p1, v1, Lcom/tencent/open/SocialApiIml$DelayStartParam;->params:Landroid/os/Bundle;

    .line 236
    iput-object p3, v1, Lcom/tencent/open/SocialApiIml$DelayStartParam;->h5Url:Ljava/lang/String;

    .line 237
    iput-object p4, v1, Lcom/tencent/open/SocialApiIml$DelayStartParam;->listener:Lcom/tencent/tauth/IUiListener;

    .line 238
    iput-object p2, v1, Lcom/tencent/open/SocialApiIml$DelayStartParam;->action:Ljava/lang/String;

    .line 239
    return-object v1
.end method

.method private handleIntent(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    const-string v0, "SocialApiIml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SocialApiIml handleIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " activityIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz p2, :cond_1

    .line 410
    const-string v0, "key_action"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v0, "key_params"

    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 413
    iput-object p2, p0, Lcom/tencent/open/SocialApiIml;->mActivityIntent:Landroid/content/Intent;

    .line 414
    invoke-virtual {p0, p1, p6}, Lcom/tencent/open/SocialApiIml;->startAssitActivity(Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    const-string v0, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getTargetActivityIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 418
    new-instance v0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;-><init>(Lcom/tencent/open/SocialApiIml;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 420
    const-string v1, "com.tencent.open.agent.EncryTokenActivity"

    invoke-virtual {p0, v1}, Lcom/tencent/open/SocialApiIml;->getTargetActivityIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 423
    if-eqz v1, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    const-string v2, "oauth_consumer_key"

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/tauth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v2, "openid"

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/tauth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v2, "access_token"

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/tauth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v2, "key_action"

    const-string v3, "action_check_token"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    iput-object v1, p0, Lcom/tencent/open/SocialApiIml;->mActivityIntent:Landroid/content/Intent;

    .line 433
    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->hasActivityForIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {p0, p1, v0}, Lcom/tencent/open/SocialApiIml;->startAssitActivity(Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_0

    .line 437
    :cond_2
    const-string v1, "tencent&sdk&qazxc***14969%%"

    .line 438
    const-string v2, "qzone3.4"

    .line 439
    const-string v3, "source"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v5}, Lcom/tencent/tauth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v5}, Lcom/tencent/tauth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v5}, Lcom/tencent/tauth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/tauth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/tauth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/tauth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/sdkutil/Util;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    const-string v2, "result"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 446
    :try_start_0
    const-string v3, "encry_token"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_1
    invoke-virtual {v0, v2}, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->onComplete(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 447
    :catch_0
    move-exception v1

    .line 448
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private showDialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    const-string v1, "openSDK_LOG"

    const-string v2, "OpenUi, showDialog --start"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/record/debug/WnsClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 468
    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/tauth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/tauth/QQToken;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    const-string v0, "access_token"

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/tauth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/tauth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_1

    .line 476
    const-string v1, "openid"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;

    const-string v1, "pfStore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 484
    const-string v1, "pf"

    const-string v2, "openmobile_android"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    const-string v1, "pf"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-static {p3}, Lcom/tencent/sdkutil/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    const-string v1, "openSDK_LOG"

    const-string v2, "OpenUi, showDialog TDialog"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/record/debug/WnsClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v0, "action_challenge"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "action_brag"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    :cond_2
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    const-string v1, "openSDK_LOG"

    const-string v2, "OpenUi, showDialog PKDialog"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/record/debug/WnsClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    new-instance v0, Lcom/tencent/sdkutil/PKDialog;

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    move-object v2, p2

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/sdkutil/PKDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/tauth/QQToken;)V

    invoke-virtual {v0}, Lcom/tencent/sdkutil/PKDialog;->show()V

    .line 505
    :goto_1
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 489
    const-string v0, "pf"

    const-string v1, "openmobile_android"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_3
    new-instance v0, Lcom/tencent/sdkutil/TDialog;

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    move-object v2, p2

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/sdkutil/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/tauth/QQToken;)V

    invoke-virtual {v0}, Lcom/tencent/sdkutil/TDialog;->show()V

    goto :goto_1
.end method

.method private startVoiceView(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    const-string v0, "com.tencent.open.agent.voice"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 388
    invoke-static {}, Lcom/tencent/sdkutil/ServerSetting;->getInstance()Lcom/tencent/sdkutil/ServerSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;

    const-string v3, "http://qzs.qq.com/open/mobile/not_support.html?"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/sdkutil/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 390
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->isCheckFunctionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 394
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7a0d\u5019"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 398
    :cond_1
    const-string v0, "action_voice"

    invoke-direct {p0, p2, v0, v5, p3}, Lcom/tencent/open/SocialApiIml;->generateDelayStParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Lcom/tencent/open/SocialApiIml$DelayStartParam;

    move-result-object v0

    .line 399
    const-string v1, "action_voice"

    new-instance v2, Lcom/tencent/open/SocialApiIml$CheckListener;

    invoke-direct {v2, p0, v0}, Lcom/tencent/open/SocialApiIml$CheckListener;-><init>(Lcom/tencent/open/SocialApiIml;Lcom/tencent/open/SocialApiIml$DelayStartParam;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/tencent/open/SocialApiIml;->getTargetActivityIntentForNew(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    .line 404
    :goto_0
    return-void

    .line 403
    :cond_2
    const-string v3, "action_voice"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/open/SocialApiIml;->handleIntent(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_0
.end method


# virtual methods
.method public ask(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    const-string v0, "action_ask"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/tencent/open/SocialApiIml;->askgift(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 79
    return-void
.end method

.method public brag(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->mActivity:Landroid/app/Activity;

    .line 108
    const-string v0, "com.tencent.open.agent.BragActivity"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 109
    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 110
    invoke-static {}, Lcom/tencent/sdkutil/ServerSetting;->getInstance()Lcom/tencent/sdkutil/ServerSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;

    const-string v3, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/sdkutil/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    const-string v3, "action_brag"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/open/SocialApiIml;->handleIntent(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    .line 112
    return-void
.end method

.method public challenge(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->mActivity:Landroid/app/Activity;

    .line 128
    const-string v0, "com.tencent.open.agent.ChallengeActivity"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 129
    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 130
    invoke-static {}, Lcom/tencent/sdkutil/ServerSetting;->getInstance()Lcom/tencent/sdkutil/ServerSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;

    const-string v3, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/sdkutil/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    const-string v3, "action_challenge"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/open/SocialApiIml;->handleIntent(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    .line 132
    return-void
.end method

.method protected getTargetActivityIntentForNew(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 601
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 602
    sget-object v1, Lcom/tencent/tauth/Constants;->PACKAGE_QZONE:Ljava/lang/String;

    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string v1, "key_action"

    const-string v2, "action_check"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 606
    const-string v2, "apiName"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v2, "key_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 609
    iput-object v0, p0, Lcom/tencent/open/SocialApiIml;->mActivityIntent:Landroid/content/Intent;

    .line 610
    invoke-virtual {p0, p1, p3}, Lcom/tencent/open/SocialApiIml;->startAssitActivity(Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V

    .line 612
    return-void
.end method

.method public gift(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const-string v0, "action_gift"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/tencent/open/SocialApiIml;->askgift(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 63
    return-void
.end method

.method public grade(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->mActivity:Landroid/app/Activity;

    .line 189
    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 190
    const-string v0, "version"

    invoke-static {p1}, Lcom/tencent/sdkutil/Util;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "com.tencent.open.agent.AppGradeActivity"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 194
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->isCheckFunctionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 199
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 216
    const-string v0, "http://qzs.qq.com/open/mobile/rate/sdk_rate.html?"

    .line 217
    const-string v1, "action_grade"

    invoke-direct {p0, p2, v1, v0, p3}, Lcom/tencent/open/SocialApiIml;->generateDelayStParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Lcom/tencent/open/SocialApiIml$DelayStartParam;

    move-result-object v0

    .line 218
    const-string v1, "action_grade"

    new-instance v2, Lcom/tencent/open/SocialApiIml$CheckListener;

    invoke-direct {v2, p0, v0}, Lcom/tencent/open/SocialApiIml$CheckListener;-><init>(Lcom/tencent/open/SocialApiIml;Lcom/tencent/open/SocialApiIml$DelayStartParam;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/tencent/open/SocialApiIml;->getTargetActivityIntentForNew(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v5, "http://qzs.qq.com/open/mobile/rate/sdk_rate.html?"

    .line 225
    const-string v3, "action_grade"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/open/SocialApiIml;->handleIntent(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_0
.end method

.method public invite(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->mActivity:Landroid/app/Activity;

    .line 148
    const-string v0, "com.tencent.open.agent.AppInvitationActivity"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 149
    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 150
    invoke-static {}, Lcom/tencent/sdkutil/ServerSetting;->getInstance()Lcom/tencent/sdkutil/ServerSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;

    const-string v3, "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/sdkutil/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 151
    const-string v3, "action_invite"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/open/SocialApiIml;->handleIntent(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    .line 152
    return-void
.end method

.method protected isCheckFunctionEnabled()Z
    .locals 3

    .prologue
    .line 589
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 590
    const-string v1, "com.tencent.open.agent.CheckFunctionActivity"

    .line 591
    sget-object v2, Lcom/tencent/tauth/Constants;->PACKAGE_QZONE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/sdkutil/Util;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public story(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->mActivity:Landroid/app/Activity;

    .line 168
    const-string v0, "com.tencent.open.agent.SendStoryActivity"

    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 169
    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 170
    invoke-static {}, Lcom/tencent/sdkutil/ServerSetting;->getInstance()Lcom/tencent/sdkutil/ServerSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;

    const-string v3, "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/sdkutil/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    const-string v3, "action_story"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/open/SocialApiIml;->handleIntent(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    .line 172
    return-void
.end method

.method public voice(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    const-string v0, "voice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voice params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->mActivity:Landroid/app/Activity;

    .line 333
    invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 334
    const-string v0, "version"

    invoke-static {p1}, Lcom/tencent/sdkutil/Util;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/tencent/open/VoiceHelper;->hasSDCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/16 v1, -0xc

    const-string v2, "\u68c0\u6d4b\u4e0d\u5230SD\u5361\uff0c\u65e0\u6cd5\u53d1\u9001\u8bed\u97f3\uff01"

    const-string v3, "\u68c0\u6d4b\u4e0d\u5230SD\u5361\uff0c\u65e0\u6cd5\u53d1\u9001\u8bed\u97f3\uff01"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 377
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string v0, "image_date"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    const-string v0, "image_date"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 345
    if-eqz v0, :cond_1

    .line 348
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 349
    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "\u8bf7\u7a0d\u5019\uff0c\u6b63\u5728\u67e5\u8be2\u2026"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 352
    new-instance v1, Lcom/tencent/open/VoiceHelper;

    new-instance v2, Lcom/tencent/open/SocialApiIml$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/tencent/open/SocialApiIml$1;-><init>(Lcom/tencent/open/SocialApiIml;Landroid/os/Bundle;Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V

    invoke-direct {v1, v2}, Lcom/tencent/open/VoiceHelper;-><init>(Lcom/tencent/open/VoiceHelper$ImageCallback;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/open/VoiceHelper;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 376
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/open/SocialApiIml;->startVoiceView(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_0
.end method

.method public writeEncryToken(Landroid/content/Context;)V
    .locals 8
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 560
    const-string v1, "tencent&sdk&qazxc***14969%%"

    .line 561
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/tauth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 562
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/tauth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 563
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/tauth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v4

    .line 564
    const-string v5, "qzone3.4"

    .line 565
    const/4 v0, 0x0

    .line 566
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/sdkutil/Util;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 570
    :goto_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 571
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 572
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 573
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 574
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<!DOCTYPE HTML><html lang=\"en-US\"><head><meta charset=\"UTF-8\"><title>localStorage Test</title><script type=\"text/javascript\">document.domain = \'qq.com\';localStorage[\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/tauth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/tauth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"]=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\";</script></head><body></body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 582
    invoke-static {}, Lcom/tencent/sdkutil/ServerSetting;->getInstance()Lcom/tencent/sdkutil/ServerSetting;

    move-result-object v1

    const-string v3, "http://qzs.qq.com"

    invoke-virtual {v1, p1, v3}, Lcom/tencent/sdkutil/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 584
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method
