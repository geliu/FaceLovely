.class Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5$1;
.super Ljava/lang/Object;
.source "UMFacebookHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;->onComplete(Lcom/facebook/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;

.field private final synthetic val$response:Lcom/facebook/Response;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;Lcom/facebook/Response;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5$1;->this$1:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;

    iput-object p2, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5$1;->val$response:Lcom/facebook/Response;

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5$1;->this$1:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;

    #getter for: Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;
    invoke-static {v0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;->access$0(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;)Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    move-result-object v0

    #getter for: Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->access$4(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@@@@ postPhoto complete"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5$1;->this$1:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;

    #getter for: Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;
    invoke-static {v0}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;->access$0(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5;)Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$5$1;->val$response:Lcom/facebook/Response;

    #calls: Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->handleResponse(Lcom/facebook/Response;)V
    invoke-static {v0, v1}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->access$7(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;Lcom/facebook/Response;)V

    .line 745
    return-void
.end method
