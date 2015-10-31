.class Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;
.super Ljava/lang/Object;
.source "UMFacebookHandler.java"

# interfaces
.implements Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->postPhoto()V
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
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;)Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;
    .locals 1
    .parameter

    .prologue
    .line 734
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    return-object v0
.end method


# virtual methods
.method public onComplete(Lcom/facebook/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    #getter for: Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->access$6(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    #getter for: Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->access$6(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    #getter for: Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->access$6(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5$1;

    invoke-direct {v1, p0, p1}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5$1;-><init>(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;Lcom/facebook/Response;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 749
    :cond_0
    return-void
.end method
