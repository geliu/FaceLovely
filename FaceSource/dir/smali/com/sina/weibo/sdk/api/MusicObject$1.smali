.class Lcom/sina/weibo/sdk/api/MusicObject$1;
.super Ljava/lang/Object;
.source "MusicObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/api/MusicObject;
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
        "Lcom/sina/weibo/sdk/api/MusicObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/MusicObject;
    .locals 1
    .parameter "in"

    .prologue
    .line 55
    new-instance v0, Lcom/sina/weibo/sdk/api/MusicObject;

    invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/MusicObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/MusicObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/MusicObject;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sina/weibo/sdk/api/MusicObject;
    .locals 1
    .parameter "size"

    .prologue
    .line 59
    new-array v0, p1, [Lcom/sina/weibo/sdk/api/MusicObject;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/MusicObject$1;->newArray(I)[Lcom/sina/weibo/sdk/api/MusicObject;

    move-result-object v0

    return-object v0
.end method