.class Lcom/tencent/sdkutil/Util$TBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "ProGuard"


# instance fields
.field private mLength:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/sdkutil/Util$TBufferedOutputStream;->mLength:I

    .line 206
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/tencent/sdkutil/Util$TBufferedOutputStream;->mLength:I

    return v0
.end method

.method public write([B)V
    .locals 2
    .parameter

    .prologue
    .line 210
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 211
    iget v0, p0, Lcom/tencent/sdkutil/Util$TBufferedOutputStream;->mLength:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/sdkutil/Util$TBufferedOutputStream;->mLength:I

    .line 212
    return-void
.end method
