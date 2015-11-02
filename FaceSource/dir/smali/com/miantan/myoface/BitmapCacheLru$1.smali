.class Lcom/miantan/myoface/BitmapCacheLru$1;
.super Landroid/support/v4/util/LruCache;
.source "BitmapCacheLru.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/BitmapCacheLru;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/BitmapCacheLru;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/BitmapCacheLru;I)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/BitmapCacheLru$1;->this$0:Lcom/miantan/myoface/BitmapCacheLru;

    .line 19
    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/miantan/myoface/BitmapCacheLru$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/miantan/myoface/BitmapCacheLru$1;->this$0:Lcom/miantan/myoface/BitmapCacheLru;

    invoke-virtual {v0, p2}, Lcom/miantan/myoface/BitmapCacheLru;->getByteCount(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 25
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method
