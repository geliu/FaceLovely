.class public Lcom/tencent/open/SocialApi;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private mSoApiIml:Lcom/tencent/open/SocialApiIml;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/tencent/open/SocialApiIml;

    invoke-direct {v0, p1, p2}, Lcom/tencent/open/SocialApiIml;-><init>(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)V

    iput-object v0, p0, Lcom/tencent/open/SocialApi;->mSoApiIml:Lcom/tencent/open/SocialApiIml;

    .line 24
    return-void
.end method


# virtual methods
.method public ask(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/open/SocialApi;->mSoApiIml:Lcom/tencent/open/SocialApiIml;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApiIml;->ask(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 88
    return-void
.end method

.method public brag(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/open/SocialApi;->mSoApiIml:Lcom/tencent/open/SocialApiIml;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApiIml;->brag(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 104
    return-void
.end method

.method public challenge(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/open/SocialApi;->mSoApiIml:Lcom/tencent/open/SocialApiIml;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApiIml;->challenge(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 120
    return-void
.end method

.method public checkVoiceApi(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    const-string v0, "version"

    invoke-static {p1}, Lcom/tencent/sdkutil/Util;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/tencent/open/SocialApi;->mSoApiIml:Lcom/tencent/open/SocialApiIml;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApiIml;->grade(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public gift(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/open/SocialApi;->mSoApiIml:Lcom/tencent/open/SocialApiIml;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApiIml;->gift(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 72
    return-void
.end method

.method public grade(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    const-string v0, "version"

    invoke-static {p1}, Lcom/tencent/sdkutil/Util;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/tencent/open/SocialApi;->mSoApiIml:Lcom/tencent/open/SocialApiIml;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApiIml;->grade(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 137
    return-void
.end method

.method public invite(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/open/SocialApi;->mSoApiIml:Lcom/tencent/open/SocialApiIml;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApiIml;->invite(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 40
    return-void
.end method

.method public story(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/open/SocialApi;->mSoApiIml:Lcom/tencent/open/SocialApiIml;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApiIml;->story(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 56
    return-void
.end method

.method public voice(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    const-string v0, "version"

    invoke-static {p1}, Lcom/tencent/sdkutil/Util;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/tencent/open/SocialApi;->mSoApiIml:Lcom/tencent/open/SocialApiIml;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApiIml;->voice(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 155
    return-void
.end method
