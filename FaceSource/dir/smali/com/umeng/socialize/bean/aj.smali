.class enum Lcom/umeng/socialize/bean/aj;
.super Lcom/umeng/socialize/bean/SHARE_MEDIA;
.source "SHARE_MEDIA.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getReqCode()I
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0x2765

    return v0
.end method

.method public isSupportAuthorization()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method