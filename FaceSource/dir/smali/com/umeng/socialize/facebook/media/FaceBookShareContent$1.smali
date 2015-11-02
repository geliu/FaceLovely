.class Lcom/umeng/socialize/facebook/media/FaceBookShareContent$1;
.super Ljava/lang/Object;
.source "FaceBookShareContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/facebook/media/FaceBookShareContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/umeng/socialize/facebook/media/FaceBookShareContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/umeng/socialize/facebook/media/FaceBookShareContent;
    .locals 1
    .parameter "in"

    .prologue
    .line 172
    new-instance v0, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/facebook/media/FaceBookShareContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/facebook/media/FaceBookShareContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/umeng/socialize/facebook/media/FaceBookShareContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/umeng/socialize/facebook/media/FaceBookShareContent;
    .locals 1
    .parameter "size"

    .prologue
    .line 177
    new-array v0, p1, [Lcom/umeng/socialize/facebook/media/FaceBookShareContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/facebook/media/FaceBookShareContent$1;->newArray(I)[Lcom/umeng/socialize/facebook/media/FaceBookShareContent;

    move-result-object v0

    return-object v0
.end method
