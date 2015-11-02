.class public Lcom/umeng/socialize/kakao/media/KakaoShareContent;
.super Lcom/umeng/socialize/media/SimpleShareContent;
.source "KakaoShareContent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>()V

    return-void
.end method


# virtual methods
.method public getTargetPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->KAKAO:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method
