.class Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$6;
.super Ljava/lang/Object;
.source "UMFacebookHandler.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->executePostStatus()V
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
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$6;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$6;)Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;
    .locals 1
    .parameter

    .prologue
    .line 767
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$6;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    return-object v0
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$6;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    #getter for: Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->access$6(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$6;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    #getter for: Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->access$6(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$6;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    #getter for: Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->access$6(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$6$1;

    invoke-direct {v1, p0, p1}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$6$1;-><init>(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$6;Lcom/facebook/Response;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 784
    :cond_0
    return-void
.end method
