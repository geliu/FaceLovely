.class public final Lcom/umeng/socialize/controller/impl/a;
.super Ljava/lang/Object;
.source "AuthServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/AuthService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/controller/impl/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/umeng/socialize/bean/SocializeEntity;

.field b:Lcom/umeng/socialize/bean/SocializeConfig;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->b:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 61
    const-class v0, Lcom/umeng/socialize/controller/impl/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->e:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 68
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->b:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 278
    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getListener(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 280
    new-instance v1, Lcom/umeng/socialize/controller/impl/d;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/umeng/socialize/controller/impl/d;-><init>(Lcom/umeng/socialize/controller/impl/a;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 346
    return-object v1
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Lcom/umeng/socialize/sso/UMSsoHandler;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 424
    const/16 v1, 0xc

    .line 423
    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 426
    new-instance v4, Lcom/umeng/socialize/controller/impl/f;

    invoke-direct {v4, p0, p3, p1}, Lcom/umeng/socialize/controller/impl/f;-><init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Landroid/app/Activity;)V

    .line 468
    new-instance v0, Lcom/umeng/socialize/controller/impl/a$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/controller/impl/a$a;-><init>(Lcom/umeng/socialize/controller/impl/a;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Lcom/umeng/socialize/sso/UMSsoHandler;)V

    .line 471
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 472
    :cond_0
    invoke-static {p1}, Lcom/umeng/socialize/utils/SocializeUtils;->getPlatformSecret(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    .line 473
    invoke-static {p1}, Lcom/umeng/socialize/utils/SocializeUtils;->getPlatformKey(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    .line 476
    :cond_1
    invoke-direct {p0, p2}, Lcom/umeng/socialize/controller/impl/a;->a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p2}, Lcom/umeng/socialize/controller/impl/a;->b(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 477
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->b:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v3

    .line 478
    const-string v1, ""

    .line 479
    const-string v2, ""

    .line 480
    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p2, v4, :cond_2

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v4, :cond_5

    .line 481
    :cond_2
    iget-object v1, v3, Lcom/umeng/socialize/sso/UMSsoHandler;->mExtraData:Ljava/util/Map;

    const-string v2, "wx_appid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 482
    iget-object v2, v3, Lcom/umeng/socialize/sso/UMSsoHandler;->mExtraData:Ljava/util/Map;

    const-string v3, "wx_secret"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 483
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v4, "wx_appid"

    invoke-virtual {v3, v4, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v4, "wx_secret"

    invoke-virtual {v3, v4, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 493
    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 494
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 496
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 497
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/umeng/socialize/utils/SocializeUtils;->savePlatformKey(Landroid/content/Context;Ljava/util/Map;)V

    .line 500
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/umeng/socialize/utils/SocializeUtils;->savePlatformSecret(Landroid/content/Context;Ljava/util/Map;)V

    .line 501
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    invoke-direct {p0, p1, v1, v0}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Ljava/util/Map;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V

    .line 517
    :goto_1
    return-void

    .line 485
    :cond_5
    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p2, v4, :cond_6

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v4, :cond_3

    .line 486
    :cond_6
    iget-object v1, v3, Lcom/umeng/socialize/sso/UMSsoHandler;->mExtraData:Ljava/util/Map;

    const-string v2, "qzone_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 487
    iget-object v2, v3, Lcom/umeng/socialize/sso/UMSsoHandler;->mExtraData:Ljava/util/Map;

    const-string v3, "qzone_secret"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 488
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v4, "qzone_id"

    invoke-virtual {v3, v4, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v4, "qzone_secret"

    invoke-virtual {v3, v4, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_7
    invoke-direct {p0, p2}, Lcom/umeng/socialize/controller/impl/a;->b(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 508
    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onStart()V

    .line 509
    const/16 v1, 0xc8

    .line 510
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    .line 509
    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    .line 511
    invoke-static {}, Lcom/umeng/socialize/utils/ListenerUtils;->createDataListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    move-result-object v0

    .line 513
    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/a;->getPlatformKeys(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V

    goto :goto_1

    .line 515
    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/a;->getPlatformKeys(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 883
    const-string v0, "usid"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 884
    const-string v0, "access_key"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 885
    const-string v0, "access_secret"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 886
    const-string v0, "access_token"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 887
    const-string v0, "uid"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 890
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v2, :cond_0

    .line 891
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 892
    const-string v2, "uid"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 897
    const-string v1, "openid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 900
    :cond_1
    const-string v2, "expires_in"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 902
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 903
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 904
    const-string v5, "expires_in"

    invoke-virtual {v2, v5}, Lcom/umeng/socialize/bean/SocializeEntity;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 906
    :cond_2
    invoke-static {p1, p2, v2}, Lcom/umeng/socialize/utils/OauthHelper;->saveTokenExpiresIn(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 908
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 909
    invoke-static {p1, p2, v3, v1}, Lcom/umeng/socialize/utils/OauthHelper;->saveAccessToken(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 913
    invoke-static {p1, p2, v0}, Lcom/umeng/socialize/utils/OauthHelper;->setUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 916
    :cond_4
    if-eqz p2, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 917
    const-string v0, "null"

    invoke-static {p1, p2, v4, v0}, Lcom/umeng/socialize/utils/OauthHelper;->saveAccessToken(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :cond_5
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p2, v0, :cond_6

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_7

    .line 922
    :cond_6
    const-string v0, "refresh_token"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-static {p1, p2, v0}, Lcom/umeng/socialize/utils/OauthHelper;->saveRefreshToken(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 925
    const-string v0, "refresh_token_expires"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 926
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/socialize/utils/OauthHelper;->saveRefreshTokenExpires(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;J)V

    .line 928
    :cond_7
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 545
    new-instance v0, Lcom/umeng/socialize/controller/impl/g;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/umeng/socialize/controller/impl/g;-><init>(Lcom/umeng/socialize/controller/impl/a;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;Ljava/util/Map;)V

    .line 566
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/g;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 567
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/a;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 881
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/a;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/a;->b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/a;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->b:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getPlatformMap()Ljava/util/Map;

    move-result-object v0

    .line 129
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 130
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->isSupportAuthorization()Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    if-eqz v0, :cond_0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mShowWord:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u4e0d\u652f\u6301\u6388\u6743."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    move v0, v1

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1
    .parameter

    .prologue
    .line 526
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    .line 527
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    .line 528
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    .line 529
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p1, v0, :cond_1

    .line 530
    :cond_0
    const/4 v0, 0x1

    .line 532
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 777
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/a;->c(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    return v0
.end method

.method private a([Lcom/umeng/socialize/bean/SHARE_MEDIA;)[Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 980
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 981
    :cond_0
    new-array v0, v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 1000
    :goto_0
    return-object v0

    .line 984
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 985
    array-length v2, p1

    :goto_1
    if-lt v0, v2, :cond_3

    .line 994
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 995
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 996
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->e:Ljava/lang/String;

    const-string v2, "facebook does\'t support to Token expires check"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 999
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_0

    .line 985
    :cond_3
    aget-object v3, p1, v0

    .line 986
    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->isSupportAuthorization()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 987
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 989
    :cond_4
    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/a;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 990
    const-string v3, "does\'t support to Token expires check"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 989
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic b(Lcom/umeng/socialize/controller/impl/a;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 359
    const/16 v1, 0x12

    .line 358
    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 360
    new-instance v0, Lcom/umeng/socialize/controller/impl/e;

    invoke-direct {v0, p0, p3, p1}, Lcom/umeng/socialize/controller/impl/e;-><init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Landroid/content/Context;)V

    .line 398
    new-instance v1, Lcom/umeng/socialize/view/j;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2, v0}, Lcom/umeng/socialize/view/j;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 400
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 401
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v1, p1}, Lcom/umeng/socialize/view/j;->setOwnerActivity(Landroid/app/Activity;)V

    .line 403
    :cond_0
    if-eqz v0, :cond_1

    .line 404
    invoke-interface {v0, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 407
    :cond_1
    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->safeShowDialog(Landroid/app/Dialog;)V

    .line 408
    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/controller/impl/a;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 252
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v1, :cond_1

    .line 253
    invoke-static {p1}, Lcom/umeng/socialize/bean/SocializeConfig;->isSupportSinaSSO(Landroid/content/Context;)Z

    move-result v0

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v1, :cond_2

    .line 255
    invoke-static {p1}, Lcom/umeng/socialize/bean/SocializeConfig;->isSupportTencentWBSSO(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 256
    :cond_2
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v1, :cond_4

    .line 257
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->b:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 258
    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v1

    .line 257
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v0

    .line 259
    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/umeng/socialize/sso/UMSsoHandler;->isClientInstalled()Z

    move-result v0

    goto :goto_0

    .line 260
    :cond_4
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v1, :cond_0

    goto :goto_0
.end method

.method private b(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 2
    .parameter

    .prologue
    .line 576
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/umeng/socialize/controller/impl/a;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    return-object v0
.end method

.method private c(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1
    .parameter

    .prologue
    .line 778
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    .line 779
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    .line 780
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p1, v0, :cond_1

    .line 781
    :cond_0
    const/4 v0, 0x1

    .line 783
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 855
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/UMToken;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 856
    new-instance v0, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v0}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    .line 857
    new-instance v1, Lcom/umeng/socialize/net/g;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2}, Lcom/umeng/socialize/net/g;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/UMToken;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    .line 856
    check-cast v0, Lcom/umeng/socialize/net/h;

    .line 859
    if-eqz v0, :cond_1

    .line 860
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/umeng/socialize/net/h;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v2, "user_id"

    .line 862
    iget-object v3, v0, Lcom/umeng/socialize/net/h;->a:Ljava/lang/String;

    .line 861
    invoke-virtual {v1, v2, v3}, Lcom/umeng/socialize/bean/SocializeEntity;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v2, "sina_expires_in"

    .line 864
    iget-object v3, v0, Lcom/umeng/socialize/net/h;->b:Ljava/lang/String;

    .line 863
    invoke-virtual {v1, v2, v3}, Lcom/umeng/socialize/bean/SocializeEntity;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_0
    iget v0, v0, Lcom/umeng/socialize/net/h;->mStCode:I

    .line 871
    :goto_0
    return v0

    .line 868
    :cond_1
    const/16 v0, -0x66

    goto :goto_0

    .line 871
    :cond_2
    const/16 v0, -0x69

    goto :goto_0
.end method

.method public checkTokenExpired(Landroid/content/Context;[Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 941
    invoke-direct {p0, p2}, Lcom/umeng/socialize/controller/impl/a;->a([Lcom/umeng/socialize/bean/SHARE_MEDIA;)[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 943
    new-instance v1, Lcom/umeng/socialize/controller/impl/j;

    invoke-direct {v1, p0, p3, p1, v0}, Lcom/umeng/socialize/controller/impl/j;-><init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;Landroid/content/Context;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 969
    invoke-virtual {v1}, Lcom/umeng/socialize/controller/impl/j;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 970
    return-void
.end method

.method public deleteOauth(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->b:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 152
    const v1, 0xface

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0, v1, p2, p3}, Lcom/umeng/socialize/sso/UMSsoHandler;->deleteAuthorization(Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    .line 196
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v0, Lcom/umeng/socialize/controller/impl/c;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/umeng/socialize/controller/impl/c;-><init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 194
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/c;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    goto :goto_0
.end method

.method public doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-static {p1, p2}, Lcom/umeng/socialize/utils/SocializeUtils;->platformCheck(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    if-nez p3, :cond_2

    .line 215
    invoke-static {}, Lcom/umeng/socialize/utils/ListenerUtils;->creAuthListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object p3

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 219
    const/4 v1, 0x3

    .line 218
    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->b:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "######## doOauthVerify -->  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    if-eqz v1, :cond_3

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/impl/a;->b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    invoke-static {p2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 238
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Lcom/umeng/socialize/sso/UMSsoHandler;)V

    goto :goto_0

    .line 240
    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/controller/impl/a;->b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0
.end method

.method public getPlatformKeys(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/umeng/socialize/controller/impl/b;

    invoke-direct {v0, p0, p2, p1}, Lcom/umeng/socialize/controller/impl/b;-><init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;Landroid/content/Context;)V

    .line 115
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/b;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 116
    return-void
.end method

.method public uploadToken(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 800
    new-instance v0, Lcom/umeng/socialize/controller/impl/h;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/umeng/socialize/controller/impl/h;-><init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Lcom/umeng/socialize/bean/UMToken;Landroid/content/Context;)V

    .line 823
    new-instance v1, Lcom/umeng/socialize/controller/impl/i;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/umeng/socialize/controller/impl/i;-><init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)V

    .line 844
    invoke-virtual {v1}, Lcom/umeng/socialize/controller/impl/i;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 845
    return-void
.end method
