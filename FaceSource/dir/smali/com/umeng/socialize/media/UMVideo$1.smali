.class Lcom/umeng/socialize/media/UMVideo$1;
.super Ljava/lang/Object;
.source "UMVideo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/umeng/socialize/media/UMVideo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/umeng/socialize/media/UMVideo;
    .locals 1
    .parameter

    .prologue
    .line 50
    new-instance v0, Lcom/umeng/socialize/media/UMVideo;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/media/UMVideo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/UMVideo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/umeng/socialize/media/UMVideo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/umeng/socialize/media/UMVideo;
    .locals 1
    .parameter

    .prologue
    .line 55
    new-array v0, p1, [Lcom/umeng/socialize/media/UMVideo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/UMVideo$1;->newArray(I)[Lcom/umeng/socialize/media/UMVideo;

    move-result-object v0

    return-object v0
.end method
