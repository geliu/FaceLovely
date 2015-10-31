.class public Lcom/miantan/myoface/ShareHelperActivity;
.super Landroid/app/Activity;
.source "ShareHelperActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miantan/myoface/ShareHelperActivity$AvatarBaseUiListener;,
        Lcom/miantan/myoface/ShareHelperActivity$BaseUiListener;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mAppname:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mButtonCancle:Landroid/widget/Button;

.field private mButtonFacebook:Landroid/widget/Button;

.field private mButtonInstagram:Landroid/widget/Button;

.field private mButtonKakaoTalk:Landroid/widget/Button;

.field private mButtonLine:Landroid/widget/Button;

.field private mButtonPengyouquan:Landroid/widget/Button;

.field private mButtonQQHaoYou:Landroid/widget/Button;

.field private mButtonQQtouxiang:Landroid/widget/Button;

.field private mButtonQZONE:Landroid/widget/Button;

.field private mButtonSinaWeibo:Landroid/widget/Button;

.field private mButtonTumblr:Landroid/widget/Button;

.field private mButtonTwitter:Landroid/widget/Button;

.field private mButtonWeixin:Landroid/widget/Button;

.field private mButtonWhatsapp:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field public mTencent:Lcom/tencent/tauth/Tencent;

.field private mViewSending:Landroid/view/View;

.field private mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

.field private music_save:I

.field private music_shake:I

.field private music_share:I

.field private sp_save:Landroid/media/SoundPool;

.field private sp_shake:Landroid/media/SoundPool;

.field private sp_share:Landroid/media/SoundPool;

.field private strfrom:Ljava/lang/String;

.field private wx_api:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    const-string v0, "FaceQ"

    iput-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mAppname:Ljava/lang/String;

    .line 90
    const-string v0, "ShareHelperActivity"

    iput-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    .line 814
    new-instance v0, Lcom/miantan/myoface/ShareHelperActivity$1;

    invoke-direct {v0, p0}, Lcom/miantan/myoface/ShareHelperActivity$1;-><init>(Lcom/miantan/myoface/ShareHelperActivity;)V

    iput-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method private DoCheckNetwork()V
    .locals 3

    .prologue
    .line 933
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/ShareHelperActivity;->CheckisNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    .line 934
    sget-boolean v2, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v2, :cond_0

    .line 936
    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 937
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 938
    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 942
    :catch_0
    move-exception v0

    .line 944
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private DoCheckSharePrepare()V
    .locals 3

    .prologue
    .line 885
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/ShareHelperActivity;->CheckisNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    .line 886
    sget-boolean v2, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v2, :cond_1

    .line 889
    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 890
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 891
    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 895
    :catch_0
    move-exception v0

    .line 897
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 904
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/ShareHelperActivity;->CheckisWXInstalled(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miantan/myoface/BasicData;->isWXInstalled:Z

    .line 905
    sget-boolean v2, Lcom/miantan/myoface/BasicData;->isWXInstalled:Z

    if-nez v2, :cond_0

    .line 908
    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 909
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v2, 0x67

    iput v2, v1, Landroid/os/Message;->what:I

    .line 910
    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 914
    .end local v1           #msg:Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 916
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private LoginAndStartAvatar()V
    .locals 3

    .prologue
    .line 1162
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v1}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1164
    new-instance v0, Lcom/miantan/myoface/ShareHelperActivity$4;

    invoke-direct {v0, p0}, Lcom/miantan/myoface/ShareHelperActivity$4;-><init>(Lcom/miantan/myoface/ShareHelperActivity;)V

    .line 1175
    .local v0, listener:Lcom/tencent/tauth/IUiListener;
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    const-string v2, "all"

    invoke-virtual {v1, p0, v2, v0}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    .line 1178
    .end local v0           #listener:Lcom/tencent/tauth/IUiListener;
    :cond_0
    return-void
.end method

