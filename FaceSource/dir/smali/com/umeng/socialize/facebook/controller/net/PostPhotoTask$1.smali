.class Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$1;
.super Ljava/lang/Object;
.source "PostPhotoTask.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->onPostExecute([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$1;->this$0:Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$1;->this$0:Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;

    #getter for: Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->mPostListener:Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;
    invoke-static {v0}, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->access$2(Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;)Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$1;->this$0:Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;

    #getter for: Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->mPostListener:Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;
    invoke-static {v0}, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->access$2(Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;)Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;->onComplete(Lcom/facebook/Response;)V

    .line 80
    :cond_0
    return-void
.end method
