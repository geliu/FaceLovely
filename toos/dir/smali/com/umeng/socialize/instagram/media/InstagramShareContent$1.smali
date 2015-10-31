.class Lcom/umeng/socialize/instagram/media/InstagramShareContent$1;
.super Ljava/lang/Object;
.source "InstagramShareContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/instagram/media/InstagramShareContent;
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
        "Lcom/umeng/socialize/instagram/media/InstagramShareContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/umeng/socialize/instagram/media/InstagramShareContent;
    .locals 1
    .parameter "in"

    .prologue
    .line 34
    new-instance v0, Lcom/umeng/socialize/instagram/media/InstagramShareContent;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/instagram/media/InstagramShareContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/instagram/media/InstagramShareContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/umeng/socialize/instagram/media/InstagramShareContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/umeng/socialize/instagram/media/InstagramShareContent;
    .locals 1
    .parameter "size"

    .prologue
    .line 39
    new-array v0, p1, [Lcom/umeng/socialize/instagram/media/InstagramShareContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/instagram/media/InstagramShareContent$1;->newArray(I)[Lcom/umeng/socialize/instagram/media/InstagramShareContent;

    move-result-object v0

    return-object v0
.end method
