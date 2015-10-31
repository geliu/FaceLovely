.class public Lcom/miantan/myoface/ShareAppActivity;
.super Landroid/app/Activity;
.source "ShareAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mButtonCancle:Landroid/widget/Button;

.field private mButtonPengyouquan:Landroid/widget/Button;

.field private mButtonQQHaoYou:Landroid/widget/Button;

.field private mButtonQZONE:Landroid/widget/Button;

.field private mButtonWeixin:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field public mTencent:Lcom/tencent/tauth/Tencent;

.field private mViewSending:Landroid/view/View;

.field private music_save:I

.field private music_shake:I

.field private music_share:I

.field private sp_save:Landroid/media/SoundPool;

.field private sp_shake:Landroid/media/SoundPool;

.field private sp_share:Landroid/media/SoundPool;

.field private wx_api:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const-string v0, "ShareAppActivity"

    iput-object v0, p0, Lcom/miantan/myoface/ShareAppActivity;->LOG_TAG:Ljava/lang/String;

    .line 277
    new-instance v0, Lcom/miantan/myoface/ShareAppActivity$1;

    invoke-direct {v0, p0}, Lcom/miantan/myoface/ShareAppActivity$1;-><init>(Lcom/miantan/myoface/ShareAppActivity;)V

    iput-object v0, p0, Lcom/miantan/myoface/ShareAppActivity;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method private DoCheckNetwork()V
    .locals 3

    .prologue
    .line 376
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/ShareAppActivity;->CheckisNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    .line 377
    sget-boolean v2, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/miantan/myoface/ShareAppActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 381
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 382
    iget-object v2, p0, Lcom/miantan/myoface/ShareAppActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private DoCheckSharePrepare()V
    .locals 3

    .prologue
    .line 328
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/ShareAppActivity;->CheckisNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    .line 329
    sget-boolean v2, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/miantan/myoface/ShareAppActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 333
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 334
    iget-object v2, p0, Lcom/miantan/myoface/ShareAppActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/ShareAppActivity;->CheckisWXInstalled(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miantan/myoface/BasicData;->isWXInstalled:Z

    .line 348
    sget-boolean v2, Lcom/miantan/myoface/BasicData;->isWXInstalled:Z

    if-nez v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/miantan/myoface/ShareAppActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 352
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v2, 0x67

    iput v2, v1, Landroid/os/Message;->what:I

    .line 353
    iget-object v2, p0, Lcom/miantan/myoface/ShareAppActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 357
    .end local v1           #msg:Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 359
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private ShowToast(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 272
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 273
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x51

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 274
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 275
    return-void
.end method

.method static synthetic access$0(Lcom/miantan/myoface/ShareAppActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/miantan/myoface/ShareAppActivity;->ShowToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/miantan/myoface/ShareAppActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miantan/myoface/ShareAppActivity;->mViewSending:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/miantan/myoface/ShareAppActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miantan/myoface/ShareAppActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private doShareToQQ(Landroid/os/Bundle;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 559
    const-string v2, "1101118379"

    invoke-static {v2, p0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v1

    .line 561
    .local v1, tencent:Lcom/tencent/tauth/Tencent;
    move-object v0, p0

    .line 562
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/miantan/myoface/ShareAppActivity$2;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/miantan/myoface/ShareAppActivity$2;-><init>(Lcom/miantan/myoface/ShareAppActivity;Lcom/tencent/tauth/Tencent;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 589
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 590
    return-void
.end method


# virtual methods
.method public CheckisNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 398
    if-eqz p1, :cond_0

    .line 400
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 399
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 401
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 402
    .local v1, mNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 406
    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #mNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public CheckisWXInstalled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 411
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 413
    .local v2, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_0

    .line 414
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .end local v0           #i:I
    :cond_0
    move v4, v5

    .line 422
    :goto_1
    return v4

    .line 415
    .restart local v0       #i:I
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 417
    .local v3, pn:Ljava/lang/String;
    const-string v4, "com.tencent.mm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 418
    const/4 v4, 0x1

    goto :goto_1

    .line 414
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 258
    :goto_0
    :pswitch_0
    return-void

    .line 178
    :pswitch_1
    const-string v0, "BtnShareAPPToWX"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/miantan/myoface/ShareAppActivity;->DoCheckSharePrepare()V

    .line 184
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isWXInstalled:Z

    if-nez v0, :cond_1

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/miantan/myoface/ShareAppActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnClick|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/miantan/myoface/BasicData;->isWXInstalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/ShareAppActivity;->shareWebtoWeixin(I)V

    goto :goto_0

    .line 201
    :pswitch_2
    const-string v0, "BtnShareAPPToPYQ"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/miantan/myoface/ShareAppActivity;->DoCheckSharePrepare()V

    .line 205
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isWXInstalled:Z

    if-nez v0, :cond_3

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/miantan/myoface/ShareAppActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnClick|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/miantan/myoface/BasicData;->isWXInstalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/ShareAppActivity;->shareWebtoWeixin(I)V

    goto :goto_0

    .line 221
    :pswitch_3
    const-string v0, "BtnShareAPPToQZONE"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/miantan/myoface/ShareAppActivity;->DoCheckNetwork()V

    .line 223
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/miantan/myoface/ShareAppActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnClick|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/miantan/myoface/ShareAppActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnClick| button_share_qzone"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareAppActivity;->shareWebToQQQZONE()V

    goto/16 :goto_0

    .line 236
    :pswitch_4
    const-string v0, "BtnShareAPPToQQHaoYou"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    invoke-direct {p0}, Lcom/miantan/myoface/ShareAppActivity;->DoCheckNetwork()V

    .line 238
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v0, :cond_5

    .line 240
    iget-object v0, p0, Lcom/miantan/myoface/ShareAppActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnClick|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 245
    :cond_5
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareAppActivity;->shareWebToQQFriend()V

    goto/16 :goto_0

    .line 252
    :pswitch_5
    const-string v0, "BtnShareAPP_BtnClose"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareAppActivity;->finish()V

    goto/16 :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x7f0b0084
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v3, 0x7f03000c

    invoke-virtual {p0, v3}, Lcom/miantan/myoface/ShareAppActivity;->setContentView(I)V

    .line 94
    iput-object p0, p0, Lcom/miantan/myoface/ShareAppActivity;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 97
    .local v2, window:Landroid/view/Window;
    const v3, 0x7f090004

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 100
    const v3, 0x7f0b008b

    invoke-virtual {p0, v3}, Lcom/miantan/myoface/ShareAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->mButtonWeixin:Landroid/widget/Button;

    .line 101
    iget-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->mButtonWeixin:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v3, 0x7f0b008d

    invoke-virtual {p0, v3}, Lcom/miantan/myoface/ShareAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->mButtonPengyouquan:Landroid/widget/Button;

    .line 104
    iget-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->mButtonPengyouquan:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v3, 0x7f0b0087

    invoke-virtual {p0, v3}, Lcom/miantan/myoface/ShareAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->mButtonQQHaoYou:Landroid/widget/Button;

    .line 107
    iget-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->mButtonQQHaoYou:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v3, 0x7f0b0089

    invoke-virtual {p0, v3}, Lcom/miantan/myoface/ShareAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->mButtonQZONE:Landroid/widget/Button;

    .line 110
    iget-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->mButtonQZONE:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v3, 0x7f0b0084

    invoke-virtual {p0, v3}, Lcom/miantan/myoface/ShareAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->mButtonCancle:Landroid/widget/Button;

    .line 113
    iget-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->mButtonCancle:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v3, 0x7f0b0020

    invoke-virtual {p0, v3}, Lcom/miantan/myoface/ShareAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->mViewSending:Landroid/view/View;

    .line 116
    const v3, 0x7f0b0022

    invoke-virtual {p0, v3}, Lcom/miantan/myoface/ShareAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 117
    .local v0, img_loading:Landroid/widget/ImageView;
    const v3, 0x7f04000a

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    check-cast v1, Landroid/view/animation/RotateAnimation;

    .line 118
    .local v1, rotateAnimation:Landroid/view/animation/RotateAnimation;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 119
    iget-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->mViewSending:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    const-string v3, "1101118379"

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v3

    iput-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 128
    const-string v3, "wx3d0d86a047d2308b"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v3

    iput-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->wx_api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 129
    iget-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->wx_api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v4, "wx3d0d86a047d2308b"

    invoke-interface {v3, v4}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 132
    new-instance v3, Landroid/media/SoundPool;

    invoke-direct {v3, v7, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->sp_save:Landroid/media/SoundPool;

    .line 133
    iget-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->sp_save:Landroid/media/SoundPool;

    const v4, 0x7f050002

    invoke-virtual {v3, p0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/miantan/myoface/ShareAppActivity;->music_save:I

    .line 135
    new-instance v3, Landroid/media/SoundPool;

    invoke-direct {v3, v7, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->sp_share:Landroid/media/SoundPool;

    .line 136
    iget-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->sp_share:Landroid/media/SoundPool;

    const v4, 0x7f050004

    invoke-virtual {v3, p0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/miantan/myoface/ShareAppActivity;->music_share:I

    .line 138
    new-instance v3, Landroid/media/SoundPool;

    invoke-direct {v3, v7, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->sp_shake:Landroid/media/SoundPool;

    .line 139
    iget-object v3, p0, Lcom/miantan/myoface/ShareAppActivity;->sp_shake:Landroid/media/SoundPool;

    const v4, 0x7f050003

    invoke-virtual {v3, p0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/miantan/myoface/ShareAppActivity;->music_shake:I

    .line 147
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 167
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 160
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 161
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 154
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 155
    return-void
.end method

.method public shareWebToQQFriend()V
    .locals 7

    .prologue
    .line 517
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 518
    .local v2, params:Landroid/os/Bundle;
    const-string v4, "title"

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v4, "targetUrl"

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v4, "summary"

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v4, "imageUrl"

    const-string v5, "http://www.bqtalk.com/image/mlogo.png"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v0, "MYOTee"

    .line 527
    .local v0, appName:Ljava/lang/String;
    const/4 v3, 0x1

    .line 528
    .local v3, shareType:I
    const/4 v1, 0x0

    .line 530
    .local v1, mExtarFlag:I
    const-string v4, "appName"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v4, "req_type"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    const-string v4, "cflag"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 534
    invoke-direct {p0, v2}, Lcom/miantan/myoface/ShareAppActivity;->doShareToQQ(Landroid/os/Bundle;)V

    .line 535
    return-void
.end method

.method public shareWebToQQQZONE()V
    .locals 7

    .prologue
    .line 539
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 540
    .local v2, params:Landroid/os/Bundle;
    const-string v4, "title"

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v4, "targetUrl"

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v4, "summary"

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v4, "imageUrl"

    const-string v5, "http://www.bqtalk.com/image/mlogo.png"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v0, "MYOTee"

    .line 547
    .local v0, appName:Ljava/lang/String;
    const/4 v3, 0x1

    .line 548
    .local v3, shareType:I
    const/4 v1, 0x0

    .line 549
    .local v1, mExtarFlag:I
    or-int/lit8 v1, v1, 0x1

    .line 551
    const-string v4, "appName"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v4, "req_type"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 553
    const-string v4, "cflag"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 555
    invoke-direct {p0, v2}, Lcom/miantan/myoface/ShareAppActivity;->doShareToQQ(Landroid/os/Bundle;)V

    .line 556
    return-void
.end method

.method public shareWebtoWeixin(I)V
    .locals 9
    .parameter "flag"

    .prologue
    const/16 v8, 0x78

    const/4 v5, 0x1

    .line 431
    new-instance v4, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;

    invoke-direct {v4}, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;-><init>()V

    .line 434
    .local v4, webpage:Lcom/tencent/mm/sdk/openapi/WXWebpageObject;
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080027

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 436
    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v0, v4}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;)V

    .line 437
    .local v0, msg:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 438
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 439
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02091c

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 440
    .local v2, thumb:Landroid/graphics/Bitmap;
    invoke-static {v2, v8, v8, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 441
    .local v3, thumbBmp:Landroid/graphics/Bitmap;
    invoke-static {v3, v5}, Lcom/tencent/mm/sdk/platformtools/Util;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v6

    iput-object v6, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    .line 443
    new-instance v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    .line 444
    .local v1, req:Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    const-string v6, "webpage"

    invoke-direct {p0, v6}, Lcom/miantan/myoface/ShareAppActivity;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 445
    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    .line 446
    if-lez p1, :cond_0

    :goto_0
    iput v5, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    .line 447
    iget-object v5, p0, Lcom/miantan/myoface/ShareAppActivity;->wx_api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v5, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    .line 448
    return-void

    .line 446
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
