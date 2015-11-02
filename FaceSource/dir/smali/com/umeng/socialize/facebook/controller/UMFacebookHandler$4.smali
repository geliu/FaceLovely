.class Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$4;
.super Ljava/lang/Object;
.source "UMFacebookHandler.java"

# interfaces
.implements Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->uploadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$4;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "imageUrl"

    .prologue
    .line 706
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$4;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    #setter for: Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mUploadedImgUrl:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->access$3(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$4;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    #getter for: Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->access$4(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@@@@@ uploadImage complete"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$4;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    #calls: Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->executePostStatus()V
    invoke-static {v0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->access$5(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)V

    .line 711
    :cond_0
    return-void
.end method
