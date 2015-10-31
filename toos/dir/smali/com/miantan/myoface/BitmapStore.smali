.class public Lcom/miantan/myoface/BitmapStore;
.super Ljava/lang/Object;
.source "BitmapStore.java"


# static fields
.field private static bmp:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/miantan/myoface/BitmapStore;->bmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static delBitmap()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/miantan/myoface/BitmapStore;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miantan/myoface/BitmapStore;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    sget-object v0, Lcom/miantan/myoface/BitmapStore;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 21
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/miantan/myoface/BitmapStore;->bmp:Landroid/graphics/Bitmap;

    .line 22
    return-void
.end method

.method static getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/miantan/myoface/BitmapStore;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 10
    sput-object p0, Lcom/miantan/myoface/BitmapStore;->bmp:Landroid/graphics/Bitmap;

    .line 11
    return-void
.end method
