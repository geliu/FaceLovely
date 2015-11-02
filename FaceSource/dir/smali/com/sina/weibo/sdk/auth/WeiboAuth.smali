.class public Lcom/sina/weibo/sdk/auth/WeiboAuth;
.super Ljava/lang/Object;
.source "WeiboAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
    }
.end annotation


# static fields
.field private static final OAUTH2_BASE_URL:Ljava/lang/String; = "https://open.weibo.cn/oauth2/authorize?"

.field public static final OBTAIN_AUTH_CODE:I = 0x0

.field public static final OBTAIN_AUTH_TOKEN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Weibo_web_login"


# instance fields
.field private mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;)V
    .locals 0
    .parameter "context"
    .parameter "authInfo"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appKey"
    .parameter "redirectUrl"
    .parameter "scope"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;

    .line 127
    new-instance v0, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    .line 128
    return-void
.end method

.method private startDialog(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;I)V
    .locals 6
    .parameter "listener"
    .parameter "type"

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 192
    :cond_0
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 193
    .local v1, requestParams:Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v3, "client_id"

    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    #getter for: Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->mAppKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->access$0(Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v3, "redirect_uri"

    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    #getter for: Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->mRedirectUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->access$1(Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v3, "scope"

    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    #getter for: Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->mScope:Ljava/lang/String;
    invoke-static {v4}, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->access$2(Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v3, "response_type"

    const-string v4, "code"

    invoke-virtual {v1, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v3, "display"

    const-string v4, "mobile"

    invoke-virtual {v1, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v3, 0x1

    if-ne v3, p2, :cond_1

    .line 201
    const-string v3, "packagename"

    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    #getter for: Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->access$3(Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v3, "key_hash"

    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    #getter for: Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->mKeyHash:Ljava/lang/String;
    invoke-static {v4}, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->access$4(Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://open.weibo.cn/oauth2/authorize?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->encodeUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->hasInternetPermission(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 207
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;

    const-string v4, "Error"

    const-string v5, "Application requires permission to access the Internet"

    invoke-static {v3, v4, v5}, Lcom/sina/weibo/sdk/utils/UIUtils;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 210
    new-instance v3, Lcom/sina/weibo/sdk/auth/WeiboDialog;

    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2, p1, p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;Lcom/sina/weibo/sdk/auth/WeiboAuth;)V

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->show()V

    goto/16 :goto_0

    .line 212
    :cond_3
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, networkNotAvailable:Ljava/lang/String;
    const-string v3, "Weibo_web_login"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "String: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/sina/weibo/sdk/utils/UIUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sina/weibo/sdk/auth/WeiboAuth;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;I)V

    .line 166
    return-void
.end method

.method public authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "type"

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/auth/WeiboAuth;->startDialog(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;I)V

    .line 178
    return-void
.end method

.method public getAuthInfo()Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    return-object v0
.end method

.method public setAuthInfo(Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;)V
    .locals 0
    .parameter "authInfo"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    .line 157
    return-void
.end method
