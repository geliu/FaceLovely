.class public Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;
.super Lcom/umeng/socialize/sso/UMSsoHandler;
.source "UMTumblrHandler.java"


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.tumblr"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/umeng/socialize/sso/UMSsoHandler;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkData()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 190
    iget-object v1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v1, v1, Lcom/umeng/socialize/media/UMImage;

    if-nez v1, :cond_0

    .line 197
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertImage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .parameter "stuffix"

    .prologue
    .line 241
    invoke-static {p1}, Lcom/umeng/socialize/utils/BitmapUtils;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 249
    .end local p1
    :goto_0
    return-object p1

    .line 245
    .restart local p1
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/socialize/utils/BitmapUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, fileName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/BitmapUtils;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 248
    const/4 v0, 0x0

    move-object p1, v1

    .line 249
    goto :goto_0
.end method

.method private getImagePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 168
    iget-object v4, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v4, v4, Lcom/umeng/socialize/media/UMImage;

    if-nez v4, :cond_2

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 181
    :cond_1
    :goto_0
    return-object v0

    .line 171
    :cond_2
    iget-object v2, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v2, Lcom/umeng/socialize/media/UMImage;

    .line 172
    .local v2, image:Lcom/umeng/socialize/media/UMImage;
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->isSerialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 173
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->waitImageToSerialize()V

    .line 175
    :cond_3
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, cachePath:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->isValidImage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 177
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->toByte()[B

    move-result-object v1

    .line 178
    .local v1, datas:[B
    invoke-static {v1}, Lcom/umeng/socialize/common/ImageFormat;->checkFormat([B)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, type:Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->convertImage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isValidImage(Ljava/lang/String;)Z
    .locals 8
    .parameter "cachePath"

    .prologue
    const/4 v3, 0x0

    .line 150
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 151
    .local v1, index:I
    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 152
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, imageStuffix:Ljava/lang/String;
    sget-object v5, Lcom/umeng/socialize/common/ImageFormat;->FORMAT_NAMES:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_1

    .line 159
    .end local v0           #imageStuffix:Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 153
    .restart local v0       #imageStuffix:Ljava/lang/String;
    :cond_1
    aget-object v2, v5, v4

    .line 154
    .local v2, stuff:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 155
    const/4 v3, 0x1

    goto :goto_1

    .line 153
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private parseShareContent()V
    .locals 2

    .prologue
    .line 204
    sget-object v1, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareContent:Ljava/lang/String;

    .line 205
    sget-object v1, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 206
    iget-object v1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v1, v1, Lcom/umeng/socialize/tumblr/media/TumblrShareContent;

    if-eqz v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/tumblr/media/TumblrShareContent;

    .line 208
    .local v0, tumblrShareContent:Lcom/umeng/socialize/tumblr/media/TumblrShareContent;
    invoke-virtual {v0}, Lcom/umeng/socialize/tumblr/media/TumblrShareContent;->getShareContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareContent:Ljava/lang/String;

    .line 209
    invoke-virtual {v0}, Lcom/umeng/socialize/tumblr/media/TumblrShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 210
    invoke-virtual {v0}, Lcom/umeng/socialize/tumblr/media/TumblrShareContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mTitle:Ljava/lang/String;

    .line 212
    .end local v0           #tumblrShareContent:Lcom/umeng/socialize/tumblr/media/TumblrShareContent;
    :cond_0
    return-void
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0
    .parameter "act"
    .parameter "listener"

    .prologue
    .line 75
    return-void
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 79
    return-void
.end method

.method protected createNewPlatform()Lcom/umeng/socialize/bean/CustomPlatform;
    .locals 6

    .prologue
    .line 53
    iget-object v2, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mContext:Landroid/content/Context;

    const-string v3, "tumblr_showword"

    invoke-static {v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, showWord:Ljava/lang/String;
    iget-object v2, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 55
    const-string v4, "umeng_socialize_tumblr"

    .line 54
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, icon:I
    new-instance v2, Lcom/umeng/socialize/bean/CustomPlatform;

    .line 57
    const-string v3, "Tumblr"

    invoke-direct {v2, v3, v1, v0}, Lcom/umeng/socialize/bean/CustomPlatform;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    iput-object v2, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    .line 58
    iget-object v2, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    iget-object v3, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mContext:Landroid/content/Context;

    .line 59
    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v5, "umeng_socialize_tumblr_gray"

    .line 58
    invoke-static {v3, v4, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/umeng/socialize/bean/CustomPlatform;->mGrayIcon:I

    .line 60
    iget-object v2, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    new-instance v3, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler$1;

    invoke-direct {v3, p0}, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler$1;-><init>(Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;)V

    iput-object v3, v2, Lcom/umeng/socialize/bean/CustomPlatform;->mClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnSnsPlatformClickListener;

    .line 70
    iget-object v2, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    return-object v2
.end method

.method public getRequstCode()I
    .locals 1

    .prologue
    .line 222
    const/16 v0, 0x2777

    return v0
.end method

.method protected handleOnClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 3
    .parameter "customPlatform"
    .parameter "entity"
    .parameter "listener"

    .prologue
    .line 84
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TUMBLR:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v1}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 85
    iget-object v1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v1, p3}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 86
    invoke-virtual {p0}, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->isClientInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->shareTo()Z

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mContext:Landroid/content/Context;

    .line 90
    const-string v2, "tumblr_no_client"

    .line 89
    invoke-static {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, noClientStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public isClientInstalled()Z
    .locals 2

    .prologue
    .line 98
    const-string v0, "com.tumblr"

    iget-object v1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected sendReport(Z)V
    .locals 5
    .parameter "result"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v1, v1, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 217
    iget-object v2, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareContent:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TUMBLR:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/socialize/utils/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mTitle:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public shareTo()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 103
    invoke-direct {p0}, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->parseShareContent()V

    .line 104
    invoke-direct {p0}, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->checkData()Z

    move-result v0

    .line 105
    .local v0, flag:Z
    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v6

    .line 108
    :cond_1
    const/4 v1, 0x0

    .line 109
    .local v1, found:Z
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v3, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v8, :cond_3

    .line 111
    const-string v8, "image/*"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    :goto_1
    iget-object v8, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 116
    invoke-virtual {v8, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 117
    .local v5, resInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 118
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 136
    :goto_2
    if-eqz v1, :cond_0

    .line 139
    const-string v6, "choose tumblr app"

    invoke-static {v3, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 140
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    iget-object v6, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0, v7}, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->sendReport(Z)V

    move v6, v7

    .line 143
    goto :goto_0

    .line 113
    .end local v5           #resInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const-string v8, "text/*"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 118
    .restart local v5       #resInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 119
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 120
    const-string v10, "com.tumblr"

    .line 119
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 120
    if-nez v9, :cond_5

    .line 121
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 122
    const-string v10, "com.tumblr"

    .line 121
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 122
    if-eqz v9, :cond_2

    .line 123
    :cond_5
    const-string v8, "android.intent.extra.SUBJECT"

    iget-object v9, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-direct {p0}, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->getImagePath()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, path:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 126
    const-string v8, "android.intent.extra.STREAM"

    .line 127
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 126
    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    :goto_3
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const/4 v1, 0x1

    .line 133
    goto :goto_2

    .line 129
    :cond_6
    const-string v8, "android.intent.extra.TEXT"

    iget-object v9, p0, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->mShareContent:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 145
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #path:Ljava/lang/String;
    :cond_7
    sget-object v7, Lcom/umeng/socialize/tumblr/controller/UMTumblrHandler;->TAG:Ljava/lang/String;

    const-string v8, "don\'t scan package name..."

    invoke-static {v7, v8}, Lcom/umeng/socialize/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
