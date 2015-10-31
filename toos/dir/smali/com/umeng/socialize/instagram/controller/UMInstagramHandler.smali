.class public Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;
.super Lcom/umeng/socialize/sso/CustomHandler;
.source "UMInstagramHandler.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/umeng/socialize/sso/CustomHandler;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    .line 39
    iput-object p1, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method protected buildMediaObject(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;
    .locals 1
    .parameter "media"

    .prologue
    .line 137
    instance-of v0, p1, Lcom/umeng/socialize/instagram/media/InstagramShareContent;

    if-eqz v0, :cond_0

    .line 138
    check-cast p1, Lcom/umeng/socialize/instagram/media/InstagramShareContent;

    .end local p1
    invoke-virtual {p1}, Lcom/umeng/socialize/instagram/media/InstagramShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object p1

    .line 140
    .restart local p1
    :cond_0
    return-object p1
.end method

.method protected doShare(Ljava/lang/Object;Lcom/umeng/socialize/media/UMediaObject$MediaType;)Z
    .locals 5
    .parameter "msg"
    .parameter "type"

    .prologue
    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, imgPath:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 156
    .local v1, shareIntent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v2, "com.instagram.android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v2, "android.intent.extra.STREAM"

    .line 160
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 159
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "### \u5206\u4eab\u5230instagram, image path = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v2, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 165
    const/4 v2, 0x0

    return v2
.end method

.method public getRequstCode()I
    .locals 1

    .prologue
    .line 197
    const/16 v0, 0x2769

    return v0
.end method

.method protected getShareImage(Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;
    .locals 5
    .parameter "shareImage"

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, image:Lcom/umeng/socialize/media/UMImage;
    instance-of v2, p1, Lcom/umeng/socialize/media/SimpleShareContent;

    if-eqz v2, :cond_3

    .line 78
    check-cast p1, Lcom/umeng/socialize/media/SimpleShareContent;

    .end local p1
    invoke-virtual {p1}, Lcom/umeng/socialize/media/SimpleShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    .line 83
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->isSerialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->waitImageToSerialize()V

    .line 86
    :cond_1
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, imgPath:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v1

    .line 91
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 92
    invoke-static {v1}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->startWithHttp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 98
    .end local v1           #imgPath:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 79
    .restart local p1
    :cond_3
    instance-of v2, p1, Lcom/umeng/socialize/media/UMImage;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    goto :goto_0

    .line 94
    .end local p1
    .restart local v1       #imgPath:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_5

    .line 95
    iget-object v2, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    const-string v3, "\u56fe\u7247\u4e0d\u5b58\u5728\u6216\u56fe\u7247\u4e3aurl\u7c7b\u578b..."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 98
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected getShareMusic(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "shareMusic"
    .parameter "shareContent"

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getShareText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "shareContent"

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getShareTextAndImage(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;
    .locals 1
    .parameter "shareContent"
    .parameter "shareImage"

    .prologue
    .line 104
    invoke-virtual {p0, p2}, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->getShareImage(Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getShareVideo(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "shareVideo"
    .parameter "description"

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initPlatformConfig()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 51
    const-string v2, "umeng_socialize_instagram_on"

    .line 50
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mIcon:I

    .line 52
    iget-object v0, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 53
    const-string v2, "umeng_socialize_instagram_off"

    .line 52
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mGrayIcon:I

    .line 54
    const-string v0, "Instagram"

    iput-object v0, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mShowWord:Ljava/lang/String;

    .line 55
    const-string v0, "instagram"

    iput-object v0, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mKeyWord:Ljava/lang/String;

    .line 58
    const/16 v0, 0x17

    iput v0, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mPlatformOpId:I

    .line 59
    return-void
.end method

.method public isClientInstalled()Z
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 125
    const-string v1, "com.instagram.android"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setSelectedPlatform()V
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->INSTAGRAM:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 171
    return-void
.end method

.method public shareTo()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    iget-object v4, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mMediaType:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-virtual {p0, v4}, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->createMessage(Lcom/umeng/socialize/media/UMediaObject$MediaType;)Ljava/lang/Object;

    move-result-object v1

    .line 180
    .local v1, msg:Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 181
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 183
    iget-object v3, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->TAG:Ljava/lang/String;

    const-string v4, "\u5206\u4eab\u5230Instagram\u7684\u56fe\u7247\u4e0d\u5b58\u5728!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return v2

    .line 186
    .restart local v0       #file:Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mMediaType:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-virtual {p0, v1, v2}, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->doShare(Ljava/lang/Object;Lcom/umeng/socialize/media/UMediaObject$MediaType;)Z

    .line 187
    invoke-virtual {p0, v3}, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->sendReport(Z)V

    .end local v0           #file:Ljava/io/File;
    :cond_1
    :goto_1
    move v2, v3

    .line 192
    goto :goto_0

    .line 188
    :cond_2
    iget-object v4, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 189
    iget-object v4, p0, Lcom/umeng/socialize/instagram/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    const-string v5, "\u62b1\u6b49,Instagram\u53ea\u652f\u6301\u672c\u5730\u56fe\u7247\u5206\u4eab..."

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