.method private ShowToast(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 737
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 738
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x51

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 739
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 740
    return-void
.end method

.method static synthetic access$0(Lcom/miantan/myoface/ShareHelperActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 735
    invoke-direct {p0, p1}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/miantan/myoface/ShareHelperActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mViewSending:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/miantan/myoface/ShareHelperActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/miantan/myoface/ShareHelperActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 727
    invoke-direct {p0, p1}, Lcom/miantan/myoface/ShareHelperActivity;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/miantan/myoface/ShareHelperActivity;)Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->wx_api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    return-object v0
.end method

.method static synthetic access$5(Lcom/miantan/myoface/ShareHelperActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/miantan/myoface/ShareHelperActivity;)Landroid/media/SoundPool;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->sp_share:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$7(Lcom/miantan/myoface/ShareHelperActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 103
    iget v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->music_share:I

    return v0
.end method

.method static synthetic access$8(Lcom/miantan/myoface/ShareHelperActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 728
    if-nez p1, :cond_0

    .line 729
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 731
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

.method private doSetAvatarByPath(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 1111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1112
    .local v0, params:Landroid/os/Bundle;
    const-string v1, "picture"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    new-instance v2, Lcom/miantan/myoface/ShareHelperActivity$AvatarBaseUiListener;

    invoke-direct {v2, p0}, Lcom/miantan/myoface/ShareHelperActivity$AvatarBaseUiListener;-><init>(Lcom/miantan/myoface/ShareHelperActivity;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/tencent/tauth/Tencent;->setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 1120
    return-void
.end method

.method private doShareTo360LDX(Ljava/lang/String;)V
    .locals 8
    .parameter "path"

    .prologue
    .line 703
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 704
    .local v4, imageFile:Ljava/io/File;
    const-string v0, "com.qihoo360.mobilesafe"

    .line 706
    .local v0, PKG_NAME:Ljava/lang/String;
    const-string v1, "com.qihoo.action.CALLSHOW_PORTRAIT"

    .line 707
    .local v1, SHARE_CALLSHOW_ACTION:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    .local v5, intent:Landroid/content/Intent;
    const-string v6, "image/*"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v6, "com.qihoo360.mobilesafe"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const-string v6, "com.qihoo.action.CALLSHOW_PORTRAIT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const-string v6, "android.intent.extra.STREAM"

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 713
    const-string v6, "\u8bbe\u7f6e\u4e3a360\u6765\u7535\u79c0"

    invoke-static {v5, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 714
    .local v2, chooserIntent:Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 722
    :goto_0
    return-void

    .line 718
    :cond_0
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/miantan/myoface/ShareHelperActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 719
    :catch_0
    move-exception v3

    .line 720
    .local v3, ex:Landroid/content/ActivityNotFoundException;
    const-string v6, "Can\'t find share component to share"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private doShareToFB(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 1288
    const-string v2, "com.umeng.share"

    invoke-static {v2}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v1

    .line 1293
    .local v1, mController:Lcom/umeng/socialize/controller/UMSocialService;
    invoke-interface {v1}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string v4, "com.umeng.share"

    const/4 v5, 0x1

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/umeng/socialize/bean/SocializeConfig;->supportAppPlatform(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)V

    .line 1295
    new-instance v0, Lcom/umeng/socialize/media/UMImage;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v2}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 1296
    .local v0, localImage:Lcom/umeng/socialize/media/UMImage;
    invoke-interface {v1, v0}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    .line 1299
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v3, Lcom/miantan/myoface/ShareHelperActivity$5;

    invoke-direct {v3, p0}, Lcom/miantan/myoface/ShareHelperActivity$5;-><init>(Lcom/miantan/myoface/ShareHelperActivity;)V

    invoke-interface {v1, p0, v2, v3}, Lcom/umeng/socialize/controller/UMSocialService;->directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1316
    return-void
.end method

.method private doShareToInstagram(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 1346
    const-string v2, "com.umeng.share"

    invoke-static {v2}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v1

    .line 1347
    .local v1, mController:Lcom/umeng/socialize/controller/UMSocialService;
    new-instance v0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;-><init>(Landroid/content/Context;)V

    .line 1348
    .local v0, instagramHandler:Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;
    invoke-virtual {v0}, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->addToSocialSDK()V

    .line 1355
    new-instance v2, Lcom/umeng/socialize/media/UMImage;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    .line 1358
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->INSTAGRAM:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v3, Lcom/miantan/myoface/ShareHelperActivity$6;

    invoke-direct {v3, p0}, Lcom/miantan/myoface/ShareHelperActivity$6;-><init>(Lcom/miantan/myoface/ShareHelperActivity;)V

    invoke-interface {v1, p0, v2, v3}, Lcom/umeng/socialize/controller/UMSocialService;->directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1376
    return-void
.end method

.method private doShareToKakaoTalk(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 1636
    const-string v3, "com.umeng.share"

    invoke-static {v3}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v2

    .line 1639
    .local v2, mController:Lcom/umeng/socialize/controller/UMSocialService;
    new-instance v0, Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;-><init>(Landroid/content/Context;)V

    .line 1640
    .local v0, kakaohandler:Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;
    invoke-virtual {v0}, Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;->addToSocialSDK()V

    .line 1644
    new-instance v1, Lcom/umeng/socialize/media/UMImage;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, v3}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 1645
    .local v1, localImage:Lcom/umeng/socialize/media/UMImage;
    invoke-interface {v2, v1}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    .line 1648
    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->KAKAO:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v4, Lcom/miantan/myoface/ShareHelperActivity$11;

    invoke-direct {v4, p0}, Lcom/miantan/myoface/ShareHelperActivity$11;-><init>(Lcom/miantan/myoface/ShareHelperActivity;)V

    invoke-interface {v2, p0, v3, v4}, Lcom/umeng/socialize/controller/UMSocialService;->directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1666
    return-void
.end method

.method private doShareToLine(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 1519
    const-string v3, "com.umeng.share"

    invoke-static {v3}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v2

    .line 1522
    .local v2, mController:Lcom/umeng/socialize/controller/UMSocialService;
    new-instance v0, Lcom/umeng/socialize/line/controller/UMLineHandler;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/line/controller/UMLineHandler;-><init>(Landroid/content/Context;)V

    .line 1523
    .local v0, lineHandler:Lcom/umeng/socialize/line/controller/UMLineHandler;
    invoke-virtual {v0}, Lcom/umeng/socialize/line/controller/UMLineHandler;->addToSocialSDK()V

    .line 1527
    new-instance v1, Lcom/umeng/socialize/media/UMImage;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, v3}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 1528
    .local v1, localImage:Lcom/umeng/socialize/media/UMImage;
    invoke-interface {v2, v1}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    .line 1531
    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LINE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v4, Lcom/miantan/myoface/ShareHelperActivity$9;

    invoke-direct {v4, p0}, Lcom/miantan/myoface/ShareHelperActivity$9;-><init>(Lcom/miantan/myoface/ShareHelperActivity;)V

    invoke-interface {v2, p0, v3, v4}, Lcom/umeng/socialize/controller/UMSocialService;->directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1549
    return-void
.end method

.method private doShareToQQ(Landroid/os/Bundle;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 1770
    const-string v2, "1101118379"

    invoke-static {v2, p0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v1

    .line 1772
    .local v1, tencent:Lcom/tencent/tauth/Tencent;
    move-object v0, p0

    .line 1773
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/miantan/myoface/ShareHelperActivity$12;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/miantan/myoface/ShareHelperActivity$12;-><init>(Lcom/miantan/myoface/ShareHelperActivity;Lcom/tencent/tauth/Tencent;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1800
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1801
    return-void
.end method

.method private doShareToQQHaoYouByPath(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 1670
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1672
    .local v2, params:Landroid/os/Bundle;
    const-string v4, "imageLocalUrl"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const-string v0, "MYOTee"

    .line 1675
    .local v0, appName:Ljava/lang/String;
    const/4 v3, 0x5

    .line 1676
    .local v3, shareType:I
    const/4 v1, 0x0

    .line 1678
    .local v1, mExtarFlag:I
    const-string v4, "appName"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    const-string v4, "req_type"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1680
    const-string v4, "cflag"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1690
    invoke-direct {p0, v2}, Lcom/miantan/myoface/ShareHelperActivity;->doShareToQQ(Landroid/os/Bundle;)V

    .line 1691
    return-void
.end method

.method private doShareToQZONEByPath(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 1746
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1748
    .local v2, params:Landroid/os/Bundle;
    const-string v4, "imageLocalUrl"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    const-string v0, "MYOTee"

    .line 1751
    .local v0, appName:Ljava/lang/String;
    const/4 v3, 0x5

    .line 1752
    .local v3, shareType:I
    const/4 v1, 0x0

    .line 1753
    .local v1, mExtarFlag:I
    or-int/lit8 v1, v1, 0x1

    .line 1755
    const-string v4, "appName"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const-string v4, "req_type"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1757
    const-string v4, "cflag"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1767
    invoke-direct {p0, v2}, Lcom/miantan/myoface/ShareHelperActivity;->doShareToQQ(Landroid/os/Bundle;)V

    .line 1768
    return-void
.end method

.method private doShareToTumblr(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 1578
    const-string v3, "com.umeng.share"

    invoke-static {v3}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v1

    .line 1581
    .local v1, mController:Lcom/umeng/socialize/controller/UMSocialService;
    new-instance v2, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;-><init>(Landroid/content/Context;)V

    .line 1582
    .local v2, tumblrHandler:Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;
    invoke-virtual {v2}, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->addToSocialSDK()V

    .line 1586
    new-instance v0, Lcom/umeng/socialize/media/UMImage;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v3}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 1587
    .local v0, localImage:Lcom/umeng/socialize/media/UMImage;
    invoke-interface {v1, v0}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    .line 1590
    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TUMBLR:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v4, Lcom/miantan/myoface/ShareHelperActivity$10;

    invoke-direct {v4, p0}, Lcom/miantan/myoface/ShareHelperActivity$10;-><init>(Lcom/miantan/myoface/ShareHelperActivity;)V

    invoke-interface {v1, p0, v3, v4}, Lcom/umeng/socialize/controller/UMSocialService;->directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1608
    return-void
.end method

.method private doShareToTwitter(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 1405
    const-string v2, "com.umeng.share"

    invoke-static {v2}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v1

    .line 1408
    .local v1, mController:Lcom/umeng/socialize/controller/UMSocialService;
    invoke-interface {v1}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string v4, "com.umeng.share"

    const/4 v5, 0x1

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/umeng/socialize/bean/SocializeConfig;->supportAppPlatform(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)V

    .line 1411
    new-instance v0, Lcom/umeng/socialize/media/UMImage;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v2}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 1412
    .local v0, localImage:Lcom/umeng/socialize/media/UMImage;
    invoke-interface {v1, v0}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    .line 1414
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v3, Lcom/miantan/myoface/ShareHelperActivity$7;

    invoke-direct {v3, p0}, Lcom/miantan/myoface/ShareHelperActivity$7;-><init>(Lcom/miantan/myoface/ShareHelperActivity;)V

    invoke-interface {v1, p0, v2, v3}, Lcom/umeng/socialize/controller/UMSocialService;->directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1433
    return-void
.end method

.method private doShareToWhatsapp(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 1461
    const-string v3, "com.umeng.share"

    invoke-static {v3}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v1

    .line 1464
    .local v1, mController:Lcom/umeng/socialize/controller/UMSocialService;
    new-instance v2, Lcom/umeng/socialize/whatsapp/controller/UMWhatsAppHandler;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/whatsapp/controller/UMWhatsAppHandler;-><init>(Landroid/content/Context;)V

    .line 1465
    .local v2, whatsappHandler:Lcom/umeng/socialize/whatsapp/controller/UMWhatsAppHandler;
    invoke-virtual {v2}, Lcom/umeng/socialize/whatsapp/controller/UMWhatsAppHandler;->addToSocialSDK()V

    .line 1469
    new-instance v0, Lcom/umeng/socialize/media/UMImage;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v3}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 1470
    .local v0, localImage:Lcom/umeng/socialize/media/UMImage;
    invoke-interface {v1, v0}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    .line 1473
    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WHATSAPP:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v4, Lcom/miantan/myoface/ShareHelperActivity$8;

    invoke-direct {v4, p0}, Lcom/miantan/myoface/ShareHelperActivity$8;-><init>(Lcom/miantan/myoface/ShareHelperActivity;)V

    invoke-interface {v1, p0, v3, v4}, Lcom/umeng/socialize/controller/UMSocialService;->directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1491
    return-void
.end method

.method private getImageObj()Lcom/sina/weibo/sdk/api/ImageObject;
    .locals 2

    .prologue
    .line 1879
    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 1884
    .local v0, imageObject:Lcom/sina/weibo/sdk/api/ImageObject;
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageObject(Landroid/graphics/Bitmap;)V

    .line 1889
    return-object v0
.end method

.method private shareTo360LDX()V
    .locals 5

    .prologue
    .line 687
    const/4 v2, 0x0

    .line 688
    .local v2, rv:I
    const-string v0, "test123.png"

    .line 689
    .local v0, fileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getSDPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->saveImage(Ljava/lang/String;Z)I

    move-result v2

    .line 691
    if-nez v2, :cond_0

    .line 693
    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->doShareTo360LDX(Ljava/lang/String;)V

    .line 700
    :goto_0
    return-void

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shareToQZONE()V
    .locals 3

    .prologue
    .line 1695
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1696
    .local v0, hasSDCard:Z
    if-nez v0, :cond_0

    .line 1697
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miantan/myoface/ErrorMsg;->getErrorMsg(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    .line 1701
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->startShareToQZONE()V

    .line 1707
    return-void
.end method


# virtual methods
.method public CheckisInstagramInstalled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 1000
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1001
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 1003
    .local v2, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_0

    .line 1004
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .end local v0           #i:I
    :cond_0
    move v4, v5

    .line 1012
    :goto_1
    return v4

    .line 1005
    .restart local v0       #i:I
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1007
    .local v3, pn:Ljava/lang/String;
    const-string v4, "com.instagram.android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1008
    const/4 v4, 0x1

    goto :goto_1

    .line 1004
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public CheckisKakaoInstalled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 1065
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1066
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 1068
    .local v2, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_0

    .line 1069
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .end local v0           #i:I
    :cond_0
    move v4, v5

    .line 1077
    :goto_1
    return v4

    .line 1070
    .restart local v0       #i:I
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1072
    .local v3, pn:Ljava/lang/String;
    const-string v4, "com.kakao.talk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1073
    const/4 v4, 0x1

    goto :goto_1

    .line 1069
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public CheckisLineInstalled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 1033
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1034
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 1036
    .local v2, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_0

    .line 1037
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .end local v0           #i:I
    :cond_0
    move v4, v5

    .line 1045
    :goto_1
    return v4

    .line 1038
    .restart local v0       #i:I
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1040
    .local v3, pn:Ljava/lang/String;
    const-string v4, "jp.naver.line.android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1041
    const/4 v4, 0x1

    goto :goto_1

    .line 1037
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public CheckisNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 954
    if-eqz p1, :cond_0

    .line 956
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 955
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 957
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 958
    .local v1, mNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 959
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 962
    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #mNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public CheckisTumblrInstalled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 1049
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1050
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 1052
    .local v2, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_0

    .line 1053
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .end local v0           #i:I
    :cond_0
    move v4, v5

    .line 1061
    :goto_1
    return v4

    .line 1054
    .restart local v0       #i:I
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1056
    .local v3, pn:Ljava/lang/String;
    const-string v4, "com.tumblr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1057
    const/4 v4, 0x1

    goto :goto_1

    .line 1053
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public CheckisWXInstalled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 966
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 967
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 969
    .local v2, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_0

    .line 970
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .end local v0           #i:I
    :cond_0
    move v4, v5

    .line 978
    :goto_1
    return v4

    .line 971
    .restart local v0       #i:I
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 973
    .local v3, pn:Ljava/lang/String;
    const-string v4, "com.tencent.mm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 974
    const/4 v4, 0x1

    goto :goto_1

    .line 970
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public CheckisWhatsappInstalled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 1017
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1018
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 1020
    .local v2, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_0

    .line 1021
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .end local v0           #i:I
    :cond_0
    move v4, v5

    .line 1029
    :goto_1
    return v4

    .line 1022
    .restart local v0       #i:I
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1024
    .local v3, pn:Ljava/lang/String;
    const-string v4, "com.whatsapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1025
    const/4 v4, 0x1

    goto :goto_1

    .line 1021
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public downloadWeiboApp()V
    .locals 2

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    if-nez v0, :cond_1

    .line 1832
    :cond_0
    :goto_0
    return-void

    .line 1824
    :cond_1
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->isWeiboAppInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    new-instance v1, Lcom/miantan/myoface/ShareHelperActivity$13;

    invoke-direct {v1, p0}, Lcom/miantan/myoface/ShareHelperActivity$13;-><init>(Lcom/miantan/myoface/ShareHelperActivity;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerWeiboDownloadListener(Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;)V

    goto :goto_0
.end method

.method public getSDPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 744
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 746
    .local v0, hasSDCard:Z
    if-eqz v0, :cond_0

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->mAppname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 752
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isInstallWeibo()Z
    .locals 1

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    if-nez v0, :cond_0

    .line 1808
    const/4 v0, 0x0

    .line 1810
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->isWeiboAppInstalled()Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1913
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1915
    const-string v5, "null"

    .line 1917
    .local v5, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1918
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1919
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 1920
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "result size:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1921
    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_2

    .line 1928
    .end local v0           #b:Landroid/os/Bundle;
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    const-string v7, "TestData"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onActivityResult   "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    const-string v7, "com.umeng.share"

    sget-object v8, Lcom/umeng/socialize/bean/RequestType;->SOCIAL:Lcom/umeng/socialize/bean/RequestType;

    invoke-static {v7, v8}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;Lcom/umeng/socialize/bean/RequestType;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v1

    .line 1932
    .local v1, controller:Lcom/umeng/socialize/controller/UMSocialService;
    invoke-interface {v1}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v6

    .line 1933
    .local v6, ssoHandler:Lcom/umeng/socialize/sso/UMSsoHandler;
    if-eqz v6, :cond_1

    .line 1934
    invoke-virtual {v6, p1, p2, p3}, Lcom/umeng/socialize/sso/UMSsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 1935
    const-string v7, ""

    const-string v8, "#### ssoHandler.authorizeCallBack"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_1
    return-void

    .line 1921
    .end local v1           #controller:Lcom/umeng/socialize/controller/UMSocialService;
    .end local v6           #ssoHandler:Lcom/umeng/socialize/sso/UMSsoHandler;
    .restart local v0       #b:Landroid/os/Bundle;
    .restart local v3       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1922
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1923
    .local v4, object:Ljava/lang/Object;
    const-string v8, "TestData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Result:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1926
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #object:Ljava/lang/Object;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 683
    :goto_0
    :pswitch_0
    return-void

    .line 291
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BtnShareWX"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->DoCheckSharePrepare()V

    .line 297
    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isWXInstalled:Z

    if-nez v1, :cond_1

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnClick|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/miantan/myoface/BasicData;->isWXInstalled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mBitmap==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/miantan/myoface/ShareHelperActivity$2;

    invoke-direct {v2, p0}, Lcom/miantan/myoface/ShareHelperActivity$2;-><init>(Lcom/miantan/myoface/ShareHelperActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 370
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 378
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BtnSharePYQ"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->DoCheckSharePrepare()V

    .line 382
    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isWXInstalled:Z

    if-nez v1, :cond_4

    .line 384
    :cond_3
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnClick|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/miantan/myoface/BasicData;->isWXInstalled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 394
    :cond_4
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    .line 396
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mBitmap==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 401
    :cond_5
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/miantan/myoface/ShareHelperActivity$3;

    invoke-direct {v2, p0}, Lcom/miantan/myoface/ShareHelperActivity$3;-><init>(Lcom/miantan/myoface/ShareHelperActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 460
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 467
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BtnShareQQTX"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 468
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->DoCheckNetwork()V

    .line 469
    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v1, :cond_6

    .line 471
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnClick|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 475
    :cond_6
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->setAvatar()V

    goto/16 :goto_0

    .line 481
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BtnShareQZONE"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->DoCheckNetwork()V

    .line 483
    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v1, :cond_7

    .line 485
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnClick|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 489
    :cond_7
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->shareToQZONE()V

    goto/16 :goto_0

    .line 495
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BtnShareQQHaoYou"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->DoCheckNetwork()V

    .line 497
    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v1, :cond_8

    .line 499
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnClick|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 503
    :cond_8
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->shareToQQHaoyou()V

    goto/16 :goto_0

    .line 510
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BtnShareSinaWeibo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 511
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->DoCheckNetwork()V

    .line 512
    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v1, :cond_9

    .line 514
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnClick|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 518
    :cond_9
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->weiboShare()V

    goto/16 :goto_0

    .line 526
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BtnShareFacebook"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 527
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->DoCheckNetwork()V

    .line 528
    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v1, :cond_a

    .line 530
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnClick|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 534
    :cond_a
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->shareToFacebook()V

    goto/16 :goto_0

    .line 541
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BtnShareTwitter"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 542
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->DoCheckNetwork()V

    .line 543
    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v1, :cond_b

    .line 545
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnClick|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 549
    :cond_b
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->shareToTwitter()V

    goto/16 :goto_0

    .line 556
    :pswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BtnShareInstagram"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 557
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->DoCheckNetwork()V

    .line 558
    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v1, :cond_c

    .line 560
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnClick|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 563
    :cond_c
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/ShareHelperActivity;->CheckisInstagramInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 566
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 567
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x6d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 568
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 572
    .end local v0           #msg:Landroid/os/Message;
    :cond_d
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->shareToInstagram()V

    goto/16 :goto_0

    .line 580
    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BtnShareWhatsapp"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 581
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->DoCheckNetwork()V

    .line 582
    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v1, :cond_e

    .line 584
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnClick|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 587
    :cond_e
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/ShareHelperActivity;->CheckisWhatsappInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 590
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 591
    .restart local v0       #msg:Landroid/os/Message;
    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 592
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 596
    .end local v0           #msg:Landroid/os/Message;
    :cond_f
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->shareToWhatsapp()V

    goto/16 :goto_0

    .line 604
    :pswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BtnShareLine"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 605
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->DoCheckNetwork()V

    .line 606
    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v1, :cond_10

    .line 608
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnClick|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 611
    :cond_10
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/ShareHelperActivity;->CheckisLineInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 614
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 615
    .restart local v0       #msg:Landroid/os/Message;
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 616
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 620
    .end local v0           #msg:Landroid/os/Message;
    :cond_11
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->shareToLine()V

    goto/16 :goto_0

    .line 627
    :pswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BtnShareTumblr"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 628
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->DoCheckNetwork()V

    .line 629
    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v1, :cond_12

    .line 631
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnClick|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 635
    :cond_12
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/ShareHelperActivity;->CheckisTumblrInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 638
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 639
    .restart local v0       #msg:Landroid/os/Message;
    const/16 v1, 0x70

    iput v1, v0, Landroid/os/Message;->what:I

    .line 640
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 645
    .end local v0           #msg:Landroid/os/Message;
    :cond_13
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->shareToTumblr()V

    goto/16 :goto_0

    .line 653
    :pswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BtnShareKakaoTalk"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 654
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->DoCheckNetwork()V

    .line 655
    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v1, :cond_14

    .line 657
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnClick|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 661
    :cond_14
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/ShareHelperActivity;->CheckisKakaoInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 664
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 665
    .restart local v0       #msg:Landroid/os/Message;
    const/16 v1, 0x71

    iput v1, v0, Landroid/os/Message;->what:I

    .line 666
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 669
    .end local v0           #msg:Landroid/os/Message;
    :cond_15
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->shareToKakaoTalk()V

    goto/16 :goto_0

    .line 678
    :pswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BtnShare_BtnClose"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->finish()V

    goto/16 :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0084
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v5, 0x7f03000d

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->setContentView(I)V

    .line 152
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 153
    .local v0, editBundle:Landroid/os/Bundle;
    const-string v5, "from"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, from:Ljava/lang/String;
    const-string v5, "smode0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 156
    const-string v5, "smode1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 158
    const-string v5, "dmode0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 160
    const-string v5, "_Double"

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    .line 172
    :cond_0
    :goto_0
    iput-object p0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 175
    .local v4, window:Landroid/view/Window;
    const v5, 0x7f090004

    invoke-virtual {v4, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 178
    const v5, 0x7f0b008b

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonWeixin:Landroid/widget/Button;

    .line 179
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonWeixin:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v5, 0x7f0b008d

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonPengyouquan:Landroid/widget/Button;

    .line 182
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonPengyouquan:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v5, 0x7f0b008e

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonQQtouxiang:Landroid/widget/Button;

    .line 185
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonQQtouxiang:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v5, 0x7f0b0087

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonQQHaoYou:Landroid/widget/Button;

    .line 188
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonQQHaoYou:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v5, 0x7f0b0089

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonQZONE:Landroid/widget/Button;

    .line 191
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonQZONE:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v5, 0x7f0b0091

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonSinaWeibo:Landroid/widget/Button;

    .line 194
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonSinaWeibo:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v5, 0x7f0b0093

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonFacebook:Landroid/widget/Button;

    .line 197
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonFacebook:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v5, 0x7f0b0095

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonTwitter:Landroid/widget/Button;

    .line 200
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonTwitter:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v5, 0x7f0b0097

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonInstagram:Landroid/widget/Button;

    .line 203
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonInstagram:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v5, 0x7f0b0099

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonWhatsapp:Landroid/widget/Button;

    .line 207
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonWhatsapp:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v5, 0x7f0b009b

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonLine:Landroid/widget/Button;

    .line 210
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonLine:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v5, 0x7f0b009d

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonTumblr:Landroid/widget/Button;

    .line 213
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonTumblr:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v5, 0x7f0b009f

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonKakaoTalk:Landroid/widget/Button;

    .line 216
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonKakaoTalk:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v5, 0x7f0b0084

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonCancle:Landroid/widget/Button;

    .line 220
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mButtonCancle:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v5, 0x7f0b0020

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mViewSending:Landroid/view/View;

    .line 223
    const v5, 0x7f0b0022

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 224
    .local v2, img_loading:Landroid/widget/ImageView;
    const v5, 0x7f04000a

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    check-cast v3, Landroid/view/animation/RotateAnimation;

    .line 225
    .local v3, rotateAnimation:Landroid/view/animation/RotateAnimation;
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 226
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mViewSending:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 229
    invoke-static {}, Lcom/miantan/myoface/BitmapStore;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 232
    const-string v5, "1101118379"

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v5

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 235
    const-string v5, "wx3d0d86a047d2308b"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v5

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->wx_api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 236
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->wx_api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v6, "wx3d0d86a047d2308b"

    invoke-interface {v5, v6}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 239
    new-instance v5, Landroid/media/SoundPool;

    invoke-direct {v5, v9, v7, v8}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->sp_save:Landroid/media/SoundPool;

    .line 240
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->sp_save:Landroid/media/SoundPool;

    const v6, 0x7f050002

    invoke-virtual {v5, p0, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->music_save:I

    .line 242
    new-instance v5, Landroid/media/SoundPool;

    invoke-direct {v5, v9, v7, v8}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->sp_share:Landroid/media/SoundPool;

    .line 243
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->sp_share:Landroid/media/SoundPool;

    const v6, 0x7f050004

    invoke-virtual {v5, p0, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->music_share:I

    .line 245
    new-instance v5, Landroid/media/SoundPool;

    invoke-direct {v5, v9, v7, v8}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->sp_shake:Landroid/media/SoundPool;

    .line 246
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->sp_shake:Landroid/media/SoundPool;

    const v6, 0x7f050003

    invoke-virtual {v5, p0, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->music_shake:I

    .line 248
    const-string v5, "2822384978"

    invoke-static {p0, v5}, Lcom/sina/weibo/sdk/api/share/WeiboShareSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v5

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    .line 249
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v5}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->isWeiboAppInstalled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    iget-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v5}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerApp()Z

    .line 253
    :cond_1
    return-void

    .line 162
    .end local v2           #img_loading:Landroid/widget/ImageView;
    .end local v3           #rotateAnimation:Landroid/view/animation/RotateAnimation;
    .end local v4           #window:Landroid/view/Window;
    :cond_2
    const-string v5, "dmode1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 164
    const-string v5, "_Double"

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    goto/16 :goto_0

    .line 166
    :cond_3
    const-string v5, "dmode2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    const-string v5, "_Double"

    iput-object v5, p0, Lcom/miantan/myoface/ShareHelperActivity;->strfrom:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 274
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 279
    invoke-static {}, Lcom/miantan/myoface/BitmapStore;->delBitmap()V

    .line 280
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1815
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1817
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0, p1, p0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z

    .line 1818
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 267
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 268
    return-void
.end method

.method public onResponse(Lcom/sina/weibo/sdk/api/share/BaseResponse;)V
    .locals 2
    .parameter "baseResp"

    .prologue
    .line 1860
    iget v0, p1, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errCode:I

    packed-switch v0, :pswitch_data_0

    .line 1872
    :goto_0
    return-void

    .line 1862
    :pswitch_0
    const-string v0, "\u6210\u529f"

    invoke-direct {p0, v0}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1865
    :pswitch_1
    const-string v0, "\u53d6\u6d88"

    invoke-direct {p0, v0}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1868
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error Message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1860
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 261
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 262
    return-void
.end method

.method public ready(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 1082
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    if-nez v1, :cond_0

    .line 1090
    :goto_0
    return v0

    .line 1085
    :cond_0
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v1}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1086
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v1}, Lcom/tencent/tauth/Tencent;->getOpenId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1085
    const/4 v0, 0x1

    .line 1090
    .local v0, ready:Z
    :cond_1
    goto :goto_0
.end method

.method public saveImage(Ljava/lang/String;Z)I
    .locals 13
    .parameter "strFileName"
    .parameter "shareToast"

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 759
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    const-string v12, "mounted"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 760
    .local v4, hasSDCard:Z
    if-nez v4, :cond_0

    .line 761
    invoke-static {v10, v9}, Lcom/miantan/myoface/ErrorMsg;->getErrorMsg(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    .line 811
    :goto_0
    return v9

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 766
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 767
    iget-object v9, p0, Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v11, "bitmap is null."

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_1
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getSDPath()Ljava/lang/String;

    move-result-object v7

    .line 773
    .local v7, strPath:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    .local v1, destDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 776
    const-string v9, "MagicMirror"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Dir not exist create it "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 778
    const-string v9, "MagicMirror"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Make dir success: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_2
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 782
    .local v5, imageFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 783
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 784
    .local v3, fos:Ljava/io/FileOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x32

    invoke-virtual {v0, v9, v11, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 785
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 786
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 788
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    .local v6, imgIntent:Landroid/content/Intent;
    new-instance v9, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 790
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 791
    invoke-virtual {p0, v6}, Lcom/miantan/myoface/ShareHelperActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 806
    .end local v1           #destDir:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v5           #imageFile:Ljava/io/File;
    .end local v6           #imgIntent:Landroid/content/Intent;
    .end local v8           #uri:Landroid/net/Uri;
    :goto_1
    if-eqz p2, :cond_3

    .line 808
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080026

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    :cond_3
    move v9, v10

    .line 811
    goto/16 :goto_0

    .line 795
    :catch_0
    move-exception v2

    .line 798
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 800
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 803
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public sendWeiboMessage()V
    .locals 4

    .prologue
    .line 1893
    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v2}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->isWeiboAppSupportAPI()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1895
    new-instance v1, Lcom/sina/weibo/sdk/api/WeiboMessage;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/WeiboMessage;-><init>()V

    .line 1896
    .local v1, weiboMessage:Lcom/sina/weibo/sdk/api/WeiboMessage;
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getImageObj()Lcom/sina/weibo/sdk/api/ImageObject;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 1897
    new-instance v0, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;-><init>()V

    .line 1899
    .local v0, request:Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;->transaction:Ljava/lang/String;

    .line 1900
    iput-object v1, v0, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;->message:Lcom/sina/weibo/sdk/api/WeiboMessage;

    .line 1902
    iget-object v2, p0, Lcom/miantan/myoface/ShareHelperActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v2, v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->sendRequest(Lcom/sina/weibo/sdk/api/share/BaseRequest;)Z

    .line 1908
    .end local v0           #request:Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;
    .end local v1           #weiboMessage:Lcom/sina/weibo/sdk/api/WeiboMessage;
    :goto_0
    return-void

    .line 1906
    :cond_0
    const-string v2, "\u5fae\u535a\u7248\u672c\u4e0d\u652f\u6301\u7b2c\u4e09\u65b9\u5e94\u7528\u53d1\u5fae\u535a\uff0c\u8bf7\u5347\u7ea7\u6700\u65b0\u7248\u672c"

    invoke-direct {p0, v2}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAvatar()V
    .locals 3

    .prologue
    .line 1188
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1189
    .local v0, hasSDCard:Z
    if-nez v0, :cond_0

    .line 1190
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miantan/myoface/ErrorMsg;->getErrorMsg(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    .line 1193
    :cond_0
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/ShareHelperActivity;->ready(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1195
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->startAvatar()V

    .line 1202
    :goto_0
    return-void

    .line 1199
    :cond_1
    invoke-direct {p0}, Lcom/miantan/myoface/ShareHelperActivity;->LoginAndStartAvatar()V

    goto :goto_0
.end method

.method public shareToFacebook()V
    .locals 3

    .prologue
    .line 1262
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1263
    .local v0, hasSDCard:Z
    if-nez v0, :cond_0

    .line 1264
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miantan/myoface/ErrorMsg;->getErrorMsg(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    .line 1267
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->startShareToFacebook()V

    .line 1268
    return-void
.end method

.method public shareToInstagram()V
    .locals 3

    .prologue
    .line 1322
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1323
    .local v0, hasSDCard:Z
    if-nez v0, :cond_0

    .line 1324
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miantan/myoface/ErrorMsg;->getErrorMsg(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    .line 1327
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->startShareToInstagram()V

    .line 1328
    return-void
.end method

.method public shareToKakaoTalk()V
    .locals 3

    .prologue
    .line 1612
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1613
    .local v0, hasSDCard:Z
    if-nez v0, :cond_0

    .line 1614
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miantan/myoface/ErrorMsg;->getErrorMsg(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    .line 1617
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->startShareToKakaoTalk()V

    .line 1618
    return-void
.end method

.method public shareToLine()V
    .locals 3

    .prologue
    .line 1495
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1496
    .local v0, hasSDCard:Z
    if-nez v0, :cond_0

    .line 1497
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miantan/myoface/ErrorMsg;->getErrorMsg(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    .line 1500
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->startShareToLine()V

    .line 1501
    return-void
.end method

.method public shareToQQHaoyou()V
    .locals 3

    .prologue
    .line 1206
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1207
    .local v0, hasSDCard:Z
    if-nez v0, :cond_0

    .line 1208
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miantan/myoface/ErrorMsg;->getErrorMsg(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    .line 1212
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->startShareToQQHaoYou()V

    .line 1218
    return-void
.end method

.method public shareToTumblr()V
    .locals 3

    .prologue
    .line 1553
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1554
    .local v0, hasSDCard:Z
    if-nez v0, :cond_0

    .line 1555
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miantan/myoface/ErrorMsg;->getErrorMsg(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    .line 1558
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->startShareToTumblr()V

    .line 1559
    return-void
.end method

.method public shareToTwitter()V
    .locals 3

    .prologue
    .line 1381
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1382
    .local v0, hasSDCard:Z
    if-nez v0, :cond_0

    .line 1383
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miantan/myoface/ErrorMsg;->getErrorMsg(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    .line 1386
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->startShareToTwitter()V

    .line 1387
    return-void
.end method

.method public shareToWhatsapp()V
    .locals 3

    .prologue
    .line 1437
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1438
    .local v0, hasSDCard:Z
    if-nez v0, :cond_0

    .line 1439
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miantan/myoface/ErrorMsg;->getErrorMsg(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    .line 1442
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->startShareToWhatsapp()V

    .line 1443
    return-void
.end method

.method public startAvatar()V
    .locals 7

    .prologue
    .line 1125
    const/4 v4, 0x0

    .line 1126
    .local v4, rv:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1128
    .local v1, nowTime:J
    const-string v0, "test123.png"

    .line 1129
    .local v0, fileName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getSDPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1130
    .local v3, path:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->saveImage(Ljava/lang/String;Z)I

    move-result v4

    .line 1131
    if-nez v4, :cond_0

    .line 1133
    invoke-direct {p0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->doSetAvatarByPath(Ljava/lang/String;)V

    .line 1140
    :goto_0
    return-void

    .line 1137
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080067

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startShareToFacebook()V
    .locals 5

    .prologue
    .line 1271
    const/4 v2, 0x0

    .line 1272
    .local v2, rv:I
    const-string v0, "test123.png"

    .line 1273
    .local v0, fileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getSDPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1274
    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->saveImage(Ljava/lang/String;Z)I

    move-result v2

    .line 1275
    if-nez v2, :cond_0

    .line 1277
    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->doShareToFB(Ljava/lang/String;)V

    .line 1285
    :goto_0
    return-void

    .line 1281
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startShareToInstagram()V
    .locals 5

    .prologue
    .line 1331
    const/4 v2, 0x0

    .line 1332
    .local v2, rv:I
    const-string v0, "test123.png"

    .line 1333
    .local v0, fileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getSDPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1334
    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->saveImage(Ljava/lang/String;Z)I

    move-result v2

    .line 1335
    if-nez v2, :cond_0

    .line 1337
    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->doShareToInstagram(Ljava/lang/String;)V

    .line 1344
    :goto_0
    return-void

    .line 1341
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startShareToKakaoTalk()V
    .locals 5

    .prologue
    .line 1621
    const/4 v2, 0x0

    .line 1622
    .local v2, rv:I
    const-string v0, "test123.png"

    .line 1623
    .local v0, fileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getSDPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1624
    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->saveImage(Ljava/lang/String;Z)I

    move-result v2

    .line 1625
    if-nez v2, :cond_0

    .line 1627
    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->doShareToKakaoTalk(Ljava/lang/String;)V

    .line 1634
    :goto_0
    return-void

    .line 1631
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startShareToLine()V
    .locals 5

    .prologue
    .line 1504
    const/4 v2, 0x0

    .line 1505
    .local v2, rv:I
    const-string v0, "test123.png"

    .line 1506
    .local v0, fileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getSDPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1507
    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->saveImage(Ljava/lang/String;Z)I

    move-result v2

    .line 1508
    if-nez v2, :cond_0

    .line 1510
    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->doShareToLine(Ljava/lang/String;)V

    .line 1517
    :goto_0
    return-void

    .line 1514
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startShareToQQHaoYou()V
    .locals 7

    .prologue
    .line 1221
    const/4 v4, 0x0

    .line 1222
    .local v4, rv:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1224
    .local v1, nowTime:J
    const-string v0, "test123.png"

    .line 1225
    .local v0, fileName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getSDPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1226
    .local v3, path:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->saveImage(Ljava/lang/String;Z)I

    move-result v4

    .line 1227
    if-nez v4, :cond_0

    .line 1229
    invoke-direct {p0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->doShareToQQHaoYouByPath(Ljava/lang/String;)V

    .line 1240
    :goto_0
    return-void

    .line 1236
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080067

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startShareToQZONE()V
    .locals 7

    .prologue
    .line 1709
    const/4 v4, 0x0

    .line 1710
    .local v4, rv:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1712
    .local v1, nowTime:J
    const-string v0, "test123.png"

    .line 1713
    .local v0, fileName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getSDPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1715
    .local v3, path:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->saveImage(Ljava/lang/String;Z)I

    move-result v4

    .line 1716
    if-nez v4, :cond_0

    .line 1718
    invoke-direct {p0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->doShareToQZONEByPath(Ljava/lang/String;)V

    .line 1725
    :goto_0
    return-void

    .line 1722
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080067

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startShareToTumblr()V
    .locals 5

    .prologue
    .line 1562
    const/4 v2, 0x0

    .line 1563
    .local v2, rv:I
    const-string v0, "test123.png"

    .line 1564
    .local v0, fileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getSDPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1565
    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->saveImage(Ljava/lang/String;Z)I

    move-result v2

    .line 1566
    if-nez v2, :cond_0

    .line 1568
    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->doShareToTumblr(Ljava/lang/String;)V

    .line 1576
    :goto_0
    return-void

    .line 1573
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startShareToTwitter()V
    .locals 5

    .prologue
    .line 1390
    const/4 v2, 0x0

    .line 1391
    .local v2, rv:I
    const-string v0, "test123.png"

    .line 1392
    .local v0, fileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getSDPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1393
    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->saveImage(Ljava/lang/String;Z)I

    move-result v2

    .line 1394
    if-nez v2, :cond_0

    .line 1396
    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->doShareToTwitter(Ljava/lang/String;)V

    .line 1403
    :goto_0
    return-void

    .line 1400
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startShareToWhatsapp()V
    .locals 5

    .prologue
    .line 1446
    const/4 v2, 0x0

    .line 1447
    .local v2, rv:I
    const-string v0, "test123.png"

    .line 1448
    .local v0, fileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getSDPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->saveImage(Ljava/lang/String;Z)I

    move-result v2

    .line 1450
    if-nez v2, :cond_0

    .line 1452
    invoke-direct {p0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->doShareToWhatsapp(Ljava/lang/String;)V

    .line 1459
    :goto_0
    return-void

    .line 1456
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public weiboShare()V
    .locals 2

    .prologue
    const v1, 0x7f080068

    .line 1837
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->isWeiboAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1840
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->isInstallWeibo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1842
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    .line 1851
    :goto_0
    return-void

    .line 1845
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->sendWeiboMessage()V

    goto :goto_0

    .line 1849
    :cond_1
    invoke-virtual {p0}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0
.end method
