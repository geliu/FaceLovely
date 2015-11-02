.class public Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;
.super Lcom/umeng/socialize/sso/UMSsoHandler;
.source "UMFacebookHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;,
        Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$umeng$socialize$facebook$controller$UMFacebookHandler$PendingAction:[I = null

.field private static final PERMISSION:Ljava/lang/String; = "publish_actions, user_photos, read_stream"


# instance fields
.field private final PENDING_ACTION_BUNDLE_KEY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private isChineseOS:Z

.field private mActivity:Landroid/app/Activity;

.field private mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

.field private mCaption:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mDialogCallback:Lcom/facebook/widget/FacebookDialog$Callback;

.field private mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

.field private mPendingAction:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

.field private mPostParams:Landroid/os/Bundle;

.field private mPostType:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

.field private mShareContent:Ljava/lang/String;

.field private mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

.field private mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

.field private mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

.field private mStatusCallback:Lcom/facebook/Session$StatusCallback;

.field private mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

.field private mUploadedImgUrl:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$umeng$socialize$facebook$controller$UMFacebookHandler$PendingAction()[I
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->$SWITCH_TABLE$com$umeng$socialize$facebook$controller$UMFacebookHandler$PendingAction:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->values()[Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->NONE:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    invoke-virtual {v1}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->POST_PHOTO:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    invoke-virtual {v1}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->POST_STATUS_UPDATE:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    invoke-virtual {v1}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->$SWITCH_TABLE$com$umeng$socialize$facebook$controller$UMFacebookHandler$PendingAction:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;)V
    .locals 1
    .parameter "activity"
    .parameter "postType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;)V
    .locals 6
    .parameter "activity"
    .parameter "appId"
    .parameter "postType"

    .prologue
    const/4 v4, 0x0

    .line 238
    invoke-direct {p0}, Lcom/umeng/socialize/sso/UMSsoHandler;-><init>()V

    .line 86
    iput-object v4, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    .line 91
    iput-object v4, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    .line 96
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 105
    iput-object v4, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 107
    const-string v3, "com.umeng.share:PendingAction"

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->PENDING_ACTION_BUNDLE_KEY:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    .line 143
    sget-object v3, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->NONE:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    .line 148
    sget-object v3, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;->FEED:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostType:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    .line 157
    const-string v3, ""

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUploadedImgUrl:Ljava/lang/String;

    .line 162
    const-string v3, ""

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    .line 167
    const-string v3, ""

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mCaption:Ljava/lang/String;

    .line 171
    const-string v3, ""

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mDescription:Ljava/lang/String;

    .line 176
    iput-object v4, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 181
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    .line 186
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->isChineseOS:Z

    .line 191
    iput-object v4, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 195
    new-instance v3, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$1;

    invoke-direct {v3, p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$1;-><init>(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)V

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mStatusCallback:Lcom/facebook/Session$StatusCallback;

    .line 207
    new-instance v3, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$2;

    invoke-direct {v3, p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$2;-><init>(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)V

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mDialogCallback:Lcom/facebook/widget/FacebookDialog$Callback;

    .line 239
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    .line 240
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mContext:Landroid/content/Context;

    .line 242
    new-instance v3, Lcom/facebook/UiLifecycleHelper;

    iget-object v4, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mStatusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v3, v4, v5}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    .line 243
    const/4 v2, 0x0

    .line 244
    .local v2, saveBundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 246
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 248
    if-eqz v2, :cond_0

    .line 249
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v4, "#### facebook onCreate Bundle"

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v3, "com.umeng.share:PendingAction"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->valueOf(Ljava/lang/String;)Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    .line 259
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->setAppId(Ljava/lang/String;)V

    .line 260
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v3, v2}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 261
    iput-object p3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostType:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    .line 263
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/umeng/socialize/utils/DeviceConfig;->isChinese(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->isChineseOS:Z

    .line 264
    return-void

    .line 253
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #name:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->NONE:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1015
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->onStatusChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)Lcom/facebook/UiLifecycleHelper;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    return-object v0
.end method

.method static synthetic access$3(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUploadedImgUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->executePostStatus()V

    return-void
.end method

.method static synthetic access$6(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$7(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;Lcom/facebook/Response;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 797
    invoke-direct {p0, p1}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->handleResponse(Lcom/facebook/Response;)V

    return-void
.end method

.method private addParams()V
    .locals 3

    .prologue
    .line 661
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    .line 669
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    const-string v1, "message"

    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    const-string v1, "name"

    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    const-string v1, "caption"

    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mCaption:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    const-string v1, "link"

    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mTargetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "### facebook \u5206\u4eab\u5185\u5bb9 : message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 688
    const-string v2, ", title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caption : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mCaption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 687
    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_0
.end method

.method private buildMediaObject(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 5
    .parameter "shareContent"
    .parameter "media"

    .prologue
    .line 377
    if-nez p2, :cond_0

    .line 378
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v4, "### facebook \u4e0d\u652f\u6301\u7eaf\u6587\u672c\u5206\u4eab\uff0c\u8bf7\u8bbe\u7f6e\u5206\u4eab\u56fe\u7247"

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_0
    return-void

    .line 381
    :cond_0
    const-string v2, ""

    .line 382
    .local v2, targetUrl:Ljava/lang/String;
    instance-of v3, p2, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;

    if-eqz v3, :cond_3

    move-object v0, p2

    .line 383
    check-cast v0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;

    .line 384
    .local v0, fbContent:Lcom/umeng/socialize/facebook/media/FaceBookShareContent;
    invoke-virtual {v0}, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->getShareContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    .line 385
    invoke-virtual {v0}, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 387
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    .line 390
    :cond_1
    invoke-virtual {v0}, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mTitle:Ljava/lang/String;

    .line 391
    invoke-virtual {v0}, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->getCaption()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mCaption:Ljava/lang/String;

    .line 392
    invoke-virtual {v0}, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->getDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mDescription:Ljava/lang/String;

    .line 393
    invoke-virtual {v0}, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    .line 405
    .end local v0           #fbContent:Lcom/umeng/socialize/facebook/media/FaceBookShareContent;
    :goto_1
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mTargetUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 406
    invoke-static {v2}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->startWithHttp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    iput-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mTargetUrl:Ljava/lang/String;

    .line 410
    :cond_2
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->checkTargetUrl()V

    goto :goto_0

    .line 394
    :cond_3
    instance-of v3, p2, Lcom/umeng/socialize/media/UMImage;

    if-eqz v3, :cond_4

    move-object v1, p2

    .line 395
    check-cast v1, Lcom/umeng/socialize/media/UMImage;

    .line 396
    .local v1, shareMedia:Lcom/umeng/socialize/media/UMImage;
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    .line 397
    iput-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 398
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mTitle:Ljava/lang/String;

    .line 399
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    .line 400
    goto :goto_1

    .line 401
    .end local v1           #shareMedia:Lcom/umeng/socialize/media/UMImage;
    :cond_4
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    .line 402
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v4, "### facebook \u6682\u4e0d\u652f\u6301\u975e\u56fe\u7247\u5206\u4eab"

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkTargetUrl()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mTargetUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->isUrlMedia()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mTargetUrl:Ljava/lang/String;

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    const-string v0, "http://www.umeng.com/social"

    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mTargetUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private clearParams()V
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 857
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUploadedImgUrl:Ljava/lang/String;

    .line 858
    return-void
.end method

.method private directShare()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 461
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostType:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    sget-object v1, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;->PHOTO:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    if-ne v0, v1, :cond_0

    .line 463
    sget-object v0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->POST_PHOTO:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    invoke-direct {p0, v0, v2}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->performPublish(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;Z)V

    .line 470
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    .line 466
    const-string v1, "@@@@@ performPublish(PendingAction.POST_STATUS_UPDATE, false);"

    .line 465
    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget-object v0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->POST_STATUS_UPDATE:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    invoke-direct {p0, v0, v2}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->performPublish(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;Z)V

    goto :goto_0
.end method

.method private executePostStatus()V
    .locals 6

    .prologue
    .line 760
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v2, "@@@@@ executePostStatus start"

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    const-string v2, "picture"

    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUploadedImgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_0
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "me/feed"

    .line 767
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$6;

    invoke-direct {v5, p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$6;-><init>(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)V

    .line 766
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 786
    .local v0, request:Lcom/facebook/Request;
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 788
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->clearParams()V

    .line 789
    return-void
.end method

.method private handlePendingAction()V
    .locals 4

    .prologue
    .line 585
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    .line 586
    .local v0, previouslyPendingAction:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;
    sget-object v2, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->NONE:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    iput-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    .line 588
    invoke-static {}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->$SWITCH_TABLE$com$umeng$socialize$facebook$controller$UMFacebookHandler$PendingAction()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 598
    :goto_0
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeConfig;->isShowToast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    iget-boolean v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->isChineseOS:Z

    if-eqz v2, :cond_1

    const-string v1, "\u5206\u4eab\u4e2d..."

    .line 600
    .local v1, toast:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/umeng/socialize/facebook/controller/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 602
    .end local v1           #toast:Ljava/lang/String;
    :cond_0
    return-void

    .line 590
    :pswitch_0
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->postStatus()V

    goto :goto_0

    .line 593
    :pswitch_1
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->postPhoto()V

    goto :goto_0

    .line 599
    :cond_1
    const-string v1, "sharing..."

    goto :goto_1

    .line 588
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleResponse(Lcom/facebook/Response;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 798
    const-string v1, ""

    .line 800
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 801
    .local v0, error:Lcom/facebook/FacebookRequestError;
    if-nez v0, :cond_2

    .line 802
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v3, "@@@@ send true"

    invoke-static {v2, v3}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-boolean v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->isChineseOS:Z

    if-eqz v2, :cond_1

    const-string v1, "\u5206\u4eab\u6210\u529f"

    .line 804
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->sendReport(Z)V

    .line 816
    :goto_1
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeConfig;->isShowToast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 817
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/umeng/socialize/facebook/controller/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 819
    :cond_0
    return-void

    .line 803
    :cond_1
    const-string v1, "done."

    goto :goto_0

    .line 806
    :cond_2
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v3, "@@@@ send false"

    invoke-static {v2, v3}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-boolean v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->isChineseOS:Z

    if-eqz v2, :cond_3

    const-string v1, "\u5206\u4eab\u5931\u8d25"

    .line 808
    :goto_2
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#### "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->sendReport(Z)V

    goto :goto_1

    .line 807
    :cond_3
    const-string v1, "failed."

    goto :goto_2
.end method

.method private isResOrLocalImage()Z
    .locals 3

    .prologue
    .line 642
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v2}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, imgUrlOrPath:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 645
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 646
    invoke-static {v1}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->startWithHttp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    .line 648
    .local v0, image:Lcom/umeng/socialize/media/UMImage;
    if-eqz v0, :cond_1

    .line 649
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/socialize/utils/BitmapUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    .line 652
    .end local v0           #image:Lcom/umeng/socialize/media/UMImage;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSessionOpened()Z
    .locals 2

    .prologue
    .line 479
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 480
    .local v0, session:Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onStatusChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 10
    .parameter "session"
    .parameter "state"
    .parameter "exception"

    .prologue
    .line 1017
    if-eqz p1, :cond_0

    .line 1018
    if-eqz p3, :cond_4

    .line 1019
    instance-of v5, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-nez v5, :cond_0

    instance-of v5, p3, Lcom/facebook/FacebookAuthorizationException;

    if-eqz v5, :cond_4

    .line 1020
    :cond_0
    iget-boolean v5, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->isChineseOS:Z

    if-eqz v5, :cond_3

    const-string v2, "\u6388\u6743\u5931\u8d25"

    .line 1021
    .local v2, msg:Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_1

    .line 1022
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1024
    :cond_1
    iget-object v5, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "### facebook"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    .end local v2           #msg:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1020
    :cond_3
    const-string v2, "oauth failed..."

    goto :goto_0

    .line 1028
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1029
    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 1030
    .local v3, token:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    .line 1032
    .local v1, expires_in:Ljava/util/Date;
    iget-object v5, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v3, v1}, Lcom/umeng/socialize/facebook/controller/utils/TokenUtil;->saveTokenToLocal(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)V

    .line 1033
    invoke-virtual {p1}, Lcom/facebook/Session;->getAuthorizationBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 1034
    .local v4, tokenBundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v5, :cond_5

    .line 1035
    iget-object v5, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    sget-object v6, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v5, v4, v6}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 1037
    :cond_5
    iget-boolean v5, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->isShareAfterAuthorize:Z

    if-eqz v5, :cond_2

    .line 1038
    iget-object v5, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostType:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    sget-object v6, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;->PHOTO:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    if-ne v5, v6, :cond_6

    .line 1039
    sget-object v5, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->POST_PHOTO:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    iput-object v5, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    .line 1042
    :cond_6
    invoke-virtual {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->hasPublishPermission()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1043
    iget-object v5, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v6, "@@@@ directShare"

    invoke-static {v5, v6}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->directShare()V

    goto :goto_1

    .line 1047
    :cond_7
    new-instance v5, Lcom/facebook/Session$NewPermissionsRequest;

    .line 1048
    iget-object v6, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "publish_actions, user_photos, read_stream"

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p1, v5}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_1

    .line 1052
    .end local v1           #expires_in:Ljava/util/Date;
    .end local v3           #token:Ljava/lang/String;
    .end local v4           #tokenBundle:Landroid/os/Bundle;
    :cond_8
    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1053
    iget-object v5, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "### facebook SessionState = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v5, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v5, :cond_9

    .line 1060
    new-instance v0, Lcom/umeng/socialize/exception/SocializeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Facebook\u6388\u6743\u5931\u8d25"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1060
    invoke-direct {v0, v5}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v0, exp:Lcom/umeng/socialize/exception/SocializeException;
    iget-object v5, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    sget-object v6, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v5, v0, v6}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 1064
    .end local v0           #exp:Lcom/umeng/socialize/exception/SocializeException;
    :cond_9
    invoke-virtual {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->logOut()V

    goto/16 :goto_1
.end method

.method private performPublish(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;Z)V
    .locals 6
    .parameter "action"
    .parameter "allowNoSession"

    .prologue
    .line 557
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 558
    .local v0, session:Lcom/facebook/Session;
    if-eqz v0, :cond_2

    .line 559
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    .line 560
    invoke-virtual {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->hasPublishPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->handlePendingAction()V

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 567
    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    .line 568
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "publish_actions, user_photos, read_stream"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 567
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_0

    .line 573
    :cond_2
    if-eqz p2, :cond_0

    .line 574
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    .line 575
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->handlePendingAction()V

    goto :goto_0
.end method

.method private postPhoto()V
    .locals 3

    .prologue
    .line 726
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-nez v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v2, "### postPhoto, image data is null..."

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :goto_0
    return-void

    .line 732
    :cond_0
    new-instance v0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;

    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    .line 733
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 732
    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;-><init>(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V

    .line 734
    .local v0, postPhotoTask:Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;
    new-instance v1, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;-><init>(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->setPostListener(Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;)V

    .line 751
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private postStatus()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v1, "@@@@@ postStatus"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->hasPublishPermission()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 613
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->addParams()V

    .line 615
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_1

    .line 617
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->isResOrLocalImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->uploadImage()V

    .line 633
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUploadedImgUrl:Ljava/lang/String;

    .line 622
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->executePostStatus()V

    goto :goto_0

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 625
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->executePostStatus()V

    goto :goto_0

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    const-string v1, "\u5206\u4eab\u56fe\u7247\u6570\u636e\u4e3a\u7a7a, \u5206\u4eab\u5931\u8d25..."

    invoke-static {v0, v1}, Lcom/umeng/socialize/facebook/controller/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 631
    :cond_3
    sget-object v0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->POST_STATUS_UPDATE:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    goto :goto_0
.end method

.method private uploadImage()V
    .locals 3

    .prologue
    .line 698
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v2, "@@@@@ uploadImage"

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->hasPublishPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    new-instance v0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;

    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    .line 701
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v1, Lcom/umeng/socialize/media/UMImage;

    .line 700
    invoke-direct {v0, v2, v1}, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;-><init>(Landroid/content/Context;Lcom/umeng/socialize/media/UMImage;)V

    .line 702
    .local v0, uploadTask:Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;
    new-instance v1, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$4;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$4;-><init>(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->setUploadListener(Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;)V

    .line 713
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 717
    .end local v0           #uploadTask:Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;
    :goto_0
    return-void

    .line 715
    :cond_0
    sget-object v1, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;->POST_PHOTO:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    iput-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PendingAction;

    goto :goto_0
.end method


# virtual methods
.method public addToSocialSDK()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->build()Lcom/umeng/socialize/bean/CustomPlatform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->addCustomPlatform(Lcom/umeng/socialize/bean/CustomPlatform;)V

    .line 318
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSsoHandler(Lcom/umeng/socialize/sso/UMSsoHandler;)V

    .line 319
    return-void
.end method

.method public authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 3
    .parameter "act"
    .parameter "listener"

    .prologue
    .line 494
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v2, "\u4e0d\u80fd\u8fdb\u884c\u6388\u6743, activity = null"

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_1
    :goto_0
    return-void

    .line 498
    :cond_2
    iput-object p2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 499
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 501
    .local v0, session:Lcom/facebook/Session;
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 502
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v1, :cond_3

    .line 503
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 505
    :cond_3
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v1, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 506
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mStatusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_0

    .line 507
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 508
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v2, "### \u6253\u5f00\u6fc0\u6d3bSession"

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mStatusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {p1, v1, v2}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    goto :goto_0
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 526
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 527
    return-void
.end method

.method public createNewPlatform()Lcom/umeng/socialize/bean/CustomPlatform;
    .locals 5

    .prologue
    .line 291
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 292
    const-string v3, "umeng_socialize_facebook"

    .line 291
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 294
    .local v0, icon:I
    new-instance v1, Lcom/umeng/socialize/bean/CustomPlatform;

    .line 295
    const-string v2, "facebook"

    invoke-direct {v1, v2, v0}, Lcom/umeng/socialize/bean/CustomPlatform;-><init>(Ljava/lang/String;I)V

    .line 294
    iput-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    .line 296
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    .line 297
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v4, "umeng_socialize_facebook_off"

    .line 296
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mGrayIcon:I

    .line 301
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    new-instance v2, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$3;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$3;-><init>(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)V

    iput-object v2, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnSnsPlatformClickListener;

    .line 310
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    return-object v1
.end method

.method public deleteAuthorization(Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 1
    .parameter "entity"
    .parameter "platform"
    .parameter "listener"

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->logOut()V

    .line 542
    if-eqz p3, :cond_0

    .line 543
    invoke-interface {p3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onStart()V

    .line 544
    const/16 v0, 0xc8

    invoke-interface {p3, v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 546
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 547
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostType()Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostType:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    return-object v0
.end method

.method public getRequstCode()I
    .locals 1

    .prologue
    .line 1007
    const v0, 0xface

    return v0
.end method

.method protected handleOnClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 3
    .parameter "customPlatform"
    .parameter "entity"
    .parameter "listener"

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 336
    .local v0, shareMedia:Lcom/umeng/socialize/media/UMediaObject;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->isShareAfterAuthorize:Z

    .line 337
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v1}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 339
    if-eqz p2, :cond_0

    .line 340
    iput-object p2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 342
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareType()Lcom/umeng/socialize/bean/ShareType;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/bean/ShareType;->SHAKE:Lcom/umeng/socialize/bean/ShareType;

    if-ne v1, v2, :cond_3

    .line 343
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    iput-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    .line 344
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    .line 349
    :goto_0
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    sget-object v2, Lcom/umeng/socialize/bean/ShareType;->NORMAL:Lcom/umeng/socialize/bean/ShareType;

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareType(Lcom/umeng/socialize/bean/ShareType;)V

    .line 352
    :cond_0
    iput-object p3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 354
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v1, :cond_2

    .line 357
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-interface {v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onStart()V

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v2, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnStart(Ljava/lang/Class;)V

    .line 361
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->buildMediaObject(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V

    .line 363
    invoke-virtual {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->shareTo()Z

    .line 367
    :goto_1
    return-void

    .line 346
    :cond_3
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    .line 347
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_4
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    const-string v2, "\u8bf7\u8bbe\u7f6eFacebook\u7684\u5206\u4eab\u5185\u5bb9..."

    invoke-static {v1, v2}, Lcom/umeng/socialize/facebook/controller/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected hasPublishPermission()Z
    .locals 4

    .prologue
    .line 867
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 868
    .local v2, session:Lcom/facebook/Session;
    const/4 v1, 0x0

    .line 869
    .local v1, result:Z
    if-eqz v2, :cond_0

    .line 870
    invoke-virtual {v2}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 871
    .local v0, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "publish_actions"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 872
    const-string v3, "user_photos"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 873
    const-string v3, "read_stream"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 871
    const/4 v1, 0x1

    .line 875
    .end local v0           #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return v1

    .line 871
    .restart local v0       #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isClientInstalled()Z
    .locals 2

    .prologue
    .line 1075
    const-string v0, "com.facebook.katana"

    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public logOut()V
    .locals 3

    .prologue
    .line 884
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 885
    .local v0, session:Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 888
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/OauthHelper;->remove(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 889
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v2, "### facebook logout."

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 943
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mDialogCallback:Lcom/facebook/widget/FacebookDialog$Callback;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 944
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"
    .parameter "facebookDialogCallback"

    .prologue
    .line 961
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 963
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 918
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 919
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 995
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 981
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 925
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 926
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 927
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    .line 928
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;)V

    .line 930
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 972
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 974
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onStop()V

    .line 988
    return-void
.end method

.method protected sendReport(Z)V
    .locals 7
    .parameter "result"

    .prologue
    .line 827
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSelectedPlatfrom()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 829
    .local v0, platform:Lcom/umeng/socialize/bean/SHARE_MEDIA;
    const v1, 0x9c41

    .line 830
    .local v1, statusCode:I
    if-eqz p1, :cond_0

    .line 832
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v3, v3, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 833
    iget-object v4, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    iget-object v5, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v6

    .line 832
    invoke-static {v2, v3, v4, v5, v6}, Lcom/umeng/socialize/utils/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    .line 835
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    .line 836
    const/16 v3, 0x16

    .line 835
    invoke-static {v2, v0, v3}, Lcom/umeng/socialize/utils/StatisticsDataUtils;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 837
    const/16 v1, 0xc8

    .line 841
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v2, :cond_1

    .line 842
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v2, v0, v1, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 846
    :cond_1
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v3, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 847
    iget-object v4, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 846
    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 848
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2
    .parameter "appid"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v1, "### facebook app id"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {p1}, Lcom/facebook/internal/Utility;->setFacebookAppId(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public setPostType(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;)V
    .locals 0
    .parameter "postType"

    .prologue
    .line 908
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostType:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    .line 909
    return-void
.end method

.method public shareTo()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 436
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/umeng/socialize/facebook/controller/utils/TokenUtil;->isTokenValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->isSessionOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "### facebook\u5df2\u7ecf\u6388\u6743, post type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mPostType:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->hasPublishPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->directShare()V

    .line 454
    :cond_0
    :goto_0
    return v6

    .line 443
    :cond_1
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 444
    .local v0, session:Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 445
    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    .line 446
    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "publish_actions, user_photos, read_stream"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_0

    .line 452
    .end local v0           #session:Lcom/facebook/Session;
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-virtual {p0, v1, v2}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0
.end method
