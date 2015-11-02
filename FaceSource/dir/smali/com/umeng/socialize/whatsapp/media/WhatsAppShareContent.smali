.class public Lcom/umeng/socialize/whatsapp/media/WhatsAppShareContent;
.super Lcom/umeng/socialize/media/SimpleShareContent;
.source "WhatsAppShareContent.java"


# instance fields
.field private mTitle:Ljava/lang/String;


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
    .line 17
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WHATSAPP:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/umeng/socialize/whatsapp/media/WhatsAppShareContent;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/umeng/socialize/whatsapp/media/WhatsAppShareContent;->mTitle:Ljava/lang/String;

    .line 27
    return-void
.end method
