.class public Lcom/umeng/socialize/instagram/media/InstagramShareContent;
.super Lcom/umeng/socialize/media/SimpleShareContent;
.source "InstagramShareContent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/umeng/socialize/instagram/media/InstagramShareContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/umeng/socialize/instagram/media/InstagramShareContent$1;

    invoke-direct {v0}, Lcom/umeng/socialize/instagram/media/InstagramShareContent$1;-><init>()V

    sput-object v0, Lcom/umeng/socialize/instagram/media/InstagramShareContent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Landroid/os/Parcel;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMImage;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Lcom/umeng/socialize/media/UMImage;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getTargetPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->INSTAGRAM:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method
