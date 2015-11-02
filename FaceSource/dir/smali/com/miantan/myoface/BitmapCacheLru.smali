.class public Lcom/miantan/myoface/BitmapCacheLru;
.super Ljava/lang/Object;
.source "BitmapCacheLru.java"


# static fields
.field private static final SYNC_LOCK:Ljava/lang/String; = "sync_lock"

.field private static imgCatch:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected static sInstance:Lcom/miantan/myoface/BitmapCacheLru;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/miantan/myoface/BitmapCacheLru;->sInstance:Lcom/miantan/myoface/BitmapCacheLru;

    .line 16
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .parameter "memSize"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/miantan/myoface/BitmapCacheLru$1;

    invoke-direct {v0, p0, p1}, Lcom/miantan/myoface/BitmapCacheLru$1;-><init>(Lcom/miantan/myoface/BitmapCacheLru;I)V

    sput-object v0, Lcom/miantan/myoface/BitmapCacheLru;->imgCatch:Landroid/support/v4/util/LruCache;

    .line 28
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/miantan/myoface/BitmapCacheLru;->imgCatch:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 81
    return-void
.end method

.method public static get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "key"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, bm:Landroid/graphics/Bitmap;
    sget-object v2, Lcom/miantan/myoface/BitmapCacheLru;->sInstance:Lcom/miantan/myoface/BitmapCacheLru;

    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    .line 62
    sget-object v2, Lcom/miantan/myoface/BitmapCacheLru;->imgCatch:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, p0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 64
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v1, v0

    .line 72
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .local v1, bm:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 68
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_1
    sget-object v2, Lcom/miantan/myoface/BitmapCacheLru;->imgCatch:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, p0}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    :cond_2
    move-object v1, v0

    .line 72
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getCurrentSizePercent()I
    .locals 3

    .prologue
    .line 84
    sget-object v1, Lcom/miantan/myoface/BitmapCacheLru;->imgCatch:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miantan/myoface/BitmapCacheLru;->imgCatch:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Landroid/support/v4/util/LruCache;->maxSize()I

    move-result v1

    if-lez v1, :cond_0

    .line 85
    sget-object v1, Lcom/miantan/myoface/BitmapCacheLru;->imgCatch:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Landroid/support/v4/util/LruCache;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    sget-object v2, Lcom/miantan/myoface/BitmapCacheLru;->imgCatch:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2}, Landroid/support/v4/util/LruCache;->maxSize()I

    move-result v2

    div-int v0, v1, v2

    .line 88
    .local v0, percent:I
    :goto_0
    return v0

    .end local v0           #percent:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultLruCacheSize(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 94
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    .line 95
    .local v1, memClass:I
    const-string v2, "com.miantan.myoface"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "memClass size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    div-int/lit8 v2, v1, 0x8

    const/4 v3, 0x6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 99
    .local v0, cacheSize:I
    const-string v2, "com.miantan.myoface"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cache size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    mul-int/lit16 v2, v0, 0x400

    mul-int/lit16 v2, v2, 0x400

    return v2
.end method

.method public static initBitmapCache(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 41
    const-string v2, "sync_lock"

    monitor-enter v2

    .line 42
    :try_start_0
    sget-object v1, Lcom/miantan/myoface/BitmapCacheLru;->sInstance:Lcom/miantan/myoface/BitmapCacheLru;

    if-nez v1, :cond_0

    .line 43
    invoke-static {p0}, Lcom/miantan/myoface/BitmapCacheLru;->getDefaultLruCacheSize(Landroid/content/Context;)I

    move-result v0

    .line 44
    .local v0, cacheSize:I
    new-instance v1, Lcom/miantan/myoface/BitmapCacheLru;

    invoke-direct {v1, v0}, Lcom/miantan/myoface/BitmapCacheLru;-><init>(I)V

    sput-object v1, Lcom/miantan/myoface/BitmapCacheLru;->sInstance:Lcom/miantan/myoface/BitmapCacheLru;

    .line 41
    .end local v0           #cacheSize:I
    :cond_0
    monitor-exit v2

    .line 47
    return-void

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isCached(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 76
    if-eqz p0, :cond_0

    sget-object v0, Lcom/miantan/myoface/BitmapCacheLru;->imgCatch:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "key"
    .parameter "data"

    .prologue
    .line 50
    sget-object v0, Lcom/miantan/myoface/BitmapCacheLru;->sInstance:Lcom/miantan/myoface/BitmapCacheLru;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/miantan/myoface/BitmapCacheLru;->imgCatch:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getByteCount(Landroid/graphics/Bitmap;)I
    .locals 3
    .parameter "bitmap"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 34
    .local v0, size:I
    if-gtz v0, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v0, v1, v2

    .line 37
    :cond_0
    return v0
.end method
