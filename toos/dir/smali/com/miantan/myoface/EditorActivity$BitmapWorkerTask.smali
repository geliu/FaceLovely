.class Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miantan/myoface/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private data:I

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miantan/myoface/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/miantan/myoface/EditorActivity;Landroid/widget/ImageView;)V
    .locals 1
    .parameter
    .parameter "imageView"

    .prologue
    .line 3358
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;->this$0:Lcom/miantan/myoface/EditorActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3356
    const/4 v0, 0x0

    iput v0, p0, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;->data:I

    .line 3360
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 3361
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    .line 3366
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;->data:I

    .line 3368
    const/4 v0, 0x0

    .line 3369
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3370
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 3371
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 3372
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 3373
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;->this$0:Lcom/miantan/myoface/EditorActivity;

    invoke-virtual {v3}, Lcom/miantan/myoface/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;->data:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 3374
    .local v1, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3375
    if-nez v0, :cond_0

    .line 3377
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/miantan/myoface/EditorActivity;->access$5(Lcom/miantan/myoface/EditorActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doInBackground bitmap==null|"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;->data:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    :cond_0
    iget v3, p0, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;->data:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miantan/myoface/BitmapCacheLru;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3382
    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 3389
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3390
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3391
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 3393
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3396
    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
