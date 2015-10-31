.class public Lcom/umeng/socialize/facebook/media/FaceBookShareContent;
.super Lcom/umeng/socialize/media/SimpleShareContent;
.source "FaceBookShareContent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/umeng/socialize/facebook/media/FaceBookShareContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCaption:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mTargetUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent$1;

    invoke-direct {v0}, Lcom/umeng/socialize/facebook/media/FaceBookShareContent$1;-><init>()V

    sput-object v0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 179
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Landroid/os/Parcel;)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTitle:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTargetUrl:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mCaption:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mDescription:Ljava/lang/String;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTitle:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mCaption:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mDescription:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTargetUrl:Ljava/lang/String;

    .line 73
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMImage;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Lcom/umeng/socialize/media/UMImage;)V

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTitle:Ljava/lang/String;

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTargetUrl:Ljava/lang/String;

    .line 36
    const-string v1, ""

    iput-object v1, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mCaption:Ljava/lang/String;

    .line 40
    const-string v1, ""

    iput-object v1, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mDescription:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v1, v1, Lcom/umeng/socialize/media/UMImage;

    if-eqz v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    .line 60
    .local v0, shareImage:Lcom/umeng/socialize/media/UMImage;
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTitle:Ljava/lang/String;

    .line 61
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->getTargetUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTargetUrl:Ljava/lang/String;

    .line 63
    .end local v0           #shareImage:Lcom/umeng/socialize/media/UMImage;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Ljava/lang/String;)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTitle:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTargetUrl:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mCaption:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mDescription:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTargetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0
    .parameter "caption"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mCaption:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mDescription:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "targetUrl"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTargetUrl:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTitle:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FaceBookShareContent [mTitle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTargetUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTargetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    const-string v1, ", mCaption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/media/SimpleShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    iget-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mCaption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;->mTargetUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return-void
.end method
